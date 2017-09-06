(use-package company
  :config
  (progn
    (add-hook 'prog-mode-hook 'global-company-mode))) 

(use-package projectile  
  :init
  (setq projectile-sort-order 'recentf
	;;projectile-cache-file (concat zezin-cache-dir "projectile.cache")
	;;projectile-known-projects-file (concat zezin-cache-dir "projectile-bookmarks.eld")
	projectile-completion-system 'ivy)
  :config
  (projectile-global-mode))

(use-package ivy
  :config
  (progn
    (ido-mode -1) 
    (ivy-mode 1))) 

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)) 

(use-package counsel) 

 (use-package counsel-projectile
  :after counsel
  :bind (("M-p" . counsel-projectile) ("M-P" . counsel-projectile-switch-project)))

(use-package highlight-parentheses
  :init
  (progn
    (add-hook 'prog-mode-hook #'highlight-parentheses-mode))
  :config
  (set-face-attribute 'hl-paren-face nil :weight 'extra-bold)) 

(use-package inf-ruby
  :bind ("C-c i" . inf-ruby-console-rails)) 

(use-package robe
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  :config
  (robe-start)
  :bind ("C-s" . robe-jump)) 

(use-package neotree) 

(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root.")))) 

(global-set-key [f8] 'neotree-project-dir)

(use-package magit
  :bind(("M-s" . magit-status) ("M-i" . magit-init))) 

(use-package alchemist) 
(use-package rjsx-mode) 
