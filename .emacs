
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-default-font "Inconsolata 12")
 
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.


;; Add jdee server dir
;(custom-set-variables
; '(jdee-server-dir "/Users/you/.emacs.d/jdee-server")))



(require 'ido)
(ido-mode t)

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-default 'cursor-type 'hbar)

(column-number-mode)

(show-paren-mode)

(global-hl-line-mode)

(winner-mode t)

(windmove-default-keybindings)



(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	       t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	       t)

(package-initialize)

(ac-config-default)


(global-undo-tree-mode)

(global-set-key (kbd "M-/") 'undo-tree-visualize)

(global-set-key (kbd "C-M-z") 'switch-window)

(global-set-key (kbd "M-q") 'ace-jump-mode)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(setq ido-use-faces t)

(ido-ubiquitous-mode)


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'moz)

;;; Usage
;; Run M-x moz-reload-mode to switch moz-reload on/off in the
;; current buffer.
;; When active, every change in the buffer triggers Firefox
;; to reload its current page.

(define-minor-mode moz-reload-mode
  "Moz Reload Minor Mode"
  nil " Reload" nil
  (if moz-reload-mode
      ;; Edit hook buffer-locally.
      (add-hook 'post-command-hook 'moz-reload nil t)
    (remove-hook 'post-command-hook 'moz-reload t)))

(defun moz-reload ()
  (when (buffer-modified-p)
    (save-buffer)
    (moz-firefox-reload)))

(defun moz-firefox-reload ()
(comint-send-string (inferior-moz-process) "BrowserReload();"))



(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)





;; Add jdee server dir
;(custom-set-variables
; '(jdee-server-dir "/Users/you/.emacs.d/jdee-server")))



(require 'ido)
(ido-mode t)

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-default 'cursor-type 'hbar)

(column-number-mode)

(show-paren-mode)

(global-hl-line-mode)

(winner-mode t)

(windmove-default-keybindings)



(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	       t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	       t)

(package-initialize)

(ac-config-default)


(global-undo-tree-mode)

(global-set-key (kbd "M-/") 'undo-tree-visualize)

(global-set-key (kbd "C-M-z") 'switch-window)

(global-set-key (kbd "M-q") 'ace-jump-mode)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(setq ido-use-faces t)

(ido-ubiquitous-mode)


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'moz)

;;; Usage
;; Run M-x moz-reload-mode to switch moz-reload on/off in the
;; current buffer.
;; When active, every change in the buffer triggers Firefox
;; to reload its current page.

(define-minor-mode moz-reload-mode
  "Moz Reload Minor Mode"
  nil " Reload" nil
  (if moz-reload-mode
      ;; Edit hook buffer-locally.
      (add-hook 'post-command-hook 'moz-reload nil t)
    (remove-hook 'post-command-hook 'moz-reload t)))

(defun moz-reload ()
  (when (buffer-modified-p)
    (save-buffer)
    (moz-firefox-reload)))

(defun moz-firefox-reload ()
(comint-send-string (inferior-moz-process) "BrowserReload();"))



(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)





;; Add jdee server dir
;(custom-set-variables
; '(jdee-server-dir "/Users/you/.emacs.d/jdee-server")))



(require 'ido)
(ido-mode t)

(menu-bar-mode -1)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(set-default 'cursor-type 'hbar)

(column-number-mode)

(show-paren-mode)

(global-hl-line-mode)

(winner-mode t)

(windmove-default-keybindings)



(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	       t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	       t)

(package-initialize)

(ac-config-default)


(global-undo-tree-mode)

(global-set-key (kbd "M-/") 'undo-tree-visualize)

(global-set-key (kbd "C-M-z") 'switch-window)

(global-set-key (kbd "M-q") 'ace-jump-mode)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(setq ido-use-faces t)

(ido-ubiquitous-mode)


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'moz)

;;; Usage
;; Run M-x moz-reload-mode to switch moz-reload on/off in the
;; current buffer.
;; When active, every change in the buffer triggers Firefox
;; to reload its current page.

(define-minor-mode moz-reload-mode
  "Moz Reload Minor Mode"
  nil " Reload" nil
  (if moz-reload-mode
      ;; Edit hook buffer-locally.
      (add-hook 'post-command-hook 'moz-reload nil t)
    (remove-hook 'post-command-hook 'moz-reload t)))

(defun moz-reload ()
  (when (buffer-modified-p)
    (save-buffer)
    (moz-firefox-reload)))

(defun moz-firefox-reload ()
(comint-send-string (inferior-moz-process) "BrowserReload();"))



(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))




(defun nolinum ()
  (global-linum-mode nil)
)
(add-hook 'org-mode-hook 'nolinum)
(global-linum-mode t)


(require 'spaceline-config)
(spaceline-emacs-theme)


(require 'org)  
(defun turn-on-visual-line-mode () (visual-line-mode 1))  
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)  
;;(global-visual-line-mode 1)

(global-unset-key (kbd "C-e"))

(global-set-key (kbd "C-e") 'end-of-line)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (badwolf)))
 '(custom-safe-themes
   (quote
    ("73e61fe221b483a29c82abbfbc0ad749e78e97053f9d2e29cd055e274dfa6e0b" "fc44a5f6c342e17e5cb6a1dafc18f7c75d89c18b0ad46d729e9e1705daff805b" "84e39ed4c552b75e1cb09458c140a9b025598002533456b4c27db31d27e1e0d7" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "a3d9167cc71f9b0c1e78cf4e1913e3853354fdb9cdf783095a75da37d3da7558" "7ceb8614e7d467cef6463de2728295851d0932d9e0601ba5d24c5880d84843d5" "54726b204bca001916977067ca4fcc23e24f554604f9d9e483748e4ff196e274" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "503385a618581dacd495907738719565243ab3e6f62fec8814bade68ef66e996" "b85fc9f122202c71b9884c5aff428eb81b99d25d619ee6fde7f3016e08515f07" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "1dd54ebd37bf5e7b2860a8d732eda48f5ad5e6b62a9b141cbe4c6f808e7deb26" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "a56a6bf2ecb2ce4fa79ba636d0a5cf81ad9320a988ec4e55441a16d66b0c10e0" "53a9ec5700cf2bb2f7059a584c12a5fdc89f7811530294f9eaf92db526a9fb5f" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" default)))
 '(fci-rule-color "#383838")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-sexp-background-color "#121212")
 '(jdee-server-dir "/home/andrew/myJars/")
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (ghc racket-mode buffer-move all-the-icons-gnus material-theme phoenix-dark-pink-theme flatui-theme geeknote htmlize atom-one-dark-theme subatomic256-theme spaceline-all-the-icons sublime-themes planet-theme ujelly-theme dracula-theme ac-emacs-eclim moz skewer-mode badwolf-theme zenburn-theme color-theme-solarized solarized-theme org-gcal org-dashboard org-ac nav lush-theme jdee java-imports javap-mode ido-hacks ido-ubiquitous ido-yes-or-no ido-vertical-mode switch-window ace-jump-mode git undo-tree auto-complete auto-correct)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))

(menu-bar-mode -1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
