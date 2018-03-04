;;; tron-doom-theme.el --- inspired by the movie Tron Legacy
(require 'doom-themes)

;;
(defgroup tron-doom-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom tron-doom-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'tron-doom-theme
  :type 'boolean)

(defcustom tron-doom-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'tron-doom-theme
  :type 'boolean)

(defcustom tron-doom-comment-bg tron-doom-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their
legibility."
  :group 'tron-doom-theme
  :type 'boolean)

(defcustom tron-doom-padded-modeline nil
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'tron-doom-theme
  :type '(or integer boolean))
;;(setq tron-doom-padded-modeline t)

;;
(def-doom-theme tron-doom
  "A dark theme inspired by the movie Tron Legacy"

  ;; name        default   256       16
  ((bg         '("#001519" nil       nil            ))
   (bg-alt     '("#0d1719" nil       nil            ))
   (base0      '("#1B2229" "black"   "black"        ))
   (base1      '("#1c1f24" "#1e1e1e" "brightblack"  ))
   (base2      '("#202328" "#2e2e2e" "brightblack"  ))
   (base3      '("#23272e" "#262626" "brightblack"  ))
   (base4      '("#3f444a" "#3f3f3f" "brightblack"  ))
   (base5      '("#5B6268" "#525252" "brightblack"  ))
   (base6      '("#73797e" "#6b6b6b" "brightblack"  ))
   (base7      '("#9ca0a4" "#979797" "brightblack"  ))
   (base8      '("#DFDFDF" "#dfdfdf" "white"        ))
   (fg         '("#57b3b3" "#57b3b3" "brightwhite"  ))
   (fg-alt     '("#f0ffff" "#f0ffff" "white"        ))

   (grey       base4)
   (teal       '("#888a85" "#888a85" "brightgreen"  ))
   (dark-blue  '("#58615a" "#58615a" "blue"         ))
   (metal      '("#306158" "#306158" "silver"       ))
   (green      '("#075f5f" "#075f5f" "green"        ))
   (cold-olive '("#134031" "#134031" "olive"        ))
   (dark-green '("#043d18" "#043d18" "darkgreen"    ))
   (yellow     '("#f0ffff" "#f0ffff" "yellow"       ))
   (cyan       '("#a0ffff" "#a0ffff" "brightcyan"   ))
   (dark-cyan  '("#3fffff" "#3fffff" "cyan"         ))
   (blue       '("#00d4d4" "#00d4d4" "brightblue"   ))
   (violet     '("#75dbb7" "#75dbb7" "brightmagenta"))
   (salad      '("#00a890" "#00a890" "yellow"       ))
   (rust       '("#804532" "#804532" "darkred"      ))
   (red        '("#cc4700" "#cc4700" "red"          ))
   (magenta    '("#cf7a00" "#cf7a00" "magenta"      ))
   (butter     '("#c4a000" "#c4a000" "goldenrod"    ))
   (purple     '("#8A84B6" "#8A84B6" "purple"       ))
   (periwinkle '("#77A4DE" "#77A4DE" "lightblue"  ))
   (orange     '("#dd9aa7" "#dd9aa7" "brightred"    ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   blue)
   (selection      dark-blue)
   (builtin        magenta)
   (comments       base5)
   (doc-comments (doom-lighten (if tron-doom-brighter-comments dark-cyan base5) 0.4))
   ;; (constants      (doom-lighten magenta 0.4))
   (constants      (doom-lighten green 0.7))
   (functions      magenta)
   (keywords       purple)
   (methods        cyan)
   (operators      cyan)
   (type           periwinkle)
   (strings        metal)
   (variables      teal)
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.1)
                     ,@(doom-lighten (cdr base0) 0.3)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (-modeline-bright tron-doom-brighter-modeline)
   (-modeline-pad
    (when tron-doom-padded-modeline
      (if (integerp tron-doom-padded-modeline) tron-doom-padded-modeline 4)))

   (modeline-fg cyan)
   (modeline-fg-alt base3)

   (modeline-bg (doom-darken green 0.5))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken blue 0.45)
      `(,(doom-darken (car bg-alt) 0.125) ,@(cdr base0))))
   (modeline-bg-inactive   (doom-darken bg-alt 0.1))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1)))

   (modeline-box "cyan")
   (modeline-box-inactive (doom-darken blue 0.5)))

  ;; --- extra faces ------------------------
  ((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   (font-lock-comment-face
    :foreground comments
    :background (if tron-doom-comment-bg (doom-darken bg-alt 0.095)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (line-number :inherit 'default :foreground base4 :distant-foreground nil :bold nil)
   (line-number-current-line :inherit 'hl-line :foreground base7 :distant-foreground nil :bold nil)

   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))

 '(modeline-box ((t (:background "#032f2f" :foreground "#a0ffff" :box (:line-width 1 :color "cyan")))))
 '(modeline-box-inactive ((t (:background "#0b1416" :foreground "#23272e" :box (:line-width 1 :color "#cf7a00")))))

 (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad
             `(:line-width ,-modeline-pad :color ,modeline-bg)
           `(:line-width 1 :color ,modeline-box)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad
             `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)
           `(:line-width 1 :color ,modeline-box-inactive))) 
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   (markdown-code-face :background (doom-lighten base3 0.05)))


  ;; --- extra variables ---------------------
  ;; ()
  )

;;; tron-doom-theme.el ends here
