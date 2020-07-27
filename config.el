;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Remember, you do not need to run 'doom refresh' after modifying this file!

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Louis Pearson"
      user-mail-address "louispearson@librem.one")

(setq doom-font (font-spec :family "monospace" :size 14))
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
;; Why?
(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)

(map! :nv "C-c +" 'evil-numbers/inc-at-pt)
(map! :nv "C-c -" 'evil-numbers/dec-at-pt)

(setq auto-mode-alist (cons '("\\.dsp$" . faust-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.svelte$" . svelte-mode) auto-mode-alist))
(setq browse-url-browser-function 'browse-url-firefox)
(setq tramp-default-method "ssh")

;; Easy hugo
(setq easy-hugo-basedir "~/repos/desttinghim/desttinghim.gitlab.io/")
(setq easy-hugo-url "https://desttinghim.name")
(setq easy-hugo-sshdomain "ssh.phx.nearlyfreespeech.net")
(setq easy-hugo-root "/home/public")
(setq easy-hugo-previewtime "300")
;; easy hugo is definitely not designed for vim and the way it tries to help you
;; edit posts makes this very clear. I'll need to fiddle with it more to figure
;; out if it will be a good match at all.
(map! :map global-map :nv "C-c C-e" 'easy-hugo)
(map! :map easy-hugo-mode-map
      :nivm "n" 'easy-hugo-newpost
      :nivm "D" 'easy-hugo-article
      :nivm "p" 'easy-hugo-preview
      :nivm "P" 'easy-hugo-publish
      :nivm "o" 'easy-hugo-open
      :nivm "d" 'easy-hugo-delete
      :nivm "e" 'easy-hugo-open
      :nivm "c" 'easy-hugo-open-config
      :nivm "f" 'easy-hugo-open
      :nivm "N" 'easy-hugo-no-help
      :nivm "v" 'easy-hugo-view
      :nivm "r" 'easy-hugo-refresh
      :nivm "g" 'easy-hugo-refresh
      :nivm "s" 'easy-hugo-sort-time
      :nivm "S" 'easy-hugo-sort-char
      :nivm "G" 'easy-hugo-github-deploy
      :nivm "A" 'easy-hugo-amazon-s3-deploy
      :nivm "C" 'easy-hugo-google-cloud-storage-deploy
      :nivm "q" 'evil-delete-buffer
      :nivm "TAB" 'easy-hugo-open
      :nivm "RET" 'easy-hugo-preview)
