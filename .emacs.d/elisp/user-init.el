(require 'user-init-ag)
(require 'user-init-applescript)
(require 'user-init-autocomplete)
(require 'user-init-backup)
(require 'user-init-bat)
(require 'user-init-bind-key)
(require 'user-init-browse-apropose-url)
(require 'user-init-calc)
(require 'user-init-client-server)
(require 'user-init-cmake)
(require 'user-init-compilation)
(require 'user-init-csharp)
(require 'user-init-ctags)
(require 'user-init-darwin)
(require 'user-init-diary)
(require 'user-init-dired-x)
(require 'user-init-editorconfig)
(require 'user-init-ffap)
(require 'user-init-free-keys)
(require 'user-init-git-jump)
(require 'user-init-go)
(require 'user-init-google)
(require 'user-init-groovy)
(require 'user-init-helm)
(require 'user-init-html-helper)
(require 'user-init-j2)
(require 'user-init-java)
(require 'user-init-json)
(require 'user-init-ledger)
(require 'user-init-longlines)
(require 'user-init-malabar)
(require 'user-init-markdown)
(require 'user-init-microsoft-windows)
(require 'user-init-nsis)
(require 'user-init-nxml)
(require 'user-init-org)
(require 'user-init-org-crypt)
(require 'user-init-pbcopy)
(require 'user-init-pcomplete)
(require 'user-init-perl)
(require 'user-init-php)
(require 'user-init-powershell)
(require 'user-init-projectile)
(require 'user-init-puppet)
(require 'user-init-python)
(require 'user-init-random)
(require 'user-init-recentf)
(require 'user-init-request)
(require 'user-init-shell)
(require 'user-init-streambox)
(require 'user-init-terraform)
(require 'user-init-tidy-xml)
(require 'user-init-vlc)
(require 'user-init-wikipedia)
(require 'user-init-winner)
(require 'user-init-xquery)
(require 'user-init-yaml)
(require 'user-init-yasnippet)

;(require 'user-init-window-numbering)
;(require 'user-init-winring)

(setq-default TeX-master t)
(setq-default auto-mode-case-fold t)
(setq-default column-number-mode t)
(setq-default default-fill-column 72)
(setq-default delete-by-moving-to-trash t)
(setq-default display-buffer-reuse-frames t)
(setq-default enable-recursive-minibuffers t)
(setq-default encoding 'utf-8)
(setq-default global-font-lock-mode t)
(setq-default inhibit-startup-message t)
(setq-default initial-scratch-message "")
(setq-default large-file-warning-threshold 40000000)
(setq-default lexical-binding t)
(setq-default menu-bar-mode nil)
(setq-default require-final-newline t)
(setq-default ring-bell-function 'ignore)
(setq-default scroll-bar-mode nil)
(setq-default scroll-preserve-screen-position 1)
(setq-default sentence-end-double-space nil)
(setq-default split-height-threshold nil)
(setq-default split-width-threshold 0)
(setq-default truncate-lines t)
(setq-default visible-bell t)
(setq-default indent-tabs-mode nil)

(put 'upcase-region 'disabled nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'user-init)
