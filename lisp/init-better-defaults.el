;; 关闭顶底声音
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

;;\ 用短名字替代长名字
;;| (abbrev-mode -1)
;;| (define-abbrev-table 'global-abbrev-table '(
;;|					    ;; signature
;;|					    ("short-name" "longlongname")
;;/					    ))



;;cl - Common lisp Extension
;;(require 'cl)

;; 关闭自动备份功能.~后缀的文件
(setq make-backup-files nil)
;; (关闭自动保存副本)
(setq auto-save-default nil)

;; preview the recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 括号展示
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 自动换行
(global-visual-line-mode 1)

;; 解决org文件字体卡顿问题
(if(display-graphic-p)(dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Microsoft YaHei" :size 18))))

;; 替代当前选中的字符
(delete-selection-mode t)
(set-face-background 'hl-line "#285817")
;;(set-face-background 'hl-line "#3e4446")
;;设置任何颜色与背景色面对当前行
;;(set-face-foreground 'highlight nil)

;;使Emacs在终端显示正确的颜色
(defun terminal-init-gnome ()
"Terminal initialization function for gnome-terminal."
 ;; This is a dirty hack that I accidentally stumbled across:
 ;; initializing"rxvt" first and _then_"xterm" seems
 ;; to make the colors work... although I have no idea why.
 (tty-run-terminal-initialization (selected-frame)"rxvt")
 (tty-run-terminal-initialization (selected-frame)"xterm"))

;; no make backup:(setq make-backfile-files nil)

(provide 'init-better-defaults)
