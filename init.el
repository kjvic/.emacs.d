;; Don't bother loading if your emacs is old af
(when (version< emacs-version "24")
  (unless (yes-or-no-p "This Emacs is old, config probably won't work. Kill? ")
    (kill-emacs)))

;; PACKAGES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives
        '(("gnu" . "https://elpa.gnu.org/packages/")
          ("melpa" . "https://melpa.org/packages/")
          ("org" . "http://orgmode.org/elpa/")))
  (package-initialize)
  ;; Add org to package path
  (unless (package-installed-p 'org)
    (package-refresh-contents)
    (package-install 'org)))

;; Tangle code and load from an initial file
(setq krista/bootstrap-org-file "config.org")
(setq krista/bootstrap-org-path
      (expand-file-name
       (concat user-emacs-directory krista/bootstrap-org-file)))
;; Tangles da magic together and then loads it as if it's a normal file
(org-babel-load-file krista/bootstrap-org-path)
