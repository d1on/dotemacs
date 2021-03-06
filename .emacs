(push "~/.emacs.d/evil" load-path)
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/")
;;
;; Swap Keys
;; 
(load "key-chord.el")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "kj" 'evil-normal-state)
;;
;; Undo Tree
;; 
(load "undo-tree.el")
;;
;; Themes
;; 
(load "dash.el")
(load "solarized.el")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'solarized-dark)
;;
;; Plugins
;; 
(load "evil-visualstar.el")
(load "evil-jumper.el")
(load "evil-surround.el")
(load "evil-leader.el")
(load "evil-nerd-commenter.el")
;; ",," is the default value of evilnc-hotkey-comment-operator,
;; so below line is NOT needed.
;; But please put it *ABOVE* the (require 'evil-nerd-commenter)!!!
;; Please note if you use evil-leader, (setq evilnc-hotkey-comment-operator "\\\\")
;; does NOT work! You need set up the hot key for command "evilnc-comment-operator" directly.
;; Check the end of README for sample setup
(setq evilnc-hotkey-comment-operator ",,")
(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)
;;
;; Evil Matchit
;; 
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;;
;; ace jump mode major function
;; 
(load "ace-jump-mode.el")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;;If you use evil
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)



;; swap keys
(define-key key-translation-map ":" ";")
(define-key key-translation-map ";" ":")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
