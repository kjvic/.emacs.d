;; -*-no-byte-compile: t; -*-
;;(when (version< emacs-version "24")
;;  (unless (yes-or-no-p "This Emacs is old, config probably won't work. Kill? ")
;;    (kill-emacs)))
;; ^^ Don't bother loading if your emacs is too old

;; Always load newest byte code
;;(setq load-prefer-newer t)
;; Increase the garbage collection threshold to 50 MB to ease startup
;;(setq gc-cons-threshold (* 50 1024 1024))

;; https://jeffkreeftmeijer.com/emacs-straight-use-package/
;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package
(straight-use-package 'use-package)

;; Configure use-package to use straight.el by default
(use-package straight
             :custom (straight-use-package-by-default t))

(use-package org)

;; Source: https://stackoverflow.com/a/8902202
;;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;; Tangle code and load from my config.org file
(setq kris/bootstrap-org-file "config.org")
(setq kris/bootstrap-org-path
      (expand-file-name
       (concat user-emacs-directory kris/bootstrap-org-file)))
;; Tangle all of my source blocks together, and then load the result
(org-babel-load-file kris/bootstrap-org-path)

;; Decrease garbage collection threshold to 5 MB
;; (add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 5 1024 1024))))
