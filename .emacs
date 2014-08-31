(global-linum-mode 1)
(column-number-mode 1)
(blink-cursor-mode -1)
;; set ido
(require 'ido)
(ido-mode t)
(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
'("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
'("marmalade" . "http://marmalade-repo.org/packages/"))
;; Add MELPA repository
(add-to-list 'package-archives
'("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
;; enable evil mode
(evil-mode 1)
;; enable autocomplete
(add-hook 'python-mode-hook 'auto-complete-mode)
;; set solarized theme
(load-theme 'solarized-light t)
;;; Hooks
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'autopair-global-mode)
;; flycheck hook
(add-hook 'after-init-hook
(lambda ()
(add-hook 'prog-mode-hook 'flycheck-mode)))
