;;; tron-doom-theme.el --- inspired by Atom One Dark
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
   (red        '("#cc4700" "#cc4700" "red"          ))
   (orange     '("#dd9aa7" "#dd9aa7" "brightred"    ))
   (green      '("#075f5f" "#075f5f" "green"        ))
   (teal       '("#888a85" "#888a85" "brightgreen"  ))
   (yellow     '("#f0ffff" "#f0ffff" "yellow"       ))
   (blue       '("#00d4d4" "#00d4d4" "brightblue"   ))
   (dark-blue  '("#58615a" "#58615a" "blue"         ))
   (magenta    '("#cf7a00" "#cf7a00" "magenta"      ))
   (violet     '("#75dbb7" "#75dbb7" "brightmagenta"))
   (cyan       '("#a0ffff" "#a0ffff" "brightcyan"   ))
   (dark-cyan  '("#3fffff" "#3fffff" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   cyan)
   (selection      dark-blue)
   (builtin        magenta)
   (comments       (if tron-doom-brighter-comments dark-cyan base5))
   (doc-comments (doom-lighten (if tron-doom-brighter-comments dark-cyan base5) 0.4))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-lighten magenta 0.4))
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.1) ,@(doom-lighten (cdr base0) 0.3)))
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

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend violet base4 (if -modeline-bright 0.5 0.2)))

   (modeline-bg
    (if -modeline-bright
        (doom-darken blue 0.475)
      `(,(car bg) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken blue 0.45)
      `(,(doom-darken (car bg-alt) 0.125) ,@(cdr base0))))
   (modeline-bg-inactive   (doom-darken bg-alt 0.1))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))


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

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
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