(eval-when-compile (defvar c-syntactic-context))

(defun bde-is-member-function-declaration ()
  "Return whether the line ending resembles the member function declaration."
  (re-search-forward
   (concat ") *\\(const\\)?"
           " *\\(noexcept\\|BSLS_CPP11_NOEXCEPT\\)?"
           " *\\(\\(= *\\(0\\|de\\(fault\\|lete\\)\\)\\)"
           "\\|BSLS_CPP11_DE\\(FAULT\\|LETED\\)"
           "\\|override\\|BSLS_CPP11_OVERRIDE\\)?"
           " *\\(&\\(&\\)?\\)?"
           " *; *$")
           (point-at-eol) t))

(defun bde-comment-offset (element)
  "Custom line-up function for BDE comments.
Return a symbol for the correct indentation level at the
current cursor position, if the cursor is within a class definition:
1. + for method comments:
        int foo() const = 0;
            // tab goes here
        int bar() { return 0; }
            // tab goes here
2. column number of beginning of comment for data member comments:
        int d_data;     // my comment at whatever column I want
                        // tab goes here
        int d_someLongVariableName;
                        // my comment at whatever column I want
                        // tab goes here
3. nil otherwise."
  (case (caar c-syntactic-context)
    ((inclass innamespace)
     (save-excursion
       (let ((class-offset         ; extra offset for inner structs
              (c-langelem-col (car c-syntactic-context) t))
             (comment-column nil)) ; column number of last //
         (loop
          (beginning-of-line)
          (cond ((= (point) (point-min))
                 (return nil))
                ((re-search-forward "^ *//" (point-at-eol) t)
                 ;; looking at a comment line
                 (setq comment-column (- (current-column) 2))
                 (forward-line -1))
                ((bde-is-member-function-declaration)
                 ;; looking at end of method declaration
                 (return '+))
                ((re-search-forward "} *$" (point-at-eol) t)
                 ;; looking at end of inline method definition
                 (return '+))
                ((re-search-forward "; *//" (point-at-eol) t)
                 ;; looking at beginning of data member comment block
                 (return (- (current-column) 2 class-offset c-basic-offset)))
                ((and comment-column
                      (re-search-forward "[_A-Za-z0-9]+; *$"
                                         (point-at-eol) t))
                 ;; looking at end of (long?) data member declaration
                 (return (- comment-column class-offset c-basic-offset)))
                (t
                 (return nil)))))))
    (t nil)))

(defun bde-statement-block-intro-offset (element)
  "Custom line-up function for first line of a statement block.
The default identation is is '+' (1 basic offset), unless we are in
a switch statement, in which case the indentation is set to
'*' (half basic offset). Example:
switch(val) {
  case 100: {
      return 1;
  } break;
  default: {
      return 0;
  } break;
}"
  (save-excursion
    (goto-char (c-langelem-pos element))
    (if (looking-at "\\(case\\|default\\)")
        '*
      '+)))

;; See http://cc-mode.sourceforge.net/html-manual/Syntactic-Symbols.html#Syntactic-Symbols
(c-add-style
 "bde"
 '((c-basic-offset . 4)
   (c-comment-only-line-offset . 0)
   (fill-column . 79)
   (c-backslash-column . 78)
   (c-backslash-max-column . 78)
   (c-offsets-alist
    (comment-intro         . bde-comment-offset)
    (defun-open            . 0)
    (defun-close           . 0)
    (statement-block-intro . bde-statement-block-intro-offset)
    (substatement-open     . 0)
    (substatement-label    . 0)
    (label                 . 0)
    (access-label          . /)
    (case-label            . *)
    (statement-case-intro  . *)
    (statement-case-open   . 0)
    (statement-cont        . +)
    (inline-open           . 0)
    (inline-close          . 0)
    (innamespace           . 0)
    (member-init-intro     . 0)
    (extern-lang-open      . 0)
    (brace-list-entry      . /)
    (extern-lang-close     . 0))))
