(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
'(indent-tabs-mode nil)
'(js-indent-level 2)
'(c-basic-offset 2)

'(cua-mode t nil (cua-base)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; General non-SML-specific settings that are appropriate follow - feel
;; free to comment these out if you don't like them.

;; Turns on syntax highlighting for all files for which emacs knows how to
;; highlight.
(global-font-lock-mode t)

;; Makes the space between the "mark" and the "point" be highlighted -
;; essentially, emacs' notion of the "currently selected text". This is
;; probably what you expect if you're coming from another text editor.
(transient-mark-mode t)

;; Removes trailing whitespace from your lines before saving
;; files. Trailing whitespace is the devil.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files
(setq line-move-visual nil) ; use \xc3\xa2\xe2\x82\xac\xc5\x93t\xc3\xa2\xe2\x82\xac\xc2\x9d for true, \xc3\xa2\xe2\x82\xac\xc5\x93nil\xc3\xa2\xe2\x82\xac\xc2\x9d for false
(setq column-number-mode t); turns column numbers on


;; Makes sure your files end in a newline before saving them. Terminating
;; newlines are a Good Idea.
(setq require-final-newline t)
(setq split-height-threshold nil)


(menu-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-splash-screen t)
(setq indent-tabs-mode nil)
(setq tab-width 2)
(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-word (- arg)))

(dolist (cmd '(delete-word backward-delete-word))
  (put cmd 'CUA 'move))

(global-set-key (read-kbd-macro "\C-w") 'backward-delete-word)
