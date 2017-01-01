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

;; Tangle code and load from my config.org file
(setq krista/bootstrap-org-file "config.org")
(setq krista/bootstrap-org-path
      (expand-file-name
       (concat user-emacs-directory krista/bootstrap-org-file)))
;; Tangles da magic together and then loads it as if it's a normal file
(org-babel-load-file krista/bootstrap-org-path)


;; NOPENOPENOPENOPENOPENOPENOPE
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#081724" "#ff694d" "#68f6cb" "#fffe4e" "#bad6e2" "#afc0fd" "#d2f1ff" "#d3f9ee"])
 '(custom-enabled-themes (quote (tron-dark)))
 '(custom-safe-themes
   (quote
    ("5008a5c8985fda9803ff9d02bc2a56b45407ccc251ff85a817e9dfe7f345ffe5" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(fci-rule-color "#515151")
 '(gud-gdb-command-name "gdb --annotate=1")
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold nil)
 '(mac-command-modifier (quote meta))
 '(mac-control-modifier (quote control))
 '(mac-function-modifier (quote super))
 '(org-bullets-bullet-list (quote ("⊕" "⊗" "⦷" "⊜")))
 '(package-selected-packages
   (quote
    (cheatsheet highlight-indent-guides tronesque-theme yasnippet fireplace multiple-cursors use-package undo-tree smartparens slime reveal-in-osx-finder pylint org-bullets magit helm-swoop color-theme-sanityinc-tomorrow auctex ac-emoji)))
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
 '(vc-annotate-very-old-color nil))
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
 '(fringe ((t (:background "#001519"))))
 '(vertical-border ((t (:foreground "#00d4d4")))))
