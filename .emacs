
;; 关闭启动画面
(setq inhibit-startup-message t)

;; 设置默认mode为text-mode
(setq default-major-mode 'text-mode)

;;在标题栏提示你目前所在位置.
(setq frame-title-format '("Emacs@"system-name": %b %+%+ %f"))

;;不产生备份文件
(setq make-backup-files nil)

(show-paren-mode t)
(setq show-paren-style 'parentheses)

(add-to-list 'load-path "~/.emacs.d/ruby")
(autoload 'ruby-mode "ruby-mode"
      "Mode for editing ruby source files" t)
    (setq auto-mode-alist
          (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
    (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                  interpreter-mode-alist))


(autoload 'run-ruby "inf-ruby"
      "Run an inferior Ruby process")
    (autoload 'inf-ruby-keys "inf-ruby"
      "Set local key defs for inf-ruby in ruby-mode")
    (add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-keys)
    ))

(add-to-list 'load-path "~/.emacs.d/emacs-rails")

(require 'rails)
(require 'find-recursive)

(add-to-list 'load-path "~/.emacs.d")
(require 'tabbar)
;;(global-set-key [(control f10)] 'tabbar-local-mode)
(global-set-key [(control f10)] 'tabbar-mode)
(global-set-key [(control shift tab)] 'tabbar-backward)
(global-set-key [(control tab)]       'tabbar-forward)


(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(load-file "~/.emacs.d/color-theme/color-theme.el")
(load-file "~/.emacs.d/color-theme/themes/color-theme-library.el")
;;(color-theme-gnome2)
(color-theme-kingsajz)

(put 'scroll-left 'disabled nil)

;;(add-to-list 'load-path "~/.emacs.d/cedet")
;;(load-file "~/.emacs.d/cedet/common/cedet.el")
;;(global-ede-mode t)
;;(semantic-load-enable-code-helpers)
;;(global-srecode-minor-mode 1)


;;(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
;;(global-ede-mode t)

;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)

;;(load "desktop")
;;(desktop-load-default)
;;(desktop-read)

;;(require 'ibuffer)

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(quack-programs (quote ("scm" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mzscheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
 '(rails-ws:default-server-type "webrick")
 '(speedbar-default-position (quote right)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Replace $RSENSE_HOME with the directory where RSense was installed in full path
;; Example for UNIX-like systems
;; (setq rsense-home "/home/jim/opt/rsense-0.2")
;; or
;; (setq rsense-home (expand-file-name "~/opt/rsense-0.2"))
;; Example for Windows
;; (setq rsense-home "C:\\rsense-0.2")
;;(setq rsense-home "$RSENSE_HOME")
;;(setq rsense-home "/home/jim/opt/rsense-0.2")
;;(add-to-list 'load-path (concat rsense-home "/etc"))
;;(require 'rsense)

(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;(define-key ac-mode-map (kdb "M-TAB") 'auto-complete)


;;使用Dired
(add-hook 'dired-load-hook
               (lambda ()
                 (load "dired-x")
                 ;; Set dired-x global variables here.  For example:
                 ;; (setq dired-guess-shell-gnutar "gtar")
                 ;; (setq dired-x-hands-off-my-keys nil)
                 ))
     (add-hook 'dired-mode-hook
               (lambda ()
                 ;; Set dired-x buffer-local variables here.  For example:
                 ;; (dired-omit-mode 1)
                 ))


(define-key global-map "\C-x\C-j" 'dired-jump)
(define-key global-map "\C-x4\C-j" 'dired-jump-other-window)


(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;;;(when
;;;    (load
;;;     (expand-file-name "~/.emacs.d/elpa/package.el"))
;;;  (package-initialize))



(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)

;; Whether installed through ELPA or from source you probably want to
;; add the following lines to your .emacs file:

;; ;; ido
(require 'ido)
(ido-mode t)

;; MuMaMo-Mode for rhtml files
;;     (add-to-list 'load-path "~/.emacs.d/nxhtml/util")
;;     (require 'mumamo-fun)
;;     (setq mumamo-chunk-coloring 'submode-colored)
;;     (add-to-list 'auto-mode-alist '("\\.rhtml\\'" . eruby-html-mumamo))
;;     (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-html-mumamo)


;;; nxml (HTML ERB template support)
;;     (load "~/.emacs.d/nxhtml/autostart.el")

;;     (setq
;;      nxhtml-global-minor-mode t
;;      mumamo-chunk-coloring 'submode-colored
;;      nxhtml-skip-welcome t
;;      indent-region-mode t
;;      rng-nxml-auto-validate-flag nil
;;      nxml-degraded t)
;;     (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;;; rhtml mode
(add-to-list 'load-path "~/.emacs.d/rhtml")
     (require 'rhtml-mode)
     (add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))


(require 'ruby-block)
(ruby-block-mode t)
;; do overlay
(setq ruby-block-highlight-toggle 'overlay)
;; display to minibuffer
(setq ruby-block-highlight-toggle 'minibuffer)
;; display to minibuffer and do overlay
(setq ruby-block-highlight-toggle t)

;;代码折叠
(add-hook 'ruby-mode-hook 'hs-minor-mode)

;;filladapt
(require 'filladapt)

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'yasnippet-bundle)

(add-hook 'html-mode-hook
 (lambda ()
 (define-key html-mode-map (kbd "<M-left>") 'sgml-skip-tag-backward)
 (define-key html-mode-map (kbd "<M-right>") 'sgml-skip-tag-forward)
 )
)


;; 代码块注释
(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "\C-c#" 'comment-or-uncomment-region)
            )
          )

;; 单行代码注释
(defadvice comment-or-uncomment-region (before slick-comment activate compile)
  "When called interactively with no active region, comment a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; Erlang mode
(setq load-path (cons "/home/jim/otp_r14b02/lib/tools-2.6.6.3/emacs"
                      load-path))
(setq erlang-root-dir "/home/jim/otp_r14b02")
(setq exec-path (cons "/home/jim/otp_r14b02/bin" exec-path))
(require 'erlang-start)

;; This is needed for Distel setup
(let ((distel-dir "/home/jim/.emacs.d/distel/elisp"))
  (unless (member distel-dir load-path)
    ;; Add distel-dir to the end of load-path
    (setq load-path (append load-path (list distel-dir)))))

(require 'distel)
(distel-setup)

(require 'haml-mode)
(add-hook 'haml-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(require 'quack)

(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode/")
(require 'coffee-mode)
