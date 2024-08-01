(setq doom-font (font-spec :family "Monaspace Neon Var" :size 16))

(setq doom-theme 'doom-ayu-dark)
(setq display-line-numbers-type 'relative)
(setq fancy-splash-image "~/.doom.d/dashboard.png")

(setq org-directory "~/org/")

(after! lsp-java

  (setq lombok-library-path (concat doom-data-dir "lombok.jar"))

  (unless (file-exists-p lombok-library-path)
    (url-copy-file "https://projectlombok.org/downloads/lombok.jar" lombok-library-path))

  (setq lsp-java-vmargs '("-XX:+UseParallelGC" "-XX:GCTimeRatio=4" "-XX:AdaptiveSizePolicyWeight=90" "-Dsun.zip.disableMemoryMapping=true" "-Xmx4G" "-Xms100m"))

  (push (concat "-javaagent:"
                (expand-file-name lombok-library-path))
        lsp-java-vmargs)
  )

(require 'lsp-mode)
(add-hook 'gleam-ts-mode-hook #'lsp)
(add-to-list 'auto-mode-alist '("\\.gleam\\'" . gleam-ts-mode))

(setq lsp-clients-angular-language-server-command
      '("node"
        "/opt/homebrew/lib/node_modules/@angular/language-server"
        "--ngProbeLocations"
        "/opt/homebrew/lib/node_modules"
        "--tsProbeLocations"
        "/opt/homebrew/lib/node_modules"
        "--stdio"))

(map! :n "]d" #'flycheck-next-error)
(map! :n "[d" #'flycheck-previous-error)
(map! :leader "cX" #'list-flycheck-errors)

(defun my/lsp-check-src-files ()
  "Open all files in the src directory and check for errors using LSP."
  (interactive)
  (let* ((project-root (projectile-project-root))
         (src-dir (expand-file-name "src" project-root))
         (src-files (directory-files-recursively src-dir "\\.\\(js\\|ts\\|html\\)$"))) ; Adjust the regex for your file types
    (dolist (file-path src-files)
      (with-current-buffer (find-file file-path)
        (lsp)))))

(setq shell-file-name (executable-find "bash"))
(setq-default vterm-shell (executable-find "fish"))
(setq-default explicit-shell-file-name (executable-find "fish"))

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))
(use-package! gptel
  :config
  (setq! gptel-api-key "")
  (setq! gptel-model "gpt-4o"))
(setq! copilot-idle-delay 0.1)
