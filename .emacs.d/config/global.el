(setq use-package-always-ensure t) 

(setq package-enable-at-startup nil)
(package-initialize)

(require 'evil)
(evil-mode 1)
(global-linum-mode 1)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq backup-by-copying t
      version-control t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      backup-directory-alist `((".*" . ,(expand-file-name "bkp.cache/" user-emacs-directory)))
      auto-save-file-name-transforms `((".*" ,(expand-file-name "bkp.cache/" user-emacs-directory) t))) 

;; Interlocking
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html
(setq create-lockfiles nil) 

(use-package exec-path-from-shell
  ;;:init
  ;;(setq exec-path-from-shell-arguments (list "-l"))
  :config (when (memq window-system '(mac ns x nil))
	    (exec-path-from-shell-initialize)))

(define-coding-system-alias 'UTF-8 'utf-8)
