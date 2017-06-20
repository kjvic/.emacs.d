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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 '(custom-safe-themes
   (quote
    ("5fb8a3d4493189890e01c24fca16f54388a6cf2bcb77baff94050ca2df722428" "a6771b6aa32f12d6cd78367608310310d591a21bd9f784e274ec30e27b3f22f3" "2f3eae65a9f557b72d3efbaa73823bb45b00417807fc29c3f980491b82dcc048" "4cbeaf4592c7fcf9ef17f12fa89a8d4c4433c38d1c0b603afdb7124d326d021e" "5008a5c8985fda9803ff9d02bc2a56b45407ccc251ff85a817e9dfe7f345ffe5" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))


 
 '(org-bullets-bullet-list (quote ("⊕" "⦷" "⊜" "⊝")))
 
 '(package-selected-packages
   (quote
    (benchmark-init exec-path-from-shell free-keys steam undo-tree smartparens pylint org-bullets magit helm-swoop auctex)))
 
 '(projectile-mode t nil (projectile))
 '(projectile-switch-project-action (quote helm-projectile-find-file))

 '(suggest-key-bindings t)

 '(list-colors-sort (quote luminance))
 '(fci-rule-color "#515151")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil)
 '(visual-line-fringe-indicators (quote (left-curly-arrow right-curly-arrow)))
 )
;; (custom-set-faces
;; ;;  ;; custom-set-faces was added by Custom.
;; ;;  ;; If you edit it by hand, you could mess it up, so be careful.
;; ;;  ;; Your init file should contain only one such instance.
;; ;;  ;; If there is more than one, they won't work right.

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(fringe ((t (:background "#2d2d2d" :foreground "#2d2d2d"))))
;;  '(vertical-border ((t (:foreground "rosy brown"))))
;;  )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight extra-bold))))
 '(bold-italic ((t (:slant oblique :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#58615a" :family "Fira Code"))))
 '(fringe ((t (:background "#001519"))))
 '(helm-ff-directory ((t (:background "#eeeeec" :foreground "#42071d"))))
 '(helm-selection ((t (:background "#75dbb7" :distant-foreground "#000d0f" :foreground "#804532"))))
 '(helm-source-header ((t (:background "turquoise4" :foreground "#f0ffff" :weight semi-bold :height 1.3 :family "Fira Code"))))
 '(helm-swoop-target-word-face ((t (:background "#7700ff" :foreground "white"))))
 '(mode-line ((t (:background "#000d0f" :foreground "cyan" :inverse-video nil :box (:line-width 1 :color "dark slate grey") :family "Fira Code"))))
 '(mode-line-buffer-id ((t (:weight normal :family "Fira Code"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-inactive ((t (:background "#000d0f" :foreground "#888a85" :inverse-video nil))))
 '(org-code ((t (:inherit shadow :foreground "dark sea green" :family "Courier"))))
 '(org-verbatim ((t (:inherit shadow :stipple nil :foreground "AntiqueWhite4" :family "Andale Mono"))))
 '(popup-face ((t (:background "#19343D" :foreground "#a0ffff" :weight light :family "Fira code"))))
 '(popup-menu-face ((t (:inherit popup-face :family "Fira code"))))
 '(popup-menu-selection-face ((t (:inherit default :background "#033021" :foreground "#3fffff" :weight light :family "Fira Code"))))
 '(popup-scroll-bar-foreground-face ((t (:background "#19343D"))))
 '(popup-summary-face ((t (:inherit popup-face :foreground "slate blue"))))
 '(popup-tip-face ((t (:background "dark slate gray" :foreground "aquamarine" :family "Fira Code"))))
 '(region ((t (:background "#032929"))))
 '(vertical-border ((t (:foreground "#00d4d4")))))
