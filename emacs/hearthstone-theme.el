;;; hearthstone-theme.el --- Hearthstone dark colour theme -*- lexical-binding: t -*-

;; Author: Jackson Hughes
;; URL: https://github.com/jackson-hughes/hearthstone-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, theme, dark

;;; Commentary:
;; Dark theme. Warm charcoal base derived from hsl(60, 2%, n%).
;; Earthy syntax palette — orange, mauve, sage, steel, rose.
;; All syntax colours pass WCAG AA contrast on the editor background.

;;; Code:

(deftheme hearthstone "Hearthstone dark colour theme.")

(let (
  ;; ── Backgrounds ──────────────────────────────────────────────
  (bg-editor    "#1c1c1b")   ; editor surface
  (bg-base      "#1f1f1e")   ; base / terminal
  (bg-panel     "#212120")   ; sidebar / panels
  (bg-hl        "#252523")   ; active line
  (bg-hl2       "#2e2e2c")   ; selection / secondary highlight

  ;; ── Text tiers ───────────────────────────────────────────────
  (fg-primary   "#f8f8f6")   ; primary text        16:1 AAA
  (fg-inactive  "#c3c2b7")   ; inactive / muted    9.5:1 AAA
  (fg-punct     "#888884")   ; operators / punctuation  ~5:1 AA
  (fg-comment   "#686866")   ; comments            3.1:1
  (fg-chrome    "#6a6a68")   ; line numbers / chrome labels

  ;; ── Syntax accents ───────────────────────────────────────────
  (orange       "#e07838")   ; functions / types   5.6:1 AA
  (orange-dim   "#c05828")   ; darker orange for contrast
  (orange-bright "#f09848")  ; brighter orange
  (mauve        "#b888c8")   ; keywords / control  6.0:1 AA
  (mauve-bright "#c8a0d8")   ; brighter mauve
  (sage         "#a0c088")   ; strings / literals  8.3:1 AAA
  (sage-bright  "#b8d0a0")   ; brighter sage
  (steel        "#7a8a9a")   ; variables / params  4.8:1 AA
  (rose         "#c86878")   ; errors / warnings   4.6:1 AA
  (rose-bright  "#d898a8")   ; brighter rose

  ;; ── Borders & misc ───────────────────────────────────────────
  (border       "#2a2a28")
  (border-dim   "#252523")
  (cursor       "#e07838")
  )

  (custom-theme-set-faces
   'hearthstone

   ;; ── Core faces ───────────────────────────────────────────────
   `(default                          ((t (:foreground ,fg-primary :background ,bg-editor))))
   `(cursor                           ((t (:background ,cursor))))
   `(fringe                           ((t (:foreground ,fg-chrome :background ,bg-editor))))
   `(minibuffer-prompt                ((t (:foreground ,orange :weight bold))))
   `(region                           ((t (:background ,bg-hl2 :extend t))))
   `(secondary-selection              ((t (:background ,bg-hl2))))
   `(highlight                        ((t (:background ,bg-hl))))
   `(lazy-highlight                   ((t (:background ,bg-hl2 :foreground ,fg-primary))))
   `(match                            ((t (:background ,bg-hl :foreground ,orange))))
   `(trailing-whitespace              ((t (:background ,rose))))
   `(escape-glyph                     ((t (:foreground ,sage-bright))))
   `(homoglyph                        ((t (:foreground ,sage-bright))))
   `(nobreak-hyphen                   ((t (:foreground ,sage-bright))))
   `(nobreak-space                    ((t (:underline t))))
   `(button                           ((t (:foreground ,sage :underline t))))
   `(link                             ((t (:foreground ,sage :underline t))))
   `(link-visited                     ((t (:foreground ,mauve :underline t))))
   `(error                            ((t (:foreground ,rose :weight bold))))
   `(warning                          ((t (:foreground ,orange))))
   `(success                          ((t (:foreground ,sage))))

   ;; ── Line numbers ─────────────────────────────────────────────
   `(line-number                      ((t (:foreground ,fg-chrome :background ,bg-editor))))
   `(line-number-current-line         ((t (:foreground ,fg-inactive :background ,bg-hl :weight normal))))
   `(line-number-major-tick           ((t (:foreground ,fg-inactive :background ,bg-hl))))
   `(line-number-minor-tick           ((t (:foreground ,fg-chrome :background ,bg-editor))))

   ;; ── Mode line ─────────────────────────────────────────────────
   `(mode-line                        ((t (:foreground ,fg-inactive :background ,bg-panel
                                          :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive               ((t (:foreground ,fg-chrome :background ,bg-base
                                          :box (:line-width 1 :color ,border-dim)))))
   `(mode-line-buffer-id              ((t (:foreground ,fg-primary :weight bold))))
   `(mode-line-emphasis               ((t (:foreground ,fg-primary :weight bold))))
   `(mode-line-highlight              ((t (:background ,bg-hl))))

   ;; ── Header line ──────────────────────────────────────────────
   `(header-line                      ((t (:foreground ,fg-inactive :background ,bg-panel
                                          :box (:line-width 1 :color ,border)))))
   `(header-line-highlight            ((t (:background ,bg-hl))))

   ;; ── Window dividers ──────────────────────────────────────────
   `(vertical-border                  ((t (:foreground ,border))))
   `(window-divider                   ((t (:foreground ,border))))
   `(window-divider-first-pixel       ((t (:foreground ,border))))
   `(window-divider-last-pixel        ((t (:foreground ,border))))

   ;; ── Font lock (syntax) ───────────────────────────────────────
   `(font-lock-comment-face           ((t (:foreground ,fg-comment :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fg-comment :slant italic))))
   `(font-lock-doc-face               ((t (:foreground ,fg-comment :slant italic))))
   `(font-lock-doc-string-face        ((t (:foreground ,fg-comment :slant italic))))
   `(font-lock-string-face            ((t (:foreground ,sage))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sage :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sage-bright))))
   `(font-lock-keyword-face           ((t (:foreground ,mauve))))
   `(font-lock-builtin-face           ((t (:foreground ,orange))))
   `(font-lock-function-name-face     ((t (:foreground ,orange))))
   `(font-lock-function-call-face     ((t (:foreground ,orange))))
   `(font-lock-variable-name-face     ((t (:foreground ,steel))))
   `(font-lock-variable-use-face      ((t (:foreground ,steel))))
   `(font-lock-type-face              ((t (:foreground ,orange))))
   `(font-lock-constant-face          ((t (:foreground ,sage))))
   `(font-lock-number-face            ((t (:foreground ,sage))))
   `(font-lock-property-name-face     ((t (:foreground ,orange))))
   `(font-lock-property-use-face      ((t (:foreground ,orange))))
   `(font-lock-operator-face          ((t (:foreground ,fg-punct))))
   `(font-lock-punctuation-face       ((t (:foreground ,fg-punct))))
   `(font-lock-bracket-face           ((t (:foreground ,fg-punct))))
   `(font-lock-delimiter-face         ((t (:foreground ,fg-punct))))
   `(font-lock-escape-face            ((t (:foreground ,sage-bright))))
   `(font-lock-misc-punctuation-face  ((t (:foreground ,fg-punct))))
   `(font-lock-negation-char-face     ((t (:foreground ,rose))))
   `(font-lock-preprocessor-face      ((t (:foreground ,mauve))))
   `(font-lock-warning-face           ((t (:foreground ,orange :weight bold))))

   ;; ── Search & isearch ─────────────────────────────────────────
   `(isearch                          ((t (:foreground ,bg-editor :background ,orange))))
   `(isearch-fail                     ((t (:foreground ,fg-primary :background ,rose))))
   `(isearch-group-1                  ((t (:foreground ,bg-editor :background ,sage))))
   `(isearch-group-2                  ((t (:foreground ,bg-editor :background ,mauve))))
   `(query-replace                    ((t (:foreground ,bg-editor :background ,orange))))

   ;; ── Completions ──────────────────────────────────────────────
   `(completions-common-part          ((t (:foreground ,orange))))
   `(completions-first-difference     ((t (:foreground ,fg-primary :weight bold))))
   `(completions-annotations          ((t (:foreground ,fg-chrome :slant italic))))

   ;; ── Diffs ────────────────────────────────────────────────────
   `(diff-header                      ((t (:foreground ,fg-inactive :background ,bg-panel))))
   `(diff-file-header                 ((t (:foreground ,orange :background ,bg-panel :weight bold))))
   `(diff-hunk-header                 ((t (:foreground ,mauve :background ,bg-panel))))
   `(diff-added                       ((t (:foreground ,sage :background "#a0c08818" :extend t))))
   `(diff-removed                     ((t (:foreground ,rose :background "#c8687818" :extend t))))
   `(diff-changed                     ((t (:foreground ,orange :background "#e0783818" :extend t))))
   `(diff-indicator-added             ((t (:foreground ,sage))))
   `(diff-indicator-removed           ((t (:foreground ,rose))))
   `(diff-refine-added                ((t (:foreground ,sage :background "#a0c08835" :weight bold))))
   `(diff-refine-removed              ((t (:foreground ,rose :background "#c8687835" :weight bold))))

   ;; ── Hl-line ──────────────────────────────────────────────────
   `(hl-line                          ((t (:background ,bg-hl :extend t))))

   ;; ── Paren matching ───────────────────────────────────────────
   `(show-paren-match                 ((t (:foreground ,orange :background ,bg-hl :weight bold))))
   `(show-paren-mismatch              ((t (:foreground ,fg-primary :background ,rose :weight bold))))
   `(show-paren-match-expression      ((t (:background ,bg-hl2))))

   ;; ── Dired ────────────────────────────────────────────────────
   `(dired-directory                  ((t (:foreground ,orange :weight bold))))
   `(dired-flagged                    ((t (:foreground ,rose))))
   `(dired-header                     ((t (:foreground ,mauve :weight bold))))
   `(dired-ignored                    ((t (:foreground ,fg-chrome))))
   `(dired-mark                       ((t (:foreground ,sage))))
   `(dired-marked                     ((t (:foreground ,sage :weight bold))))
   `(dired-perm-write                 ((t (:foreground ,orange))))
   `(dired-symlink                    ((t (:foreground ,sage :slant italic))))

   ;; ── Magit ────────────────────────────────────────────────────
   `(magit-branch-local               ((t (:foreground ,sage))))
   `(magit-branch-remote              ((t (:foreground ,sage-bright))))
   `(magit-branch-current             ((t (:foreground ,sage :weight bold))))
   `(magit-tag                        ((t (:foreground ,orange))))
   `(magit-hash                       ((t (:foreground ,fg-chrome))))
   `(magit-log-author                 ((t (:foreground ,orange))))
   `(magit-log-date                   ((t (:foreground ,fg-inactive))))
   `(magit-log-graph                  ((t (:foreground ,fg-chrome))))
   `(magit-process-ok                 ((t (:foreground ,sage :weight bold))))
   `(magit-process-ng                 ((t (:foreground ,rose :weight bold))))
   `(magit-section-heading            ((t (:foreground ,orange :weight bold))))
   `(magit-section-heading-selection  ((t (:foreground ,orange-bright :weight bold))))
   `(magit-section-highlight          ((t (:background ,bg-hl :extend t))))
   `(magit-section-secondary-heading  ((t (:foreground ,mauve :weight bold))))
   `(magit-diff-file-heading          ((t (:foreground ,fg-primary :weight bold))))
   `(magit-diff-file-heading-highlight ((t (:foreground ,fg-primary :background ,bg-hl :weight bold))))
   `(magit-diff-hunk-heading          ((t (:foreground ,fg-inactive :background ,bg-panel))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,fg-primary :background ,bg-hl))))
   `(magit-diff-added                 ((t (:foreground ,sage :background "#a0c08815" :extend t))))
   `(magit-diff-removed               ((t (:foreground ,rose :background "#c8687815" :extend t))))
   `(magit-diff-context               ((t (:foreground ,fg-inactive :extend t))))
   `(magit-diff-added-highlight       ((t (:foreground ,sage :background "#a0c08825" :extend t))))
   `(magit-diff-removed-highlight     ((t (:foreground ,rose :background "#c8687825" :extend t))))
   `(magit-diff-context-highlight     ((t (:foreground ,fg-primary :background ,bg-hl :extend t))))
   `(magit-diff-base                  ((t (:foreground ,orange :background "#e0783815" :extend t))))
   `(magit-diff-base-highlight        ((t (:foreground ,orange :background "#e0783825" :extend t))))
   `(magit-diffstat-added             ((t (:foreground ,sage))))
   `(magit-diffstat-removed           ((t (:foreground ,rose))))
   ;; Magit revision metadata labels (Author:, Commit:, Date: etc)
   `(magit-keyword                    ((t (:foreground ,mauve))))
   `(magit-keyword-squash             ((t (:foreground ,orange :weight bold))))
   `(magit-header-line                ((t (:foreground ,fg-primary :weight bold))))
   `(magit-header-line-log-select     ((t (:foreground ,orange :weight bold))))
   `(magit-filename                   ((t (:foreground ,fg-primary))))

   ;; ── Org mode ─────────────────────────────────────────────────
   `(org-document-title               ((t (:foreground ,orange :weight bold :height 1.3))))
   `(org-document-info                ((t (:foreground ,fg-inactive))))
   `(org-document-info-keyword        ((t (:foreground ,fg-chrome))))
   `(org-level-1                      ((t (:foreground ,orange :weight bold :height 1.2))))
   `(org-level-2                      ((t (:foreground ,mauve :weight bold :height 1.1))))
   `(org-level-3                      ((t (:foreground ,sage :weight bold))))
   `(org-level-4                      ((t (:foreground ,steel :weight bold))))
   `(org-level-5                      ((t (:foreground ,orange))))
   `(org-level-6                      ((t (:foreground ,mauve))))
   `(org-level-7                      ((t (:foreground ,sage))))
   `(org-level-8                      ((t (:foreground ,steel))))
   `(org-agenda-date                  ((t (:foreground ,sage))))
   `(org-agenda-date-today            ((t (:foreground ,orange :weight bold))))
   `(org-agenda-date-weekend          ((t (:foreground ,mauve))))
   `(org-agenda-structure             ((t (:foreground ,fg-inactive))))
   `(org-agenda-done                  ((t (:foreground ,fg-chrome))))
   `(org-block                        ((t (:foreground ,fg-primary :background ,bg-panel :extend t))))
   `(org-block-begin-line             ((t (:foreground ,fg-chrome :background ,bg-panel :extend t))))
   `(org-block-end-line               ((t (:foreground ,fg-chrome :background ,bg-panel :extend t))))
   `(org-code                         ((t (:foreground ,sage :background ,bg-panel))))
   `(org-verbatim                     ((t (:foreground ,sage))))
   `(org-quote                        ((t (:foreground ,fg-inactive :slant italic :extend t))))
   `(org-todo                         ((t (:foreground ,orange :weight bold))))
   `(org-done                         ((t (:foreground ,sage :weight bold))))
   `(org-headline-done                ((t (:foreground ,fg-chrome))))
   `(org-date                         ((t (:foreground ,sage :underline t))))
   `(org-link                         ((t (:foreground ,sage :underline t))))
   `(org-footnote                     ((t (:foreground ,mauve :underline t))))
   `(org-tag                          ((t (:foreground ,fg-chrome :weight bold))))
   `(org-priority                     ((t (:foreground ,rose))))
   `(org-checkbox                     ((t (:foreground ,sage))))
   `(org-table                        ((t (:foreground ,fg-inactive))))
   `(org-formula                      ((t (:foreground ,sage))))
   `(org-special-keyword              ((t (:foreground ,mauve))))
   `(org-meta-line                    ((t (:foreground ,fg-chrome))))
   `(org-drawer                       ((t (:foreground ,fg-chrome))))
   `(org-property-value               ((t (:foreground ,fg-inactive))))
   `(org-ellipsis                     ((t (:foreground ,fg-chrome))))

   ;; ── Company (completion popup) ───────────────────────────────
   `(company-tooltip                  ((t (:foreground ,fg-primary :background ,bg-panel))))
   `(company-tooltip-selection        ((t (:foreground ,fg-primary :background ,bg-hl))))
   `(company-tooltip-common           ((t (:foreground ,orange :weight bold))))
   `(company-tooltip-common-selection ((t (:foreground ,orange :weight bold))))
   `(company-tooltip-annotation       ((t (:foreground ,fg-chrome :slant italic))))
   `(company-tooltip-scrollbar-thumb  ((t (:background ,fg-chrome))))
   `(company-tooltip-scrollbar-track  ((t (:background ,bg-panel))))
   `(company-preview                  ((t (:foreground ,fg-chrome))))
   `(company-preview-common           ((t (:foreground ,orange))))
   `(company-scrollbar-bg             ((t (:background ,bg-panel))))
   `(company-scrollbar-fg             ((t (:background ,fg-chrome))))

   ;; ── Vertico ──────────────────────────────────────────────────
   `(vertico-current                  ((t (:background ,bg-hl :extend t))))
   `(vertico-group-title              ((t (:foreground ,fg-chrome :slant italic))))
   `(vertico-group-separator          ((t (:foreground ,border :strike-through t))))
   `(vertico-multiline                ((t (:foreground ,fg-chrome))))

   ;; ── Marginalia ───────────────────────────────────────────────
   `(marginalia-documentation         ((t (:foreground ,fg-inactive :slant italic))))
   `(marginalia-file-name             ((t (:foreground ,fg-inactive))))
   `(marginalia-file-modes            ((t (:foreground ,fg-chrome))))
   `(marginalia-key                   ((t (:foreground ,orange))))
   `(marginalia-size                  ((t (:foreground ,sage))))
   `(marginalia-date                  ((t (:foreground ,fg-chrome))))
   `(marginalia-type                  ((t (:foreground ,mauve))))
   `(marginalia-mode                  ((t (:foreground ,sage))))

   ;; ── Orderless ────────────────────────────────────────────────
   `(orderless-match-face-0           ((t (:foreground ,orange :weight bold))))
   `(orderless-match-face-1           ((t (:foreground ,sage :weight bold))))
   `(orderless-match-face-2           ((t (:foreground ,mauve :weight bold))))
   `(orderless-match-face-3           ((t (:foreground ,steel :weight bold))))

   ;; ── Treemacs ─────────────────────────────────────────────────
   `(treemacs-root-face               ((t (:foreground ,orange :weight bold :height 1.1))))
   `(treemacs-directory-face          ((t (:foreground ,orange))))
   `(treemacs-directory-collapsed-face ((t (:foreground ,orange))))
   `(treemacs-file-face               ((t (:foreground ,fg-inactive))))
   `(treemacs-tags-face               ((t (:foreground ,sage))))
   `(treemacs-git-added-face          ((t (:foreground ,sage))))
   `(treemacs-git-modified-face       ((t (:foreground ,orange))))
   `(treemacs-git-renamed-face        ((t (:foreground ,mauve))))
   `(treemacs-git-ignored-face        ((t (:foreground ,fg-chrome))))
   `(treemacs-git-untracked-face      ((t (:foreground ,sage))))
   `(treemacs-git-conflict-face       ((t (:foreground ,rose))))

   ;; ── Flycheck / Flymake ───────────────────────────────────────
   `(flycheck-error                   ((t (:underline (:style wave :color ,rose)))))
   `(flycheck-warning                 ((t (:underline (:style wave :color ,orange)))))
   `(flycheck-info                    ((t (:underline (:style wave :color ,sage)))))
   `(flycheck-fringe-error            ((t (:foreground ,rose))))
   `(flycheck-fringe-warning          ((t (:foreground ,orange))))
   `(flycheck-fringe-info             ((t (:foreground ,sage))))
   `(flymake-error                    ((t (:underline (:style wave :color ,rose)))))
   `(flymake-warning                  ((t (:underline (:style wave :color ,orange)))))
   `(flymake-note                     ((t (:underline (:style wave :color ,sage)))))

   ;; ── LSP / Eglot ──────────────────────────────────────────────
   `(eglot-highlight-symbol-face      ((t (:background ,bg-hl2))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,fg-chrome))))
   `(eglot-diagnostic-tag-deprecated-face  ((t (:foreground ,fg-chrome :strike-through t))))

   ;; ── Meow modal editing ───────────────────────────────────────
   ;; State indicators in mode line — each state gets a distinct palette colour
   `(meow-normal-indicator            ((t (:foreground ,bg-editor :background ,sage
                                          :weight bold :box nil))))
   `(meow-insert-indicator            ((t (:foreground ,bg-editor :background ,orange
                                          :weight bold :box nil))))
   `(meow-keypad-indicator            ((t (:foreground ,bg-editor :background ,mauve
                                          :weight bold :box nil))))
   `(meow-motion-indicator            ((t (:foreground ,bg-editor :background ,steel
                                          :weight bold :box nil))))
   `(meow-beacon-indicator            ((t (:foreground ,bg-editor :background ,rose
                                          :weight bold :box nil))))
   ;; Meow search match highlight
   `(meow-search-highlight            ((t (:background ,bg-hl2 :foreground ,orange))))
   ;; Meow selection
   `(meow-region-cursor-1             ((t (:background ,orange))))
   `(meow-region-cursor-2             ((t (:background ,sage))))
   `(meow-region-cursor-3             ((t (:background ,mauve))))

   ;; ── Which-key ────────────────────────────────────────────────
   `(which-key-key-face               ((t (:foreground ,orange))))
   `(which-key-separator-face         ((t (:foreground ,fg-chrome))))
   `(which-key-note-face              ((t (:foreground ,fg-chrome))))
   `(which-key-command-description-face ((t (:foreground ,fg-inactive))))
   `(which-key-group-description-face ((t (:foreground ,mauve))))
   `(which-key-local-map-description-face ((t (:foreground ,sage))))

   ;; ── Rainbow delimiters ───────────────────────────────────────
   `(rainbow-delimiters-depth-1-face  ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-2-face  ((t (:foreground ,sage))))
   `(rainbow-delimiters-depth-3-face  ((t (:foreground ,mauve))))
   `(rainbow-delimiters-depth-4-face  ((t (:foreground ,steel))))
   `(rainbow-delimiters-depth-5-face  ((t (:foreground ,orange-bright))))
   `(rainbow-delimiters-depth-6-face  ((t (:foreground ,sage-bright))))
   `(rainbow-delimiters-depth-7-face  ((t (:foreground ,rose-bright))))
   `(rainbow-delimiters-depth-8-face  ((t (:foreground ,fg-inactive))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,rose :weight bold :underline t))))

   ;; ── Markdown ─────────────────────────────────────────────────
   `(markdown-header-face             ((t (:foreground ,orange :weight bold))))
   `(markdown-header-face-1           ((t (:foreground ,orange :weight bold :height 1.3))))
   `(markdown-header-face-2           ((t (:foreground ,orange :weight bold :height 1.2))))
   `(markdown-header-face-3           ((t (:foreground ,orange :weight bold :height 1.1))))
   `(markdown-header-face-4           ((t (:foreground ,orange :weight bold))))
   `(markdown-header-face-5           ((t (:foreground ,mauve :weight bold))))
   `(markdown-header-face-6           ((t (:foreground ,steel :weight bold))))
   `(markdown-code-face               ((t (:foreground ,sage :background ,bg-panel :extend t))))
   `(markdown-inline-code-face        ((t (:foreground ,sage :background ,bg-panel))))
   `(markdown-link-face               ((t (:foreground ,sage :underline t))))
   `(markdown-url-face                ((t (:foreground ,fg-chrome :underline t))))
   `(markdown-bold-face               ((t (:foreground ,fg-primary :weight bold))))
   `(markdown-italic-face             ((t (:foreground ,fg-primary :slant italic))))
   `(markdown-list-face               ((t (:foreground ,orange))))
   `(markdown-blockquote-face         ((t (:foreground ,fg-chrome :slant italic))))
   `(markdown-comment-face            ((t (:foreground ,fg-comment :slant italic))))
   `(markdown-hr-face                 ((t (:foreground ,border))))
   `(markdown-table-face              ((t (:foreground ,fg-inactive))))

   ;; ── YAML ─────────────────────────────────────────────────────
   `(yaml-ts-mode-key-face            ((t (:foreground ,orange))))

   ;; ── Term / vterm ─────────────────────────────────────────────
   `(term-color-black                 ((t (:foreground ,bg-panel :background ,bg-panel))))
   `(term-color-red                   ((t (:foreground ,rose :background ,rose))))
   `(term-color-green                 ((t (:foreground ,sage :background ,sage))))
   `(term-color-yellow                ((t (:foreground ,orange :background ,orange))))
   `(term-color-blue                  ((t (:foreground ,orange :background ,orange))))
   `(term-color-magenta               ((t (:foreground ,mauve :background ,mauve))))
   `(term-color-cyan                  ((t (:foreground ,sage :background ,sage))))
   `(term-color-white                 ((t (:foreground ,fg-inactive :background ,fg-inactive))))
   `(term-color-bright-black          ((t (:foreground ,fg-comment :background ,fg-comment))))
   `(term-color-bright-red            ((t (:foreground ,rose-bright :background ,rose-bright))))
   `(term-color-bright-green          ((t (:foreground ,sage-bright :background ,sage-bright))))
   `(term-color-bright-yellow         ((t (:foreground ,orange-bright :background ,orange-bright))))
   `(term-color-bright-blue           ((t (:foreground ,orange-bright :background ,orange-bright))))
   `(term-color-bright-magenta        ((t (:foreground ,mauve-bright :background ,mauve-bright))))
   `(term-color-bright-cyan           ((t (:foreground ,sage-bright :background ,sage-bright))))
   `(term-color-bright-white          ((t (:foreground ,fg-primary :background ,fg-primary))))

   ;; ── Custom (Customize interface) ─────────────────────────────
   `(custom-variable-tag              ((t (:foreground ,orange :weight bold))))
   `(custom-group-tag                 ((t (:foreground ,orange :weight bold :height 1.1))))
   `(custom-state                     ((t (:foreground ,sage))))
   `(custom-modified                  ((t (:foreground ,orange))))
   `(custom-saved                     ((t (:foreground ,sage :underline t))))
   `(custom-button                    ((t (:foreground ,bg-editor :background ,orange
                                          :box (:line-width 1 :color ,orange-dim)))))
   `(custom-button-mouse              ((t (:foreground ,bg-editor :background ,orange-bright
                                          :box (:line-width 1 :color ,orange)))))

   ) ; end custom-theme-set-faces
  ) ; end let

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'hearthstone)

;;; hearthstone-theme.el ends here
