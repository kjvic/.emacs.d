(message "[krista] Define helper macros")
(setq-default krista/org-config-directory "literate")
(setq-default krista/org-config-dirpath
              (expand-file-name (concat user-emacs-directory
                                        krista/org-config-directory)))
(add-to-list 'load-path krista/org-config-dirpath)
(setq-default krista/config-org-files nil)

;; This macro registers a new config file with the given `filename` (minus .org extension)
;; - The expectation is that `filename` lives under .emacs.d/literate
;; - This macro will also declare a new variable (derived from `name`), which can
;;   be used to reference the config file programmatically.
;;
;; EXAMPLE USAGE:
;;
;;     (krista/new-config-file mac-os "macOS")
;;
;; is roughly equivalent to
;;
;;       krista/mac-os-config-file = ".emacs.d/literate/macOS.org"
;;       krista/config-org-files['mac-os'] = ".emacs.d/literate/macOS.org"
;;
(defmacro krista/new-config-file (name filename)
  (let ((full-file (make-symbol "full-filename")))
    `(let ((,full-file
            (concat (file-name-as-directory krista/org-config-dirpath)  ,filename ".org")))
       (defvar ,(intern (concat "krista/" (symbol-name name) "-config-file"))
         ,full-file)
       (add-to-list
        (quote krista/config-org-files) (quote (,name . ,filename)) t))))

(defun krista/speedy-open-config ()
  "Quickly open my config file"
  (interactive)
  (find-file (or krista/emacs-config user-init-file "")))
(bind-key "C-c e" #'krista/speedy-open-config)

(defun krista/speedy-eval-config ()
  "Quickly evaluate my config file"
  (interactive)
  ;; Ensure that our package cache isn't stale
  (package-refresh-contents)

  (load-file user-init-file)

  ;; Restart org mode
  (org-mode-restart)
  ;; Update modeline
  (force-mode-line-update t))
(bind-key "C-c C-h" #'krista/speedy-eval-config)

(defun eval-region-or-buffer ()
  "Let me eval either a region or a buffer at a time"
  (interactive)
  (let ((debug-on-error t))
    (cond
     (mark-active
      (call-interactively 'eval-region)
      (message "Region evaluated!")
      (setq deactivate-mark t))
     (t
      (eval-buffer)
      (message "Buffer evaluated!")))))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (bind-key "C-c C-b" #'eval-region-or-buffer)))

;; Save the pesky Custom options elsewhere! (i.e. in user-emacs-directory/custom.el)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; Uncomment this ONLY if you want to see the pesky Custom options. They *are* saved, although they're not loaded
(load custom-file :noerror)

(defun switch-to-messages-buffer ()
  "Open up the *Messages* buffer in a new frame"
  (interactive)
  (switch-to-buffer-other-window "*Messages*"))
(bind-key "C-c m" #'switch-to-messages-buffer)

;; Start & end recording new keyboard macro
(bind-key "M-[" #'kmacro-start-macro)
(bind-key "M-]" #'kmacro-end-macro)
;; Call the last keyboard macro that was recorded
(bind-key "C-l" #'call-last-kbd-macro)

(krista/new-config-file better-defaults "better-defaults")
 (org-babel-load-file krista/better-defaults-config-file)

 (krista/new-config-file global-settings "global-settings")
 (org-babel-load-file krista/global-settings-config-file)

 (message "[krista] OS-specific config")
 (krista/new-config-file macOS "macOS")
 (krista/new-config-file windows "windows")
 (cond ((eq system-type 'darwin)
	(org-babel-load-file krista/macOS-config-file))
       ((member system-type '(ms-dos windows-nt cygwin))
	(org-babel-load-file krista/windows-config-file)))

(message "[krista] counsel/ivy/swiper")
(krista/new-config-file ivy "ivy-config")
(org-babel-load-file krista/ivy-config-file)

(message "[krista] misc-packages")
(krista/new-config-file misc-packages "misc-packages")
(org-babel-load-file krista/misc-packages-config-file)
