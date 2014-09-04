(global-linum-mode 1)
(column-number-mode 1)
(blink-cursor-mode -1)
(transient-mark-mode -1)
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
(define-key evil-insert-state-map [remap newline] 'evil-ret-and-indent)
;; set solarized theme
(load-theme 'solarized-light t)
;; enable autocomplete
(auto-complete-mode 1)
;; enable electir pair mode
(electric-pair-mode 1)
;; setup jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;; flycheck hook
(add-hook 'after-init-hook
(lambda ()
(add-hook 'prog-mode-hook 'flycheck-mode)))
;; enable execppathfromshell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
