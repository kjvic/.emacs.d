
;;; doom-themes-common.el -*- lexical-binding: t; -*-
(defconst doom-themes-common-faces
  '(;; --- custom faces -----------------------
    (doom-modeline-error
     :background (doom-darken red 0.25)
     :foreground base0
     :distant-foreground base0)

    ;; --- base faces -------------------------
    (bold        :weight (if bold 'bold 'normal) :foreground (unless bold base8))
    (italic      :slant  (if italic 'italic 'normal))
    (bold-italic :inherit '(bold italic))

    (default :background bg :foreground fg)
    (fringe :inherit 'default :foreground base5)
    (region               :background region     :foreground nil
			  :distant-foreground (doom-darken fg 0.2)
			  ;;:box `(:line-width 3 :color ,orange)
			  )
    (highlight            :background highlight  :foreground base0 :distant-foreground base8)
    (cursor               :background highlight)
    (shadow               :foreground base5)
    (minibuffer-prompt    :foreground highlight)
    (tooltip              :background base2 :foreground violet
			  :box `(:line-width 2 :color ,base2))
    (secondary-selection  :background grey)
    (lazy-highlight       :background dark-blue  :foreground base8 :distant-foreground base0 :bold bold)
    (match                :foreground blue-gunmetal      :background base0 :bold bold)
    (trailing-whitespace  :background red)
    (vertical-border      :background vertical-bar :foreground vertical-bar)
    (link                 :foreground (doom-darken periwinkle 0.3) :underline t :bold nil)
    ;; Emacs 26.1 line numbers
    (line-number :inherit 'default :foreground base5 :distant-foreground base5 :bold nil)
    (line-number-current-line :inherit 'hl-line :foreground fg :distant-foreground fg :bold nil)

    (error   :foreground error)
    (warning :foreground warning)
    (success :foreground success)

    (font-lock-builtin-face              :foreground builtin)
    (font-lock-comment-face              :foreground comments)
    (font-lock-comment-delimiter-face    :inherit 'font-lock-comment-face)
    (font-lock-doc-face                  :inherit 'font-lock-comment-face :foreground doc-comments)
    (font-lock-constant-face             :foreground constants)
    (font-lock-function-name-face        :foreground functions)
    (font-lock-keyword-face              :foreground keywords :weight 'medium)
    (font-lock-string-face               :foreground strings)
    (font-lock-type-face                 :foreground type)
    (font-lock-variable-name-face        :foreground variables)
    (font-lock-warning-face              :inherit 'warning)
    (font-lock-negation-char-face        :inherit 'bold :foreground operators)
    (font-lock-preprocessor-face         :foreground operators)
    (font-lock-preprocessor-char-face    :foreground operators)
    (font-lock-regexp-grouping-backslash :inherit 'bold :foreground operators)
    (font-lock-regexp-grouping-construct :inherit 'bold :foreground operators)

    ;; mode-line / header-line
    (mode-line           :background modeline-bg
                         :foreground modeline-fg
                         ;;:box (:line-width modeline-height :color modeline-bg)
			 )

    (mode-line-inactive  :background bg-alt :foreground fg-alt :distant-foreground bg-alt)
    (mode-line-emphasis  :foreground highlight :distant-foreground bg)
    (mode-line-highlight :inherit 'highlight :distant-foreground bg)
    (mode-line-buffer-id :foreground fg :bold bold :distant-foreground bg)
    (header-line :inherit :foreground bg :bold bold :background fg)


    ;; --- built-in plugin faces --------------
    ;; dired
    (dired-directory :foreground builtin)
    (dired-ignored   :foreground comments)

    ;; ediff
    (ediff-fine-diff-A    :background base3 :inherit 'bold)
    (ediff-fine-diff-B    :background base3 :inherit 'bold)
    (ediff-fine-diff-C    :background base3 :inherit 'bold)
    (ediff-current-diff-A :background base0)
    (ediff-current-diff-B :background base0)
    (ediff-current-diff-C :background base0)
    (ediff-even-diff-A    :inherit 'hl-line)
    (ediff-even-diff-B    :inherit 'hl-line)
    (ediff-even-diff-C    :inherit 'hl-line)
    (ediff-odd-diff-A     :inherit 'hl-line)
    (ediff-odd-diff-B     :inherit 'hl-line)
    (ediff-odd-diff-C     :inherit 'hl-line)

    ;; elfeed
    (elfeed-log-debug-level-face :foreground comments)
    (elfeed-log-error-level-face :inherit 'error)
    (elfeed-log-info-level-face  :inherit 'success)
    (elfeed-log-warn-level-face  :inherit 'warning)
    (elfeed-search-date-face     :foreground violet)
    (elfeed-search-feed-face     :foreground blue)
    (elfeed-search-tag-face      :foreground comments)
    (elfeed-search-title-face    :foreground comments)
    (elfeed-search-filter-face   :foreground violet)
    (elfeed-search-unread-count-face :foreground yellow)
    (elfeed-search-unread-title-face :foreground fg :bold bold)

    ;; eshell
    (eshell-prompt        :foreground base7)
    (eshell-ls-archive    :foreground orange)
    (eshell-ls-backup     :foreground yellow)
    (eshell-ls-clutter    :foreground red)
    (eshell-ls-directory  :foreground blue)
    (eshell-ls-executable :foreground blue-gunmetal)
    (eshell-ls-missing    :foreground red)
    (eshell-ls-product    :foreground pink)
    (eshell-ls-readonly   :foreground pink)
    (eshell-ls-special    :foreground violet)
    (eshell-ls-symlink    :foreground cyan)
    (eshell-ls-unreadable :foreground base5)

    ;; flx-ido
    (flx-highlight-face :inherit 'bold :foreground yellow :underline nil)

    ;; hl-line
    (hl-line :background bg-alt)

    ;; ido
    (ido-first-match :foreground pink)
    (ido-indicator   :foreground red :background bg)
    (ido-only-match  :foreground blue-gunmetal)
    (ido-subdir      :foreground violet)
    (ido-virtual     :foreground comments)

    ;; isearch
    (isearch :background highlight :foreground base0 :bold bold)

    ;; linum
    (linum (&inherit line-number))

    ;; term
    (term               :background bg      :foreground fg)
    (term-color-black   :background base0   :foreground base0)
    (term-color-red     :background red     :foreground red)
    (term-color-green   :background blue-gunmetal   :foreground blue-gunmetal)
    (term-color-yellow  :background yellow  :foreground yellow)
    (term-color-blue    :background blue    :foreground blue)
    (term-color-cyan    :background cyan    :foreground cyan)
    (term-color-white   :background base8   :foreground base8)

    ;; window-divider
    (window-divider :inherit 'vertical-border)
    (window-divider-first-pixel :inherit 'window-divider)
    (window-divider-last-pixel  :inherit 'window-divider)


    ;; --- plugin faces -----------------------
    ;; avy
    (avy-lead-face :background highlight :foreground base0 :distant-foreground base8)
    (avy-lead-face-0 :inherit 'avy-lead-face)
    (avy-lead-face-1 :inherit 'avy-lead-face)
    (avy-lead-face-2 :inherit 'avy-lead-face)

    ;; ace-window
    (aw-leading-char-face :foreground orange :height 3.0)
    (aw-background        :foreground base5)

    ;; bookmark+
    (bmkp-*-mark :foreground bg :background yellow)
    (bmkp->-mark :foreground yellow)
    (bmkp-D-mark :foreground bg :background red)
    (bmkp-X-mark :foreground red)
    (bmkp-a-mark :background red)
    (bmkp-t-mark :foreground violet)
    (bmkp-bad-bookmark :inherit 'font-lock-warning-face)
    (bmkp-bookmark-file :inherit 'font-lock-comment-face)
    (bmkp-bookmark-list :background bg-alt)
    (bmkp-buffer :foreground blue)
    (bmkp-desktop :foreground bg :background violet)
    (bmkp-file-handler :background red)
    (bmkp-function :foreground blue-gunmetal)
    (bmkp-gnus :foreground pink)
    ;; Equivalent to org agenda heading
    (bmkp-heading :height 1.2
                  :foreground orange
                  :weight 'bold)
    (bmkp-info :foreground cyan)
    (bmkp-light-autonamed :foreground bg-alt :background cyan)
    (bmkp-light-autonamed-region :foreground bg-alt :background red)
    (bmkp-light-fringe-autonamed :foreground bg-alt :background violet)
    (bmkp-light-fringe-non-autonamed :foreground bg-alt :background blue-gunmetal)
    (bmkp-light-mark :foreground bg :background cyan)
    (bmkp-light-non-autonamed :foreground bg :background violet)
    (bmkp-light-non-autonamed-region :foreground bg :background red)
    (bmkp-local-directory :foreground orange :background bg)
    (bmkp-local-file-with-region :background selection)
    ;; (bmkp-local-file-without-region :inherit default)
    (bmkp-man :foreground violet)
    (bmkp-no-jump :foreground comments)
    (bmkp-no-local :foreground "#804532" :strike-through "#804532")
    (bmkp-non-file :foreground blue-gunmetal)
    (bmkp-remote-file :foreground pink)
    (bmkp-sequence :foreground blue)
    (bmkp-su-or-sudo :foreground red)
    (bmkp-url :foreground blue :underline t)
    (bmkp-variable-list :foreground blue-gunmetal)

    ;; company
    (company-tooltip            :inherit 'tooltip :foreground orange)
    (company-tooltip-common     :inherit 'company-tooltip
				:foreground blue :weight 'bold)
    (company-tooltip-selection  :background orange :foreground fg-alt
    				:weight 'normal)
    (company-tooltip-common-selection  :inherit 'company-tooltip-selection
				       :foreground cyan :weight 'bold)
    (company-tooltip-search     :background highlight :foreground bg
				:distant-foreground fg)
    (company-tooltip-mouse      :inherit 'company-tooltip-selection
				:background orange   :foreground bg
				:distant-foreground fg
				:box `(:line-width 2 :color ,fg-alt))
    (company-tooltip-annotation :foreground violet)
    (company-scrollbar-bg       :background base2)
    (company-scrollbar-fg       :background rust)

    (company-preview            :foreground orange :background base4)
    (company-preview-common     :inherit 'company-preview :underline t)
    (company-preview-search     :inherit 'company-tooltip-search)
    (company-template-field     :inherit 'match)

    ;; circe
    (circe-fool :foreground doc-comments)
    (circe-highlight-nick-face :inherit 'bold :foreground constants)
    (circe-prompt-face :inherit 'bold :foreground highlight)
    (circe-server-face :foreground comments)
    (circe-my-message-face :inherit 'bold)

    ;; diff-hl
    (diff-hl-change :foreground vc-modified)
    (diff-hl-delete :foreground vc-deleted)
    (diff-hl-insert :foreground vc-added)

    ;; diff-mode
    (diff-added   :inherit 'hl-line :foreground blue-gunmetal)
    (diff-changed :foreground violet)
    (diff-removed :foreground red :background base3)
    (diff-header  :foreground cyan :background nil)
    (diff-file-header :foreground blue :background nil)
    (diff-hunk-header :foreground violet)
    (diff-refine-added   :inherit 'diff-added :inverse-video t)
    (diff-refine-changed :inherit 'diff-changed :inverse-video t)
    (diff-refine-removed :inherit 'diff-removed :inverse-video t)

    ;; dired+
    (diredp-file-name              :foreground base8)
    (diredp-dir-name               :foreground base8 :inherit 'bold)
    (diredp-ignored-file-name      :foreground base5)
    (diredp-compressed-file-suffix :foreground base5)
    (diredp-symlink                :foreground violet)
    (diredp-dir-heading            :foreground blue  :inherit 'bold)
    (diredp-file-suffix            :foreground violet)
    (diredp-read-priv              :foreground orange)
    (diredp-write-priv             :foreground blue-gunmetal)
    (diredp-exec-priv              :foreground yellow)
    (diredp-rare-priv              :foreground red   :inherit 'bold)
    (diredp-dir-priv               :foreground blue  :inherit 'bold)
    (diredp-no-priv                :foreground base5)
    (diredp-number                 :foreground orange)
    (diredp-date-time              :foreground blue)

    ;; dired-k
    (dired-k-directory :foreground blue)

    ;; elscreen
    (elscreen-tab-background-face     :background bg)
    (elscreen-tab-control-face        :background bg     :foreground bg)
    (elscreen-tab-current-screen-face :background bg-alt :foreground fg)
    (elscreen-tab-other-screen-face   :background bg     :foreground fg-alt)

    ;; evil
    (evil-ex-substitute-matches     :background base0 :foreground red   :strike-through t :bold bold)
    (evil-ex-substitute-replacement :background base0 :foreground blue-gunmetal :bold bold)
    (evil-search-highlight-persist-highlight-face :inherit 'lazy-highlight)

    ;; evil-mc
    (evil-mc-cursor-default-face :background orange :foreground base0 :inverse-video nil)
    (evil-mc-region-face :inherit 'region)
    (evil-mc-cursor-bar-face :height 1 :background orange :foreground base0)
    (evil-mc-cursor-hbar-face :underline `(:color ,highlight))

    ;; evil-snipe
    (evil-snipe-first-match-face :foreground highlight :background dark-blue :bold bold)
    (evil-snipe-matches-face     :foreground highlight :underline t :bold bold)

    ;; flycheck
    (flycheck-error     :underline `(:style line :color ,red))
    (flycheck-warning   :underline `(:style line :color ,yellow))
    (flycheck-info      :underline `(:style line :color ,blue-gunmetal))

    ;; flymake
    (flymake-warnline :background bg :underline `(:style line :color ,pink))
    (flymake-errline  :background bg :underline `(:style line :color ,red))

    ;; flyspell
    (flyspell-incorrect :underline `(:style line :color ,error) :inherit 'unspecified)

    ;; git-gutter
    (git-gutter:modified :foreground vc-modified)
    (git-gutter:added    :foreground vc-added)
    (git-gutter:deleted  :foreground vc-deleted)

    ;; git-gutter+
    (git-gutter+-modified :foreground vc-modified :background nil)
    (git-gutter+-added    :foreground vc-added :background nil)
    (git-gutter+-deleted  :foreground vc-deleted :background nil)

    ;; git-gutter-fringe
    (git-gutter-fr:modified :foreground vc-modified)
    (git-gutter-fr:added    :foreground vc-added)
    (git-gutter-fr:deleted  :foreground vc-deleted)

    ;; gnus
    (gnus-group-mail-1           :bold bold :foreground fg)
    (gnus-group-mail-2           :inherit 'gnus-group-mail-1)
    (gnus-group-mail-3           :inherit 'gnus-group-mail-1)
    (gnus-group-mail-1-empty     :foreground base5)
    (gnus-group-mail-2-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-mail-3-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-1           :inherit 'gnus-group-mail-1)
    (gnus-group-news-2           :inherit 'gnus-group-news-1)
    (gnus-group-news-3           :inherit 'gnus-group-news-1)
    (gnus-group-news-4           :inherit 'gnus-group-news-1)
    (gnus-group-news-5           :inherit 'gnus-group-news-1)
    (gnus-group-news-6           :inherit 'gnus-group-news-1)
    (gnus-group-news-1-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-2-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-3-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-4-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-5-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-6-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-mail-low         :inherit 'gnus-group-mail-1 :bold nil)
    (gnus-group-mail-low-empty   :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-low         :inherit 'gnus-group-mail-1 :foreground base5)
    (gnus-group-news-low-empty   :inherit 'gnus-group-news-low :bold nil)
    (gnus-header-content         :inherit 'message-header-other)
    (gnus-header-from            :inherit 'message-header-other)
    (gnus-header-name            :inherit 'message-header-name)
    (gnus-header-newsgroups      :inherit 'message-header-other)
    (gnus-header-subject         :inherit 'message-header-subject)
    (gnus-summary-cancelled      :foreground red :strike-through t)
    (gnus-summary-high-ancient   :foreground (doom-lighten base5 0.2) :inherit 'italic)
    (gnus-summary-high-read      :foreground (doom-lighten fg 0.2))
    (gnus-summary-high-ticked    :foreground (doom-lighten orange 0.2))
    (gnus-summary-high-unread    :foreground (doom-lighten blue-gunmetal 0.2))
    (gnus-summary-low-ancient    :foreground (doom-darken base5 0.2) :inherit 'italic)
    (gnus-summary-low-read       :foreground (doom-darken fg 0.2))
    (gnus-summary-low-ticked     :foreground (doom-darken orange 0.2))
    (gnus-summary-low-unread     :foreground (doom-darken blue-gunmetal 0.2))
    (gnus-summary-normal-ancient :foreground base5 :inherit 'italic)
    (gnus-summary-normal-read    :foreground fg)
    (gnus-summary-normal-ticked  :foreground orange)
    (gnus-summary-normal-unread  :foreground blue-gunmetal :inherit 'bold)
    (gnus-summary-selected       :foreground blue :bold bold)
    (gnus-cite-1                 :foreground violet)
    (gnus-cite-2                 :foreground violet)
    (gnus-cite-3                 :foreground violet)
    (gnus-cite-4                 :foreground blue-gunmetal)
    (gnus-cite-5                 :foreground blue-gunmetal)
    (gnus-cite-6                 :foreground blue-gunmetal)
    (gnus-cite-7                 :foreground orange)
    (gnus-cite-8                 :foreground orange)
    (gnus-cite-9                 :foreground orange)
    (gnus-cite-10                :foreground yellow)
    (gnus-cite-11                :foreground yellow)
    (gnus-signature              :foreground yellow)
    (gnus-x-face                 :background base5 :foreground fg)

    ;; helm
    (helm-selection
     (&all :inherit 'bold :background base2)
     (&dark  :distant-foreground highlight)
     (&light :distant-foreground base0))
    (helm-match :foreground highlight :distant-foreground base8 :underline t)
    (helm-source-header          :background base2 :foreground base5)
    (helm-swoop-target-line-face :foreground highlight :inverse-video t)
    (helm-visible-mark           :inherit '(bold highlight))
    (helm-ff-file                :foreground fg)
    (helm-ff-prefix              :foreground keywords)
    (helm-ff-dotted-directory    :foreground grey)
    (helm-ff-directory           :foreground variables)
    (helm-ff-executable          :foreground base8 :inherit 'italic)
    (helm-grep-match             :foreground highlight :distant-foreground red)
    (helm-grep-file              :foreground methods)
    (helm-grep-lineno            :foreground base5)
    (helm-grep-finish            :foreground blue-gunmetal)
    (helm-swoop-target-line-face       :foreground highlight :inverse-video t)
    (helm-swoop-target-line-block-face :foreground yellow)
    (helm-swoop-target-word-face       :foreground blue-gunmetal :inherit 'bold)
    (helm-swoop-target-number-face     :foreground base5)

    ;; highlight-indentation-mode
    (highlight-indentation-face                :inherit 'hl-line)
    (highlight-indentation-current-column-face :background base1)
    (highlight-indentation-guides-odd-face     :inherit 'highlight-indentation-face)
    (highlight-indentation-guides-even-face    :inherit 'highlight-indentation-face)

    ;; highlight-quoted-mode
    (highlight-quoted-symbol :foreground type)
    (highlight-quoted-quote  :foreground operators)

    ;; highlight-numbers-mode
    (highlight-numbers-number :inherit 'bold :foreground numbers)

    ;; hlinum
    (linum-highlight-face :foreground fg :distant-foreground nil :bold nil)

    ;; hydra
    (hydra-face-red      :foreground red     :bold bold)
    (hydra-face-blue     :foreground blue    :bold bold)
    (hydra-face-amaranth :foreground orange :bold bold)
    (hydra-face-pink     :foreground violet  :bold bold)
    (hydra-face-teal     :foreground teal    :bold bold)

    ;; iedit
    (iedit-occurrence :foreground orange :bold bold :inverse-video t)
    (iedit-read-only-occurrence :inherit 'region)

    ;; indent-guide
    (indent-guide-face :foreground (doom-lighten bg 0.1))

    ;; ivy
    (ivy-current-match :background dark-blue :distant-foreground base0 :bold bold)
    (ivy-minibuffer-match-face-1
     :background base0
     :foreground (doom-lighten grey 0.1)
     :bold bold)
    (ivy-minibuffer-match-face-2 :inherit 'ivy-minibuffer-match-face-1 :foreground orange)
    (ivy-minibuffer-match-face-3 :inherit 'ivy-minibuffer-match-face-1 :foreground blue-gunmetal)
    (ivy-minibuffer-match-face-4 :inherit 'ivy-minibuffer-match-face-1 :foreground yellow)
    (ivy-virtual :foreground fg)

    ;; jabber
    (jabber-activity-face          :foreground red   :bold bold)
    (jabber-activity-personal-face :foreground blue  :bold bold)
    (jabber-chat-error             :foreground red   :bold bold)
    (jabber-chat-prompt-foreign    :foreground red   :bold bold)
    (jabber-chat-prompt-local      :foreground blue  :bold bold)
    (jabber-chat-prompt-system     :foreground blue-gunmetal :bold bold)
    (jabber-chat-text-foreign      :foreground fg)
    (jabber-chat-text-local        :foreground fg)
    (jabber-rare-time-face         :foreground blue-gunmetal)
    (jabber-roster-user-away       :foreground yellow)
    (jabber-roster-user-chatty     :foreground blue-gunmetal :bold bold)
    (jabber-roster-user-dnd        :foreground red)
    (jabber-roster-user-error      :foreground red)
    (jabber-roster-user-offline    :foreground fg)
    (jabber-roster-user-online     :foreground blue-gunmetal :bold bold)
    (jabber-roster-user-xa         :foreground cyan)

    ;; linum-relative
    (linum-relative-current-face (&inherit line-number-current-line))

    ;; lui
    (lui-time-stamp-face :foreground violet)
    (lui-highlight-face :foreground highlight)
    (lui-button-face :foreground builtin :underline t)

    ;; multiple cursors
    (mc/cursor-face :inherit 'cursor)

    ;; nav-flash
    (nav-flash-face :background selection :foreground base8 :bold bold)

    ;; neotree
    (neo-root-dir-face   :foreground strings :background bg-alt :box `(:line-width 4 :color ,bg-alt))
    (neo-file-link-face  :foreground fg)
    (neo-dir-link-face   :foreground highlight)
    (neo-expand-btn-face :foreground highlight)
    (neo-vc-edited-face  :foreground yellow)
    (neo-vc-added-face   :foreground blue-gunmetal)
    (neo-vc-removed-face :foreground red :strike-through t)
    (neo-vc-conflict-face :foreground orange :bold bold)
    (neo-vc-ignored-face  :foreground comments)
    (doom-neotree-dir-face :foreground highlight)
    (doom-neotree-file-face :foreground base8)
    (doom-neotree-hidden-file-face :foreground comments)
    (doom-neotree-text-file-face :foreground fg)
    (doom-neotree-data-file-face :foreground violet)
    (doom-neotree-media-file-face :inherit 'doom-neotree-hidden-file-face)

    ;; nlinum
    (nlinum-current-line (&inherit line-number-current-line))

    ;; nlinum-hl
    (nlinum-hl-face (&inherit line-number-current-line))

    ;; nlinum-relative
    (nlinum-relative-current-face (&inherit line-number-current-line))

    ;; lsp
    ;; TODO Add light versions
    (lsp-face-highlight-textual :background dark-blue :foreground base8 :distant-foreground base0 :bold bold)
    (lsp-face-highlight-read    :background dark-blue :foreground base8 :distant-foreground base0 :bold bold)
    (lsp-face-highlight-write   :background dark-blue :foreground base8 :distant-foreground base0 :bold bold)

    ;; magit
    (magit-bisect-bad        :foreground red)
    (magit-bisect-good       :foreground blue-gunmetal)
    (magit-bisect-skip       :foreground pink)
    (magit-blame-date        :foreground red)
    (magit-blame-heading     :foreground pink :background base3)
    (magit-branch-current    :foreground red)
    (magit-branch-local      :foreground cyan)
    (magit-branch-remote     :foreground blue-gunmetal)
    (magit-cherry-equivalent :foreground violet)
    (magit-cherry-unmatched  :foreground cyan)
    (magit-diff-added             :foreground (doom-darken blue-gunmetal 0.2)  :background (doom-blend blue-gunmetal bg 0.1))
    (magit-diff-added-highlight   :foreground blue-gunmetal                    :background (doom-blend blue-gunmetal bg 0.2) :bold bold)
    (magit-diff-base              :foreground (doom-darken pink 0.2) :background (doom-blend pink bg 0.1))
    (magit-diff-base-highlight    :foreground pink                   :background (doom-blend pink bg 0.2) :bold bold)
    (magit-diff-context           :foreground (doom-darken fg 0.4) :background bg)
    (magit-diff-context-highlight :foreground fg                   :background bg-alt)
    (magit-diff-file-heading           :foreground fg :bold bold)
    (magit-diff-file-heading-selection :foreground orange               :background dark-blue :bold bold)
    (magit-diff-hunk-heading           :foreground bg                    :background (doom-blend violet bg 0.3))
    (magit-diff-hunk-heading-highlight :foreground bg                    :background violet :bold bold)
    (magit-diff-removed                :foreground (doom-darken red 0.3) :background (doom-blend red base3 0.05))
    (magit-diff-removed-highlight      :foreground red                   :background (doom-blend red base3 0.1) :bold bold)
    (magit-diff-lines-heading          :foreground yellow     :background red)
    (magit-diffstat-added              :foreground blue-gunmetal)
    (magit-diffstat-removed            :foreground red)
    (magit-dimmed :foreground comments)
    (magit-hash :foreground comments)
    (magit-header-line :background dark-blue :foreground base8 :bold bold
                       :box `(:line-width 3 :color ,dark-blue))
    (magit-log-author :foreground pink)
    (magit-log-date :foreground blue)
    (magit-log-graph :foreground comments)
    (magit-process-ng :inherit 'error)
    (magit-process-ok :inherit 'success)
    (magit-reflog-amend :foreground orange)
    (magit-reflog-checkout :foreground blue)
    (magit-reflog-cherry-pick :foreground blue-gunmetal)
    (magit-reflog-commit :foreground blue-gunmetal)
    (magit-reflog-merge :foreground blue-gunmetal)
    (magit-reflog-other :foreground cyan)
    (magit-reflog-rebase :foreground orange)
    (magit-reflog-remote :foreground cyan)
    (magit-reflog-reset :inherit 'error)
    (magit-refname :foreground comments)
    (magit-section-heading           :foreground blue :bold bold)
    (magit-section-heading-selection :foreground pink :bold bold)
    (magit-section-highlight :inherit 'hl-line)
    (magit-sequence-drop :foreground red)
    (magit-sequence-head :foreground blue)
    (magit-sequence-part :foreground pink)
    (magit-sequence-stop :foreground blue-gunmetal)
    (magit-signature-bad :inherit 'error)
    (magit-signature-error :inherit 'error)
    (magit-signature-expired :foreground pink)
    (magit-signature-good :inherit 'success)
    (magit-signature-revoked :foreground orange)
    (magit-signature-untrusted :foreground cyan)
    (magit-tag :foreground yellow)
    (magit-filename :foreground violet)
    (magit-section-secondary-heading :foreground violet :bold bold)

    ;; mic-paren
    (paren-face-match    (&inherit show-paren-match))
    (paren-face-mismatch (&inherit show-paren-mismatch))
    (paren-face-no-match (&inherit show-paren-mismatch))

    ;; parenface
    (paren-face :foreground comments)

    ;; perspective
    (persp-selected-face :foreground blue :bold bold)

    ;; popup
    (popup-face :inherit 'tooltip)
    (popup-selection-face :background selection)

    ;; pos-tip
    (popup          :inherit 'tooltip)
    (popup-tip-face :inherit 'tooltip)

    ;; powerline
    (powerline-active1   :inherit 'mode-line-emphasis :background highlight :foreground bg)
    (powerline-active2   :inherit 'mode-line)
    (powerline-inactive1 :inherit 'mode-line-inactive :background base2)
    (powerline-inactive2 :inherit 'mode-line-inactive :background base4)

    ;; rainbow-delimiters
    (rainbow-delimiters-depth-1-face :foreground blue)
    (rainbow-delimiters-depth-2-face :foreground orange)
    (rainbow-delimiters-depth-3-face :foreground blue-gunmetal)
    (rainbow-delimiters-depth-4-face :foreground pink)
    (rainbow-delimiters-depth-5-face :foreground violet)
    (rainbow-delimiters-depth-6-face :foreground yellow)
    (rainbow-delimiters-depth-7-face :foreground teal)
    (rainbow-delimiters-unmatched-face  :foreground red :bold bold :inverse-video t)
    (rainbow-delimiters-mismatched-face :inherit 'rainbow-delimiters-unmatched-face)

    ;; re-builder
    (reb-match-0 :foreground pink  :inverse-video t)
    (reb-match-1 :foreground orange :inverse-video t)
    (reb-match-2 :foreground blue-gunmetal   :inverse-video t)
    (reb-match-3 :foreground yellow  :inverse-video t)

    ;; show-paren
    (show-paren-match    :foreground yellow   :background bg    :bold bold)
    (show-paren-mismatch :foreground base0    :background red   :bold bold)

    ;; smartparens
    (sp-pair-overlay-face :background bg)

    ;; smartparens
    (sp-show-pair-match-face    (&inherit show-paren-match))
    (sp-show-pair-mismatch-face (&inherit show-paren-mismatch))

    ;; solaire-mode
    (solaire-default-face      :inherit 'default :background bg-alt)
    (solaire-line-number-face  :inherit (list (if (boundp 'display-line-numbers) 'line-number 'linum) 'solaire-default-face))
    (solaire-hl-line-face      :inherit 'hl-line :background base3)
    (solaire-org-hide-face     :foreground bg)

    ;; spaceline
    (spaceline-highlight-face :foreground blue)

    ;; stripe-buffer
    (stripe-highlight
     (&light :background base5)
     (&dark  :background base3))

    ;; swiper
    (swiper-line-face    :background blue    :foreground base0)
    (swiper-match-face-1 :background base0   :foreground base5)
    (swiper-match-face-2 :background pink  :foreground base0 :bold bold)
    (swiper-match-face-3 :background orange :foreground base0 :bold bold)
    (swiper-match-face-4 :background blue-gunmetal   :foreground base0 :bold bold)

    ;; tabbar
    (tabbar-default             :foreground bg :background bg :height 1.0)
    (tabbar-highlight           :foreground fg :background selection :distant-foreground bg)
    (tabbar-button              :foreground fg :background bg)
    (tabbar-button-highlight    :inherit 'tabbar-button :inverse-video t)
    (tabbar-modified            :inherit 'tabbar-default :foreground red :bold bold)
    (tabbar-unselected          :inherit 'tabbar-default :foreground base5)
    (tabbar-unselected-modified :inherit 'tabbar-modified)
    (tabbar-selected
     :inherit 'tabbar-default :bold bold
     :foreground fg :background bg-alt)
    (tabbar-selected-modified :inherit 'tabbar-selected :foreground blue-gunmetal)

    ;; undo-tree
    (undo-tree-visualizer-default-face :foreground base5)
    (undo-tree-visualizer-current-face :foreground blue-gunmetal :bold bold)
    (undo-tree-visualizer-unmodified-face :foreground base5)
    (undo-tree-visualizer-active-branch-face :foreground blue)
    (undo-tree-visualizer-register-face :foreground yellow)

    ;; vimish-fold
    (vimish-fold-overlay :inherit 'font-lock-comment-face :background base0)
    (vimish-fold-fringe  :foreground orange)

    ;; volatile-highlights
    (vhl/default-face :background grey)

    ;; wgrep
    (wgrep-face :bold bold :foreground blue-gunmetal :background base5)
    (wgrep-delete-face :foreground base3 :background red)
    (wgrep-done-face   :foreground blue)
    (wgrep-file-face   :foreground comments)
    (wgrep-reject-face :foreground red :bold bold)

    ;; which-func
    (which-func :foreground blue)

    ;; which-key
    (which-key-key-face                   :foreground blue-gunmetal)
    (which-key-group-description-face     :foreground violet)
    (which-key-command-description-face   :foreground blue)
    (which-key-local-map-description-face :foreground orange)

    ;; whitespace
    (whitespace-empty    :background base3)
    (whitespace-space    :foreground base4)
    (whitespace-tab      :foreground base4 :background (unless indent-tabs-mode base3))
    (whitespace-newline  :foreground base4)
    (whitespace-trailing :inherit 'trailing-whitespace)
    (whitespace-line     :background base0 :foreground red :bold bold)

    ;; workgroups2
    (wg-current-workgroup-face :foreground base0 :background highlight)
    (wg-other-workgroup-face   :foreground base5)
    (wg-divider-face           :foreground grey)
    (wg-brace-face             :foreground highlight)

    ;; yasnippet
    (yas-field-highlight-face :inherit 'match)


    ;; --- major-mode faces -------------------
    ;; auctex (latex-mode)
    (font-latex-bold-face         :inherit 'bold)
    (font-latex-italic-face       :inherit 'italic)
    (font-latex-math-face         :foreground blue)
    (font-latex-sectioning-0-face :inherit 'org-level-1)
    (font-latex-sectioning-1-face :inherit 'org-level-2)
    (font-latex-sectioning-2-face :inherit 'org-level-3)
    (font-latex-sectioning-3-face :inherit 'font-latex-sectioning-2-face)
    (font-latex-sectioning-4-face :inherit 'font-latex-sectioning-2-face)
    (font-latex-sectioning-5-face :inherit 'font-latex-sectioning-2-face)
    (font-latex-script-char-face  :foreground dark-blue)
    (font-latex-string-face       :inherit 'font-lock-string-face)
    (font-latex-warning-face      :inherit 'font-lock-warning-face)

    ;; jdee-mode
    (jdee-font-lock-number-face :foreground numbers)
    (jdee-font-lock-operator-face :foreground operators)
    (jdee-font-lock-constant-face :inherit 'font-lock-constant-face)
    (jdee-font-lock-constructor-face :foreground methods)
    (jdee-font-lock-public-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-protected-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-private-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-modifier-face :inherit 'font-lock-type-face)
    (jdee-font-lock-doc-tag-face :foreground violet)
    (jdee-font-lock-italic-face :inherit 'italic)
    (jdee-font-lock-bold-face :inherit 'bold)
    (jdee-font-lock-link-face :foreground blue :italic nil :underline t)

    ;; cfw mode
    (cfw:face-title              :foreground orange :inherit 'variable-pitch :box nil :height 2.0 :family "Fira Code")
    (cfw:face-header             :foreground (doom-darken orange 0.2) :weight 'bold :family "Fira Code")
    (cfw:face-sunday             :foreground (doom-darken blue 0.4) :background modeline-bg :weight 'bold :family "Fira Code")
    (cfw:face-saturday           :foreground (doom-darken blue 0.4) :background modeline-bg :weight 'bold :family "Fira Code")
    (cfw:face-holiday            :background modeline-bg :foreground periwinkle :family "Fira Code")
    (cfw:face-grid               :foreground (doom-darken blue 0.5) :weight 'thin :family "Fira Code") ;; Time grid
    (cfw:face-default-content    :foreground fg)
    (cfw:face-periods            :foreground "cyan")
    (cfw:face-day-title          :background modeline-bg)
    (cfw:face-default-day        :weight 'bold :inherit 'cfw:face-day-title)
    (cfw:face-annotation         :foreground bg-alt :inherit 'cfw:face-day-title)
    (cfw:face-disable            :foreground teal :inherit 'cfw:face-day-title)
    (cfw:face-today-title        :foreground orange :background modeline-bg :weight 'bold)
    (cfw:face-today              :foreground cyan :background: bg)
    (cfw:face-select             :foreground bg :background violet)
    (cfw:face-toolbar            :inherit 'mode-line :box nil)
    (cfw:face-toolbar-button-off :foreground dark-blue :inherit 'mode-line :box nil)
    (cfw:face-toolbar-button-on  :foreground teal :inherit 'mode-line :box nil)
    
    ;; js2-mode
    (js2-function-param  :foreground variables)
    (js2-function-call   :foreground functions)
    (js2-object-property :foreground violet)
    (js2-jsdoc-tag       :foreground comments)

    ;; ledger-mode
    (ledger-font-posting-date-face :foreground blue)
    (ledger-font-posting-amount-face :foreground yellow)
    (ledger-font-posting-account-face :foreground base8)
    (ledger-font-payee-cleared-face :foreground violet :bold t :height 1.2)
    (ledger-font-payee-uncleared-face :foreground base5 :bold t :height 1.2)
    (ledger-font-xact-highlight-face :background base0)

    ;; makefile-*-mode
    (makefile-targets :foreground blue)

    ;; markdown-mode
    (markdown-header-face           :inherit 'bold :foreground highlight)
    (markdown-header-delimiter-face :inherit 'markdown-header-face)
    (markdown-metadata-key-face     :foreground red)
    (markdown-list-face             :foreground red)
    (markdown-link-face             :inherit 'bold :foreground blue)
    (markdown-url-face              :foreground orange :bold nil)
    (markdown-header-face-1         :inherit 'markdown-header-face)
    (markdown-header-face-2         :inherit 'markdown-header-face)
    (markdown-header-face-3         :inherit 'markdown-header-face)
    (markdown-header-face-4         :inherit 'markdown-header-face)
    (markdown-header-face-5         :inherit 'markdown-header-face)
    (markdown-header-face-6         :inherit 'markdown-header-face)
    (markdown-italic-face           :inherit 'italic :foreground violet)
    (markdown-bold-face             :inherit 'bold   :foreground pink)
    (markdown-markup-face           :foreground operators)
    (markdown-blockquote-face       :inherit 'italic :foreground doc-comments)
    (markdown-pre-face              :foreground strings)
    (markdown-code-face :background base3)
    (markdown-inline-code-face :inherit '(markdown-code-face markdown-pre-face))

    ;; org-agenda
    (org-agenda-structure :foreground modeline-fg
			  :box `(:line-width 10 :color bg)
			  :height 1.2)
    (org-agenda-date      :foreground rust :height 1.3)
    (org-agenda-date-weekend      :inherit 'org-agenda-date)
    (org-agenda-date-today :inherit 'org-agenda-date
                           :foreground red
                           :height 2.3)
    (org-time-grid :foreground (doom-darken violet 0.4))
    (org-agenda-done      :inherit 'org-done)
    (org-scheduled      :inherit 'default)
    (org-scheduled-today      :inherit 'org-scheduled)
    (org-scheduled-previously      :inherit 'default)
    (org-agenda-dimmed-todo-face :foreground (doom-darken fg 0.6))
    (org-warning :foreground salad)
    (org-upcoming-deadline :foreground (doom-darken salad 0.3))
    (org-agenda-calendar-event :foreground salad)

    ;; org-mode
    (org-level-1 :foreground blue :height 1.2)
    (org-level-2 :foreground (doom-darken blue 0.3) :height 1.0)
    (org-level-3 :foreground (doom-darken blue 0.5))
    (org-level-4 :foreground (doom-darken blue 0.6))
    (org-level-5 :inherit 'org-level-1 :height 1.0)
    (org-level-6 :inherit 'org-level-2)
    (org-level-7 :inherit 'org-level-3)
    (org-level-8 :inherit 'org-level-4)
    (org-tag :foreground purple :bold nil :slant 'oblique :weight 'extra-light :box `(:line-width 1 :color ,base2))
    (org-ellipsis :underline nil :foreground violet)
    (org-hide :foreground bg)
    (org-table :foreground violet)
    (org-quote :inherit 'italic :background base3)
    (org-document-info         :foreground builtin)
    (org-document-title        :foreground builtin :bold bold)
    (org-default               :inherit 'variable-pitch)
    (org-meta-line             :foreground doc-comments)
    (org-block-begin-line      :foreground comments)
    (org-block-end-line        :inherit 'org-block-begin-line)
    (org-block-background      :background base3)
    (org-block                 :background base3)
    (org-archived              :foreground base3)
    (org-code                  :foreground pink)
    (org-verbatim              :foreground blue-gunmetal)
    (org-formula               :foreground cyan)
    ;; org-list-dt is the first part ("Item") of one of these org mode bullets:
    ;; - Item :: Description
    (org-list-dt               :foreground orange)
    (org-footnote              :foreground pink)
    (org-date                  :foreground metal)
    (org-todo                  :foreground dark-blue)
    (org-headline-done         :foreground blue-gunmetal :strike-through t)
    (org-done                  :inherit 'org-headline-done)
    ;; (org-todo-keyword-faces
    ;;  '(
    ;;    ("TODO" :foreground periwinkle :box `(:line-width 1 :color ,base2))
    ;;    ("WAITING" :foreground teal :box `(:line-width 1 :color ,base2))
    ;;    ("DONE" :foreground blue-gunmetal)
    ;;    ("CANCELLED" :foreground dark-blue)
    ;;    ))
    (org-special-keyword       :foreground cold-olive)
    (org-checkbox :inherit 'org-todo)
    (org-checkbox-statistics-todo :inherit 'org-todo)
    (org-checkbox-statistics-done :inherit 'org-done)
    (message-header-name :foreground blue-gunmetal) ; FIXME move this
    ;; Org habits
    (org-habit-alert-face	   :background butter       :foreground bg)
    (org-habit-alert-future-face   :background orange       :foreground bg)
    (org-habit-clear-face	   :background cold-olive   :foreground bg)
    (org-habit-clear-future-face   :background blue-gunmetal)
    (org-habit-overdue-face	   :background rust         :foreground bg)
    (org-habit-overdue-future-face :background red          :foreground bg)
    (org-habit-ready-face	   :background green        :foreground bg)
    (org-habit-ready-future-face   :background greyed-green :foreground bg)
    
    ;; rpm-spec-mode
    (rpm-spec-macro-face        :foreground yellow)
    (rpm-spec-var-face          :foreground violet)
    (rpm-spec-tag-face          :foreground blue)
    (rpm-spec-obsolete-tag-face :foreground red)
    (rpm-spec-package-face      :foreground pink)
    (rpm-spec-dir-face          :foreground blue-gunmetal)
    (rpm-spec-doc-face          :foreground pink)
    (rpm-spec-ghost-face        :foreground comments)
    (rpm-spec-section-face      :foreground orange)

    ;; typescript-mode
    (ts-object-property (&inherit js2-object-property))

    ;; sh-mode
    (sh-heredoc :inherit 'font-lock-string-face :weight 'normal)
    (sh-quoted-exec :inherit 'font-lock-preprocessor-face)

    ;; web-mode
    (web-mode-doctype-face           :foreground comments)
    (web-mode-html-tag-face          :foreground methods)
    (web-mode-html-tag-bracket-face  :foreground methods)
    (web-mode-html-attr-name-face    :foreground type)
    (web-mode-html-entity-face       :foreground cyan :inherit 'italic)
    (web-mode-block-control-face     :foreground pink)
    (web-mode-html-tag-bracket-face  :foreground operators))
  "TODO")

(defconst doom-themes-common-vars
  '((ansi-color-names-vector
     (vconcat (mapcar #'doom-color '(base0 red blue-gunmetal yellow blue orange cyan base8))))

    (fci-rule-color (doom-color 'base5))

    (jdee-db-spec-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'grey)))
    (jdee-db-requested-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'blue-gunmetal)))
    (jdee-db-active-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'highlight)))

    ;; (org-ellipsis " … ")
    (org-fontify-whole-heading-line t)
    (org-fontify-done-headline t)
    (org-fontify-quote-and-verse-blocks t)

    (vc-annotate-color-map
     `(list (cons 20  ,(doom-color 'blue-gunmetal))
            (cons 40  ,(doom-blend (doom-color 'yellow) (doom-color 'blue-gunmetal) (/ 1.0 3)))
            (cons 60  ,(doom-blend (doom-color 'yellow) (doom-color 'blue-gunmetal) (/ 2.0 3)))
            (cons 80  ,(doom-color 'yellow))
            (cons 100 ,(doom-blend (doom-color 'pink) (doom-color 'yellow) (/ 1.0 3)))
            (cons 120 ,(doom-blend (doom-color 'pink) (doom-color 'yellow) (/ 2.0 3)))
            (cons 140 ,(doom-color 'pink))
            (cons 160 ,(doom-blend (doom-color 'orange) (doom-color 'pink) (/ 1.0 3)))
            (cons 180 ,(doom-blend (doom-color 'orange) (doom-color 'pink) (/ 2.0 3)))
            (cons 200 ,(doom-color 'orange))
            (cons 220 ,(doom-blend (doom-color 'red) (doom-color 'orange) (/ 1.0 3)))
            (cons 240 ,(doom-blend (doom-color 'red) (doom-color 'orange) (/ 2.0 3)))
            (cons 260 ,(doom-color 'red))
            (cons 280 ,(doom-blend (doom-color 'grey) (doom-color 'red) (/ 1.0 4)))
            (cons 300 ,(doom-blend (doom-color 'grey) (doom-color 'red) (/ 2.0 4)))
            (cons 320 ,(doom-blend (doom-color 'grey) (doom-color 'red) (/ 3.0 4)))
            (cons 340 ,(doom-color 'base5))
            (cons 360 ,(doom-color 'base5))))
    (vc-annotate-very-old-color nil)
    (vc-annotate-background (doom-color 'base0)))
  "TODO")


;; Library
(defvar doom-themes--colors)
(defvar doom--min-colors '(257 256 16))
(defvar doom--quoted-p nil)

(defvar doom-themes--common-faces nil)
(defvar doom-themes--common-vars nil)

(defun doom-themes--colors-p (item)
  "TODO"
  (when item
    (cond ((listp item)
           (let ((car (car item)))
             (cond ((memq car '(quote doom-color)) nil)

                   ((memq car '(backquote \`))
                    (let ((doom--quoted-p t))
                      (doom-themes--colors-p (cdr item))))

                   ((eq car '\,)
                    (let (doom--quoted-p)
                      (doom-themes--colors-p (cdr item))))

                   (t
                    (or (doom-themes--colors-p car)
                        (doom-themes--colors-p (cdr-safe item)))))))

          ((and (symbolp item)
                (not (keywordp item))
                (not doom--quoted-p)
                (not (equal (substring (symbol-name item) 0 1) "-"))
                (assq item doom-themes--colors))))))

(defun doom-themes--colorize (item type)
  "TODO"
  (when item
    (let ((doom--quoted-p doom--quoted-p))
      (cond ((listp item)
             (cond ((memq (car item) '(quote doom-color))
                    item)
                   ((eq (car item) 'doom-ref)
                    (doom-themes--colorize
                     (apply #'doom-ref (cdr item)) type))
                   (t
                    (let* ((item (append item nil))
                           (car (car item))
                           (doom--quoted-p
                            (cond ((memq car '(backquote \`)) t)
                                  ((eq car '\,) nil)
                                  (t doom--quoted-p))))
                      (cons car
                            (cl-loop
                             for i in (cdr item)
                             collect (doom-themes--colorize i type)))))))

            ((and (symbolp item)
                  (not (keywordp item))
                  (not doom--quoted-p)
                  (not (equal (substring (symbol-name item) 0 1) "-"))
                  (assq item doom-themes--colors))
             `(doom-color ',item ',type))

            (t item)))))

(defun doom-themes--build-face (face)
  "TODO"
  (let ((cadr (cadr face)))
    (if (eq (car-safe cadr) '&inherit)
        (doom-themes--build-face
         `(,(car face)
           ,@(or (cdr (assq (cadr cadr) doom-themes--common-faces))
                 (error "Couldn't find the '%s' face to inherit it for '%s'"
                        (cadr cadr) (car face)))))
      `(list
        ',(car face)
        ,(cond ((keywordp cadr)
                (let ((real-attrs (cdr face))
                      defs)
                  (cond ((doom-themes--colors-p real-attrs)
                         (dolist (cl doom--min-colors `(list ,@(nreverse defs)))
                           (push `(list '((class color) (min-colors ,cl))
                                        (list ,@(doom-themes--colorize real-attrs cl)))
                                 defs)))

                        (t
                         `(list (list 't (list ,@real-attrs)))))))

               ((memq (car-safe cadr) '(quote backquote \`))
                cadr)

               (t
                (let (all-attrs defs)
                  (dolist (attrs (cdr face) `(list ,@(nreverse defs)))
                    (cond ((eq (car attrs) '&all)
                           (setq all-attrs (append all-attrs (cdr attrs))))

                          ((memq (car attrs) '(&dark &light))
                           (let ((bg (if (eq (car attrs) '&dark) 'dark 'light))
                                 (real-attrs (append all-attrs (cdr attrs) '())))
                             (cond ((doom-themes--colors-p real-attrs)
                                    (dolist (cl doom--min-colors)
                                      (push `(list '((class color) (min-colors ,cl) (background ,bg))
                                                   (list ,@(doom-themes--colorize real-attrs cl)))
                                            defs)))

                                   (t
                                    (push `(list '((background ,bg)) (list ,@real-attrs))
                                          defs))))))))))))))

(defun doom-themes--build-var (var)
  "TODO"
  `(list ',(car var) ,(cadr var)))

(defun doom-themes-common-faces (&optional extra-faces)
  "Return an alist of face definitions for `custom-theme-set-faces'.

Faces in EXTRA-FACES override the default faces."
  (setq doom-themes--common-faces
        (cl-remove-duplicates (append doom-themes-common-faces extra-faces)
                              :key #'car))
  (mapcar #'doom-themes--build-face doom-themes--common-faces))

(defun doom-themes-common-variables (&optional extra-vars)
  "Return an alist of variable definitions for `custom-theme-set-variables'.

Variables in EXTRA-VARS override the default ones."
  (setq doom-themes--common-vars
        (cl-remove-duplicates (append doom-themes-common-vars extra-vars)
                              :key #'car))
  (mapcar #'doom-themes--build-var doom-themes--common-vars))

(provide 'doom-themes-common)
;;; doom-themes-common.el ends here
