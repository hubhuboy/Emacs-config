;; close the tool bar(关闭工具栏)
(tool-bar-mode -1)
;; 关闭启动画面
(setq inhibit-splash-screen t)
;; display line numbers（行号显示）
(global-linum-mode 1)
;; common cursor(光标)
(setq-default cursor-type 'bar)
;;display all screen
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 显示高亮当前行
(global-hl-line-mode)


(provide 'init-ui)
