;; From https://xvrdm.github.io/2017/05/29/a-minimal-emacs-setup-with-orgmode/
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-refresh-contents)
(package-initialize)

;; Given the choice between a file and various suffixed versions,
;; prefer to load the most recent version.
;; (Note: This is important to set early on in init.el; otherwise, we might
;; read stale config files later on!)
(setq load-prefer-newer t)

;; If not yet installed, install the package `use-package`
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
;; These variables are read by use-package at load-time
(setq use-package-enable-imenu-support t)
(setq use-package-verbose t)
(setq use-package-minimum-reported-time 0.01)
(setq use-package-compute-statistics t)
;; Now that we know it's installed, actually load it!
(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Configure packages with use-package integrations
(use-package diminish
  ;; `diminish` replaces the modeline text with something shorter
  :ensure t
  :demand t)
(use-package delight
  ;; `delight` shushes the modeline text for a given major/minor mode
  ;; See https://elpa.gnu.org/packages/delight.html
  :ensure t
  :demand t
  :config
  ;; Shush emacs builtins right off the bat
  (delight 'eldoc-mode nil t)
  )
(use-package bind-key
  :ensure t
  :demand t)

;; Ensure that we have org mode
(unless (package-installed-p 'org)
  (package-install 'org))
(require 'org)

;; Set bootstrapping file for literate config with org mode
(defvar krista/emacs-config (expand-file-name (concat user-emacs-directory
						      "emacs-config.org")))

(org-babel-load-file krista/emacs-config)
