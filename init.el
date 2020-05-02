
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-packages)


;; 关闭顶底声音
(setq ring-bell-function 'ignore)

;; 将init.el绑定到快捷键F5
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f5>") 'open-init-file)

;;display all screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; close the tool bar(关闭工具栏)
(tool-bar-mode -1)

;;\ 用短名字替代长名字
;;| (abbrev-mode -1)
;;| (define-abbrev-table 'global-abbrev-table '(
;;|					    ;; signature
;;|					    ("short-name" "longlongname")
;;/					    ))

(global-auto-revert-mode t)

;; 关闭启动画面
(setq inhibit-splash-screen t)

;; display line numbers（行号显示）
(global-linum-mode 1)




;; 关闭自动备份功能.~后缀的文件
(setq make-backup-files nil)
;; (关闭自动保存副本)
;; (setq auto-save-default nil)

;; common cursor
(setq-default cursor-type 'bar)

;; Syntax highlighting in the document.org
(require 'org)
(setq org-src-fontify-natively t)

;; 替代当前选中的字符
(delete-selection-mode t)

;; 括号展示
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 显示高亮当前行
(global-hl-line-mode)

;; 解决org文件卡顿问题
(dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Microsoft YaHei" :size 18)))

;; config org日程mode
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c c") 'org-capture)




;; preview the recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; no make backup: (setq make-backfile-files nill)









(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;-------------------------------------------------------------------------------------------------;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("83ae405e25a0a81f2840bfe5daf481f74df0ddb687f317b5e005aa61261126e9" default)))
 '(package-selected-packages (quote (monokai-theme org company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


