(when (version< emacs-version "24")
  (unless (yes-or-no-p "This Emacs is old, config probably won't work. Kill? ")
    (kill-emacs)))
;; ^^ Don't bother loading if your emacs is too old

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

;; Tangle code and load from my config.org file
(setq krista/bootstrap-org-file "config.org")
(setq krista/bootstrap-org-path
      (expand-file-name
       (concat user-emacs-directory krista/bootstrap-org-file)))

;; Tangle all of my source blocks together, and then load the result
(org-babel-load-file krista/bootstrap-org-path)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight extra-bold))))
 '(bold-italic ((t (:slant oblique :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#58615a" :family "Fira Code"))))

  '(helm-ff-directory ((t (:background "#eeeeec" :foreground "#42071d"))))
  '(helm-selection ((t (:background "#75dbb7" :distant-foreground "#000d0f" :foreground "#804532"))))
 '(helm-source-header ((t (:background "turquoise4" :foreground "#f0ffff" :weight semi-bold :height 1.3 :family "Fira Code"))))
 '(helm-swoop-target-word-face ((t (:background "#7700ff" :foreground "white"))))

 '(org-code ((t (:inherit shadow :foreground "dark sea green" :family "Courier"))))
 '(org-verbatim ((t (:inherit shadow :stipple nil :foreground "AntiqueWhite4" :family "Andale Mono"))))



 '(region ((t (:background "#032929"))))
 '(vertical-border ((t (:foreground "#00d4d4"))))
 )
