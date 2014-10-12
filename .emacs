(push "~/.emacs.d/evil" load-path)
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/")

(load "key-chord.el")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "kj" 'evil-normal-state)

(load "undo-tree.el")

;; swap keys
(define-key key-translation-map ":" ";")
(define-key key-translation-map ";" ":")

