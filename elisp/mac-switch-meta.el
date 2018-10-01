;; Keybonds
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
;; (global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
		(lambda () (interactive) (delete-window)))
(global-set-key [(hyper z)] 'undo)
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)
;; mac switch meta key
(defun mac-switch-meta nil
  "switch meta between Option and Command"
  (interactive)
  (if (eq mac-option-modifier 'hyper)
      (progn
	(setq mac-option-modifier 'meta)
	(setq mac-command-modifier 'hyper)
	)
    (progn
      (setq mac-option-modifier 'hyper)
      (setq mac-command-modifier 'meta)
      )
    )
    )
