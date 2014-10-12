(push "~/.emacs.d/evil" load-path)
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/")

(load "key-chord.el")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "kj" 'evil-normal-state)

(load "undo-tree.el")

(load "dash.el")
(load "solarized.el")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; swap keys
(define-key key-translation-map ":" ";")
(define-key key-translation-map ";" ":")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
