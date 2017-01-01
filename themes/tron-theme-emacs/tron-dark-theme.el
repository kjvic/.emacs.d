;;; tron-dark-theme.el --- Color theme inspired by Tron Legacy film

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of GNU Emacs.

;; Author:  Oleg Sivokon <olegsivokon@gmail.com>
;; Maintainer: Oleg Sivokon <olegsivokon@gmail.com>
;; Version: 0.1
;; Keywords: theme customization

;;; Commentary

;; This theme is inspired by the Tron Legacy film.

;;; Bugs/todo:

;;; Code:

(deftheme tron-dark
  "Face colors using the Tron palette (dark background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))
      ;; Tron palette colors.
      (tron-teal "#57b3b3")             ; foreground
      (tron-night "#001519")            ; background
      (tron-teal-bright "#00d4d4")      ; cursor
      (tron-violette "#6a6ae6")         ; type foreground ; 5500e6
      (tron-metal "#306158")            ; comments
      (tron-warm-metal "#58615a")       ; doc-string ; 757169
      (tron-teal-super "#a0ffff")       ; string foreground
      (tron-berlin-blue "#0d131f")      ; string background, fringe, border
      (tron-lantern "#f0ffff")          ; keywords foreground
      (tron-berlin-night "#0d1719")     ; keyword background ; 161628
      (tron-salad "#00a890")            ; builtin ; 00a06c
      (tron-salad-bright "#75dbb7")     ; function name foreground, sh-heredoc ; 75bf73
      (tron-deep-olive "#021a17")       ; function name background, ecb-default-highlight-face /
                                        ; ediff-even-diff-A background / ediff-odd-diff-A background
      (tron-seruline "#4186d2")         ; variable foreground, sh-quoted-exec
      (tron-plum-light "#dd9aa7")       ; constant foreground
      (tron-orange "#cc4700")           ; warning
      (tron-teal-brighter "#a8f8f8")    ; isearch foreground
      (tron-olive-greek "#033021")      ; isearch background
      (tron-teal-brightest "#3fffff")   ; isearch lazy foreground
      (tron-cold-olive "#134031")       ; isearch lazy background
      (tron-berlin-darkest "#000d0f")   ; modeline background
      (tron-white "#eeeeec")            ; modeline foreground
      (tron-gray-light "#888a85")       ; modeline inactive foreground
      (tron-orange-hot "#cf7a00")       ; minibufer prompt
      (tron-turquize "#032929")         ; selection background / region / primary
      (tron-green "#043d18")            ; secondary selection background
      (tron-orange-pale "#804532")      ; slime-repl-inputed-output-face foreground /
                                        ; ediff-odd-diff-A foreground /
                                        ; ediff-even-diff-A foreground /
      (tron-butter "#c4a000")           ; generic yellow
      (tron-red-dark "#42071d")         ; generic dark red
      (tron-brown-dark "#0a1519")       ; generic dark brown

      ;; Tango colors, these are used in Gnus-related faces, need yet to see
      ;; what it looks like
      (butter-2 "#edd400") 
      (orange-1 "#fcaf3e") (orange-2 "#f57900")
      (choc-2 "#c17d11")
      (cham-1 "#8ae234") (cham-2 "#73d216") 
      (blue-2 "#3465a4") 
      (plum-1 "#ad7fa8") (plum-2 "#75507b")
      (plum-0 "#e6a8df"))

  (custom-theme-set-faces
   'tron-dark
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((((class color) (min-colors 4096))
	       (:foreground ,tron-teal :background ,tron-night))
	      (((class color) (min-colors 256))
	       (:foreground ,tron-teal :background "#222"))
	      (,class
	       (:foreground ,tron-teal :background "black"))))
   `(cursor ((,class (:background ,tron-teal-bright))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,tron-berlin-blue))))
   `(highlight ((,class (:foreground ,tron-night :background ,tron-teal-super))))
   `(region ((,class (:background ,tron-turquize))))
   `(secondary-selection ((,class (:background ,tron-green))))
   `(isearch ((,class (:foreground ,tron-teal-brighter :background ,tron-olive-greek))))
   `(lazy-highlight ((,class (:background ,tron-cold-olive
                                          :foreground ,tron-teal-brightest))))
   `(shadow ((,class (:foreground ,tron-metal))))
   `(trailing-whitespace ((,class (:background ,tron-orange))))
   ;; Mode line faces
   `(mode-line-buffer-id ((,class (:bold nil))))
   `(mode-line ((,class (:background ,tron-berlin-darkest :foreground ,tron-white :box nil))))
   `(mode-line-inactive ((,class (:background
                                  ,tron-berlin-darkest
                                  :foreground
                                  ,tron-gray-light
                                  :box nil))))
   `(compilation-mode-line-fail ((,class (:foreground ,tron-orange))))
   `(compilation-mode-line-run  ((,class (:foreground ,tron-orange-hot))))
   `(compilation-mode-line-exit ((,class (:foreground ,tron-salad-bright))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,tron-orange-hot))))
   `(escape-glyph ((,class (:foreground ,tron-orange-hot))))
   `(error ((,class (:foreground ,tron-orange-hot :background ,tron-brown-dark))))
   `(warning ((,class (:foreground ,tron-orange-pale))))
   `(success ((,class (:foreground ,tron-olive-greek))))
   ;; Font lock faces
   `(font-lock-builtin-face
     ((,class (:foreground ,tron-salad-bright :background ,tron-brown-dark))))
   `(font-lock-comment-face ((,class (:foreground ,tron-metal))))
   `(font-lock-doc-face ((,class (:foreground ,tron-metal :background nil))))
   `(font-lock-doc-string-face ((,class (:foreground ,tron-warm-metal :background nil))))
   `(font-lock-constant-face
     ((,class (:foreground ,tron-plum-light :background ,tron-brown-dark))))
   `(font-lock-function-name-face
     ((,class (:foreground ,tron-salad-bright :background ,tron-deep-olive :bold t))))
   `(font-lock-keyword-face
     ((,class (:foreground ,tron-lantern :background ,tron-berlin-night))))
   `(font-lock-string-face
     ((,class (:foreground ,tron-teal-super :background ,tron-berlin-blue))))
   `(font-lock-type-face
     ((,class (:foreground ,tron-violette :background ,tron-berlin-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,tron-seruline))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,tron-plum-light))))
   `(link-visited ((,class (:underline t :foreground ,tron-gray-light))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:foreground ,plum-1))))
   `(gnus-group-news-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-news-2 ((,class (:foreground ,tron-seruline))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-news-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-news-3-low ((,class (:foreground ,cham-2))))
   `(gnus-group-news-4 ((,class (:foreground ,plum-0))))
   `(gnus-group-news-4-low ((,class (:foreground ,choc-2))))
   `(gnus-group-news-5 ((,class (:foreground ,orange-1))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-2))))
   `(gnus-group-news-low ((,class (:foreground ,butter-2))))
   `(gnus-group-mail-1 ((,class (:foreground ,plum-1))))
   `(gnus-group-mail-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-mail-2 ((,class (:foreground ,tron-seruline))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-mail-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-mail-3-low ((,class (:foreground ,cham-2))))
   `(gnus-group-mail-low ((,class (:foreground ,butter-2))))
   `(gnus-header-content ((,class (:weight normal :foreground ,tron-butter))))
   `(gnus-header-from ((,class (:foreground ,butter-2))))
   `(gnus-header-subject ((,class (:foreground ,cham-1))))
   `(gnus-header-name ((,class (:foreground ,tron-seruline))))
   `(gnus-header-newsgroups ((,class (:foreground ,choc-2))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,tron-seruline))))
   `(message-header-cc ((,class (:foreground ,tron-butter))))
   `(message-header-other ((,class (:foreground ,tron-gray-light))))
   `(message-header-subject ((,class (:foreground ,tron-white))))
   `(message-header-to ((,class (:foreground ,tron-metal))))
   `(message-cited-text ((,class (:foreground ,tron-warm-metal))))
   `(message-separator ((,class (:foreground ,tron-plum-light))))
   ;; SMerge faces
   `(smerge-refined-change ((,class (:background ,tron-violette))))
   ;; Ediff faces
   `(ediff-current-diff-A ((,class (:background ,tron-metal))))
   `(ediff-fine-diff-A ((,class (:background ,tron-gray-light))))
   `(ediff-even-diff-A
     ((,class (:background ,tron-deep-olive :foreground ,tron-orange-pale))))
   `(ediff-odd-diff-A
     ((,class (:background ,tron-deep-olive :foreground ,tron-orange-pale))))
   `(ediff-current-diff-B ((,class (:background ,tron-teal-super))))
   `(ediff-fine-diff-B ((,class (:background ,tron-gray-light))))
   `(ediff-even-diff-B
     ((,class (:background ,tron-deep-olive :foreground ,tron-orange-pale))))
   `(ediff-odd-diff-B
     ((,class (:background ,tron-deep-olive :foreground ,tron-orange-pale))))
   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline ,tron-orange))))
   `(flyspell-incorrect ((,class (:underline ,tron-orange-hot))))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,tron-metal))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,tron-olive-greek))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,tron-berlin-night))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,tron-red-dark))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,tron-berlin-night))))
   `(semantic-tag-boundary-face ((,class (:overline ,tron-seruline))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,tron-red-dark)))))

  (custom-theme-set-variables
   'tron-dark
   `(ansi-color-names-vector
     [,tron-berlin-blue
      ,tron-orange-pale
      ,tron-gray-light
      ,tron-butter
      ,tron-seruline
      ,tron-plum-light ,tron-green ,tron-teal])))

(setq fancy-splash-image (expand-file-name "~/.emacs.d/themes/emac-tron-logo-600.png"))
(provide-theme 'tron-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; tron-dark-theme.el ends here
