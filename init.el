;; -*-no-byte-compile: t; -*-
(when (version< emacs-version "24")
  (unless (yes-or-no-p "This Emacs is old, config probably won't work. Kill? ")
    (kill-emacs)))
;; ^^ Don't bother loading if your emacs is too old

;; Always load newest byte code
(setq load-prefer-newer t)

;; Increase the garbage collection threshold to 500 MB to ease startup
(setq gc-cons-threshold (* 500 1024 1024))

;; Packages
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
(require 'org)

;; Source: https://stackoverflow.com/a/8902202
(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;; Tangle code and load from my config.org file
(setq krista/bootstrap-org-file "config.org")
(setq krista/bootstrap-org-path
      (expand-file-name
       (concat user-emacs-directory krista/bootstrap-org-file)))


;; Tangle all of my source blocks together, and then load the result
(org-babel-load-file krista/bootstrap-org-path)

;; Decrease garbage collection threshold to 5 MB
;; (add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 5 1024 1024))))
