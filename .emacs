;; run this if you're running as another user other than the usual me:
;; (add-to-list 'load-path "c:/Documents and Settings/tmonacel/.elisp/")


;;
;; Make all "yes or no" prompts show "y or n" instead
;;
(fset 'yes-or-no-p 'y-or-n-p)

;; http://wwwfun.kurims.kyoto-u.ac.jp/soft/lsl/dist/ocaml-mode-3.05.tar.gz
;; http://www.nongnu.org/baol-hth/visual-basic-mode.el.gz

;; This is failing with permission denied error messages on w32
;;; Wrapper to make .emacs self-compiling.
;; (defvar init-top-level t)
;; (if init-top-level
;;     (let ((init-top-level nil))
;;       (if (file-newer-than-file-p "~/.emacs" "~/.emacs.elc")
;;           (progn
;;             (load "~/.emacs")
;;             (byte-compile-file "~/.emacs")
;;             )
;;         (load "~/.emacs.elc"))))



;; this changes the value of the default-directory variable so that
;; the next dired will point you here
(cd "~/")



(add-to-list 'load-path "~/.elisp")
(add-to-list 'load-path "~/.elisp/anything-config")
(add-to-list 'load-path "~/.elisp/browse-kill-ring.el")
(add-to-list 'load-path "~/.elisp/applescript-mode.el")
(add-to-list 'load-path "~/.elisp/html-helper-mode")
(add-to-list 'load-path "~/.elisp/php-mode-1.5.0")
(add-to-list 'load-path "~/.elisp/python-mode-1.0")
(add-to-list 'load-path "/opt/local/var/macports/software/emacs-app/23.1_0/Applications/MacPorts/Emacs.app/Contents/Resources/lisp/international")
(add-to-list 'load-path "/opt/local/var/macports/software/emacs-app/23.1_0/Applications/MacPorts/Emacs.app/Contents/Resources/lisp")
(add-to-list 'load-path "~/.elisp/ocaml-mode-3.05")
(add-to-list 'load-path "~/.elisp/psgml-1.2.5")	;; http://www.lysator.liu.se/~lenst/about_psgml/psgml.html
(autoload 'wikipedia-mode
  "wikipedia-mode.el"
  "Major mode for editing documents in Wikipedia markup." t)
(add-to-list 'load-path "~/.elisp/wikipedia-mode")


(add-to-list 'load-path "~/.elisp/org-mode/contrib/lisp")
(add-to-list 'load-path "~/.elisp/org-mode/lisp")

(setq interpreter-mode-alist (cons '("python" . python-mode) 
				   interpreter-mode-alist))


;; Tell Emacs to find the definition for the function caml-mode by
;; loading a Lisp library named caml (i.e. a file caml.elc or
;; caml.el):
(autoload 'wikipedia-mode "wikipedia-mode.el" "Major mode for editing documents in Wikipedia markup." t)
(autoload 'css-mode "css-mode")
(autoload 'javascript-mode "javascript" nil t)
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(autoload 'python-mode "python-mode" "Python editing mode." t)
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(autoload 'caml-mode "caml" "Major mode for editing Caml code." t)
(autoload 'run-caml "inf-caml" "Run an inferior Caml process." t)
(autoload 'bat-mode "bat-mode" "DOS and WIndows BAT files" t)
(autoload 'matlab-mode "matlab.elc" "Enter Matlab mode." t)
(autoload 'matlab-shell "matlab.elc" "Interactive Matlab mode." t)
					; This mode seems too slow and I've not used it's functionality
					; (autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t) 
					; (autoload 'xml-mode "psgml" "Major mode to edit XML files." t)

(setq auto-mode-alist
      (append '(("\\.lsp$" . lisp-mode)
		("\\.wiki$" . wikipedia-mode)
		("\\.scm$" . scheme-mode)
		("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode)
		;; ("\\.xml$" . xml-mode) ; I'm not really using this mode and it slows things down when openning a xml file.
		("\\.m$" . matlab-mode)
		("\\.pl$" . perl-mode)
		("\\.\\(scpt\\|applescript\\)$" . applescript-mode)
		("\\.py$" . python-mode)
		("\\.js$" . javascript-mode)
		("\\.html$" . html-helper-mode)
		("\\.ml[iylp]?$" . caml-mode)
		("\\.au3$" . visual-basic-mode)
		("\\.\\(vbs\\|frm\\|bas\\|cls\\)$" . visual-basic-mode)
		("\\.\\(cpp\\|hpp\\)$" . c++-mode)
		("\\.[bB][aA][tT]$" . bat-mode)
		("CONFIG\\." . bat-mode)
		("AUTOEXEC\\." . bat-mode)
		("\\.css" . css-mode)
		("\\.gz\\(~\\|\\.~[0-9]+~\\)?\\'" nil jka-compr)
		("\\.bz2\\'" nil jka-compr) 
		("\\.tgz\\'" . tar-mode) 
		) auto-mode-alist))


;; from nxml-mode/README
;; If you edit XML using iso-8859-N encodings other than iso-8859-1 and
;; you are running Emacs 21.3 or later, then I recommend enabling
;; unify-8859-on-decoding-mode, by adding
;;   (unify-8859-on-decoding-mode)
;; to you .emacs.
(unify-8859-on-decoding-mode); nxml-mode suggested adding this

(setq-default
					; auto-fill-mode t
 default-fill-column 72
					; blink-matching-paren nil
 visible-bell t				;; Turns off audible bell
 default-major-mode 'emacs-lisp-mode	;; Silly "Fundamental"
 inhibit-startup-message t ;; - http://www.gnu.org/software/emacs/manual/html_node/Init-Examples.html
 ispell-program-name "aspell"
 column-number-mode t
 )




(fset 'blogger-update
      [f7 escape return return ?\C-c ?\C-p ?b ?U ?p ?d ?a ?t ?e ?: ?  ?\C-c ?i ?\C-e return return escape return return])



(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(set-foreground-color "white")
(set-background-color "black")
(set-cursor-color "blue")



(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)


;; --------------------------------------------------
;; Place the cursor inside a <pre></pre> element and run this macro to 
;; turn "<" into &lt; and ">" into &gt;
(fset 'blogger-prepare-pre
      [?\C-  ?\C-r ?< ?p ?r ?e ?> right right right right right ?\C-  ?\C-s ?< ?/ ?p ?r ?e ?> ?\C-b ?\C-b ?\C-b ?\C-b ?\C-b ?\C-b ?\C-x ?n ?n escape ?< escape ?x ?r ?e ?p ?l ?a ?c ?e ?- ?r ?e ?g ?e ?x ?p return ?< return ?& ?l ?t ?\; return escape ?< escape ?x ?r ?e ?p ?l ?a ?c ?e ?- ?r ?e ?g ?e ?x ?p return ?> return ?& ?g ?t ?\; return ?\C-x ?n ?w ?\C-u ?\C-  ?\C-u ?\C-  ?\C-u ?\C-  ?\C-u ?\C-  ?\C-u ?\C-  ?\C-u ?\C-  ?\C-u ?\C- ])

;; Manually paste the clipboard to the spot you want the url placed.  This will create two lines
;; the first line contains the URL title and the second contains the url.  This macro will create the
;; <a href="http://path/to/spot">title</a>
;; Copy URL + :: Mozilla Add-ons :: Add Features to Mozilla Software
;; https://addons.mozilla.org/firefox/129/
(fset 'blogger-create-link-from-copy-url
      [?\C-a ?\C-k ?< ?a ?  ?h ?r ?e ?f ?= ?" ?\C-y ?" ?> ?\C-  ?\C-p ?\C-a ?\C-k ?\C-u ?\C-  ?\C-y ?< ?/ ?a ?> ?\C-a])
;; Assume you've just used Firefox Extension Copy URL to put an url with its tiltle into current buffer
;; This will wrap the two lines into an anchor.  Place cursor on the URL line (as opposed to the title of the anchor line)
;; This macro relies on the F7 key being bound to turning the current mode into html-helper-mode
(fset 'blogger-wrap-lines-into-anchor
      [?\C-a ?\C-k f7 ?\C-c ?\C-a ?l ?\C-y escape ?\\ ?\C-f ?\C-f ?\C-  ?\C-a ?\C-p ?\C-k ?\C-u ?\C-  ?\C-y ?\C-a ?\C-c ?\C-l ?l ?\C-l])

;; --------------------------------------------------

;; http://www.emacswiki.org/cgi-bin/wiki?BackupDirectory
(require 'backup-dir)

;; localize it for safety.
(make-variable-buffer-local 'backup-inhibited)


(if (not (file-directory-p "~/.emacs.d"))
    (make-directory "~/.emacs.d"))
(if (not (file-directory-p "~/.emacs.d/backups"))
    (make-directory "~/.emacs.d/backups"))
(setq bkup-backup-directory-info
      '((t "~/.emacs.d/backups" ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

					; At 1024x768 frame-height of 55 and frame-width of 100 is bad.  Fix this.
					; http://www.gnu.org/software/emacs/windows/faq4.html#windows-frames
(if (not (equal window-system nil))
    (progn
      (setq screen-height (x-display-pixel-height))
      (setq screen-width (x-display-pixel-width))
      (if (<= screen-height 768)
	  (progn
	    (set-frame-height (selected-frame) 40)
	    (set-frame-width (selected-frame) 100))
	(progn
	  (set-frame-height (selected-frame) 50)
	  (set-frame-width (selected-frame) 100)))))

(if (equal window-system nil)
    (shell nil))

(setq initial-frame-alist '((top . 10) (left . 30)))

;; (setq Info-directory-list
;;            '(
;;              "/Users/taylormonacelli/.elisp/org-mode/doc"
;; 	     "/usr/share/info"
;; 	     "~/.info"
;; 	     "~/Documents/git/Documentation"
;; 	     ))



;; Pgup/dn will return exactly to the starting point.
(setq scroll-preserve-screen-position 1)

;; format the title-bar to always include the buffer name
(setq frame-title-format "emacs - %b")

;; turn off the toolbar
(if (>= emacs-major-version 21)
    (tool-bar-mode -1))


;; This is failing on W32 cause emacs can't find eshell-auto, but M-x eshell works fine.  What is eshell-auto?
;; ;; use eshell
;; (load "eshell-auto")
;; (setq eshell-cmpl-cycle-completions -1)


;;; Convert DOS file format to Unix
;; look at 
;; M-x comint-strip-ctrl-m
;;   Command: Strip trailing `^M' characters from the current output group.
;; from: elf@ee.ryerson.ca (Luis Fernandes)
;; 22 May 1997
;;; Usage: M-x dos2unix
;;;
(defun dos2unix ()
  "Convert this entire buffer from MS-DOS text file format to UNIX."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "\r$" "" nil)
    (goto-char (1- (point-max)))
    (if (looking-at "\C-z")
        (delete-char 1))))

(global-font-lock-mode t)


;; http://www.emacswiki.org/emacs/RecentFiles
(require 'recentf)
(setq recentf-auto-cleanup 'never) ;; disable before we start recentf!
(setq recentf-max-saved-items 2500)
(recentf-mode 1)

;; http://www.koders.com/lisp/fidE8CF96D104A21B9A8CECAE4340C8A565446B5EBE.aspx?s=TV+Raman
(add-hook 'html-helper-mode-hook  '(lambda () (auto-fill-mode 1) (setq fill-column 60)))
(add-hook 'text-mode-hook         '(lambda () (auto-fill-mode 1) (setq fill-column 72)))
(add-hook 'visual-basic-mode-hook '(lambda () (auto-fill-mode 1) (setq fill-column 72)))
(add-hook 'bat-mode-hook          '(lambda () (auto-fill-mode 1) (setq fill-column 72)))
(add-hook 'sh-mode-hook           '(lambda () (auto-fill-mode 1) (setq fill-column 72)))

;; --------------------------------------------------

;; dired-x stuff 


(add-hook 'dired-load-hook
	  (lambda ()
	    (load "dired-x")
	    ;; Set dired-x global variables here.  For example:
	    ;; (setq dired-guess-shell-gnutar "gtar")
	    ;; (setq dired-x-hands-off-my-keys nil)
	    (setq dired-omit-files
		  (concat dired-omit-files "\\|^\\..+$"))
	    ))
(add-hook 'dired-mode-hook
	  (lambda ()
	    ;; Set dired-x buffer-local variables here.  For example:
	    (setq dired-omit-files-p t)
	    ))

;; --------------------------------------------------

;; Inserting a header automatically
;; http://www.bigwebmaster.com/General/Howtos/LinuxDoc+Emacs+Ispell-HOWTO-6.html

(add-hook 'find-file-hooks 'auto-insert)
(load-library "autoinsert")
(setq auto-insert-alist
      (append '(
		;; the following need an interpreter
		((sh-mode . "Script Mode") . (concat "#!/bin/bash\n" comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- sh -*-\n\n\n" ))
		;; the following modes need comment beginnings
		((visual-basic-mode . "Visual Basic Mode") . (concat comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- visual-basic -*-\n\n\n" ))
		((sql-mode . "Sql Mode") . (concat comment-start " Last modified $Id$\n" comment-start " $HeadURL$\n" comment-start " -*- sql -*-\n\n\n" ))
		((perl-mode . "Perl Mode") . (concat comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- perl -*-\n\n\n" ))
		((perl-mode . "PHP Mode") . (concat comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- php -*-\n\n\n" ))
		((python-mode . "Python Mode") . (concat comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- python -*-\n\n\n" ))
		((bat-mode . "Bat Mode") . (concat "@Echo off\n" comment-start "Last modified $Id$\n" comment-start "$HeadURL$\n" comment-start "-*- bat -*-\n\n\n" ))
		((javascript-mode . "Javascript Mode") . (concat comment-start " Last modified $Id$\n" comment-start " $HeadURL$\n" comment-start "-*- javascript -*-\n\n\n" ))
		((caml-mode . "Caml Mode") . (concat comment-start " Last modified $Id$\n" comment-start " $HeadURL$\n" comment-start "-*- caml -*-\n\n\n" ))

		;; the following modes need comment endings too
		((html-helper-mode . "Yay HTML") . (concat comment-start " Last modified $Id$" comment-end "\n" comment-start " $HeadURL$" comment-end "\n\n\n" ))
		((css-mode . "CSS Mode") . (concat comment-start " Last modified $Id$" comment-end "\n" comment-start " $HeadURL$" comment-end "\n\n\n" ))
		)
	      auto-insert-alist))

;; --------------------------------------------------

;; Mode specific key bindings

;; C-c C-n t for HTML mode
(add-hook 'html-helper-mode-hook
	  '(lambda ()
	     (define-key html-helper-mode-map "\C-c\C-nt"
	       'tidy-buffer-xhtml
	       )
	     ;;  	     (define-key texinfo-mode-map "\C-cn"
	     ;;  	       'forward-paragraph)
	     )
	  )

;; ;; C-c C-n t for sgml mode
;; (add-hook 'sgml-mode-hook
;; 	  '(lambda () (define-key sgml-mode-map "\C-c\C-nt" 'tidy-buffer-xml )
;; 	     ;;  	     (define-key texinfo-mode-map "\C-cn"
;; 	     ;;  	       'forward-paragraph)
;; 	     ))

;; --------------------------------------------------

;; global key sets


(global-set-key "j" (quote rename-uniquely))
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (quote [f7]) (quote html-helper-mode))
(global-set-key (quote [f8]) (quote tmm-menubar))

;; C-c i calls insert-date-string
(global-set-key (kbd "C-c i") 'insert-date-string)




;; phasing out
;; (global-set-key (kbd "C-x y") 'tidy-buffer-xml)
;; (global-set-key (kbd "C-x t") 'tidy-buffer-xhtml)



;; Insertion of Dates.
(defun insert-date-string ()
  "Insert a nicely formated date string."
  (interactive)
  (insert (format-time-string "%a %b %e %Y")))

;; 
;; ===========================
;; Custom Functions
;; ===========================

;; print an ascii table
(defun ascii-table ()
  "Print the ascii table. Based on a defun by Alex Schroeder "
  (interactive)
  (switch-to-buffer "*ASCII*")
  (erase-buffer)
  (insert (format "ASCII characters up to number %d.\n" 254))
  (let ((i 0))
    (while (< i 254)
      (setq i (+ i 1))
      (insert (format "%4d %c\n" i i))))
  (beginning-of-buffer))


;; Function to run Tidy HTML parser on buffer
;; NOTE: this requires external Tidy program
(defun tidy-buffer-xhtml ()
  "Run Tidy HTML parser on current buffer."
  (interactive)
  (save-excursion
    (if (get-buffer "tidy-html-errs") (kill-buffer "tidy-html-errs"))
    (let ((tmp (concat temporary-file-directory "tidy-html-errs"))
	  (cmd "tidy --force-output true -asxhtml --tidy-mark no --doctype strict --vertical-space true --indent-attributes true --wrap-attributes true --indent-attributes true --wrap-attributes true --vertical-space true -q -i -wrap 60 -c -f "))
      (shell-command-on-region (point-min) (point-max)
			       (concat cmd tmp)
			       t)
					;(shell-command-on-region (point-min) (point-max) "tidyClean" 
					;t)
      (find-file-other-window tmp)
      (other-window 1)
      (enlarge-window (- (- (frame-height) +8) (window-height)))
      (if (file-exists-p tmp) (delete-file tmp))
      (goto-char (point-min))
      )
    (message "buffer tidy'ed and tidyClean'ed")
    )
  )

(defun tidy-buffer-xml ()
  "Run Tidy XML parser on current buffer."
  (interactive)
  (save-excursion
    (if (get-buffer "tidy-xml-errs") (kill-buffer "tidy-xml-errs"))
    (let ((tmp (concat temporary-file-directory "tidy-xml-errs"))
	  (cmd "tidy -xml --tidy-mark no --doctype strict --vertical-space true --indent-attributes true --wrap-attributes true --indent-attributes true --wrap-attributes true --vertical-space true -q -i -wrap 72 -c -f " ))
      (shell-command-on-region (point-min) (point-max)
			       (concat cmd tmp)
			       t)
      (find-file-other-window tmp)
      (other-window 1)
      (enlarge-window (- (- (frame-height) +8) (window-height)))
      (if (file-exists-p tmp) (delete-file tmp))
      (goto-char (point-min))
      )
    (message "buffer tidy'ed")
    )
  )

(setq Info-directory-list (cons (expand-file-name "~/.info") Info-default-directory-list))

;; resize man page to take up whole screen
(setq Man-notify 'bully)

(require 'psvn)

(if (eq system-type 'windows-nt)
    (progn
      (setq explicit-shell-file-name "c:/cygwin/bin/bash.exe")
      (setq Info-directory-list (cons "c:/cygwin/usr/share/info" Info-directory-list))
      ))

(if (eq system-type 'darwin)
    (progn
      ;;      (require 'w3m-load) ; available through macports (sudo port install emacs-w3m)

      ;; http://docs.freebsd.org/info/texinfo/texinfo.info.Other_Info_Directories.html
      ; (setq Info-directory-list (append (list "") Info-directory-list))
      (setq Info-directory-list (append (list "/Applications/MacPorts/Emacs.app/Contents/Resources/info") Info-directory-list))
      (setq Info-directory-list (append (list "/opt/local/var/macports/software/gcc43/4.3.4_0/opt/local/share/gcc43/info") Info-directory-list))
      (setq Info-directory-list (append (list "/Applications/Aquamacs.app/Contents/Resources/info") Info-directory-list))
      (setq Info-directory-list (append (list "/Applications/Aquamacs.app/Contents/Resources/site-lisp/edit-modes/info") Info-directory-list))
      (setq Info-directory-list (append (list "/Applications/Emacs.app/Contents/Resources/extra/info") Info-directory-list))
      (setq Info-directory-list (append (list "/Applications/Emacs.app/Contents/Resources/info") Info-directory-list))
      (setq Info-directory-list (append (list "/opt/local/share/info") Info-directory-list))
      (setq Info-directory-list (append (list "/opt/local/share/gcc43/info") Info-directory-list))
      (setq Info-directory-list (append (list "/opt/local/share/info") Info-directory-list))
      (setq Info-directory-list (append (list "/opt/local/var/macports/software/gcc43/4.3.4_0/opt/local/share/gcc43/info") Info-directory-list))
      (setq Info-directory-list (append (list "/usr/share/info") Info-directory-list))
      ))

;; Change the default eshell prompt
(setq eshell-prompt-function
      (lambda ()

	;; This special form is like `let', but it binds each variable
	;; right after computing its local value, before computing the
	;; local value for the next variable.  Therefore, an expression
	;; in BINDINGS can reasonably refer to the preceding symbols
	;; bound in this `let*' form.  Compare the following example
 	;; with the example above for `let'.  
	
 	(let* ((prompt (eshell/pwd))
 	       (tmp (string-match "/[^:/\\]*$" prompt)))
 	  (concat 
 	   (substring prompt (+ tmp 1) (length prompt)) 

	   ;; Be careful about removing the following concatination!  I
	   ;; spent an hour trying to figure this one out.  Without
	   ;; either a hash or $ you will end up with  "Not Found" error
	   ;; messages in the Eshell window when you do 
	   ;; eshell-previous-matching-input-from-input (most likely
	   ;; bound to M-p.  M-x customize-group <RET> eshell-prompt
	   ;; will give you more clues about the Eshell Prompt Regexp

	   " # "))))


(if (>= (string-to-number emacs-version) 22)
    (server-start))


;; (add-hook 'eshell-mode-hook
;;    '(lambda nil
;;    (eshell/export "EPOCROOT=\\Paragon\\")
;;    (let ((path))
;;       (setq path "c:\\cygwin\\usr\\local\\bin")
;;       (setq path (concat path ";c:\\cygwin\\usr\\local\\bin"))
;;     (setenv "PATH" path))
;;    (local-set-key "\C-u" 'eshell-kill-input))
;;  )

;; (require 'ido)
;; (ido-mode t)

(setenv "PS1" "\\u@\h \\W$ ")

;;http://www.emacswiki.org/cgi-bin/wiki/McMahanDotEmacs
;;; set the term to avoid ansi garbage in shell mode
					;(setenv "TERM" "emacs")


;; add to end of .emacs
;; C-x , set to anything
(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(
     anything-c-source-buffers
     ;; anything-for-files ;obsoleted
     anything-c-source-file-name-history
     ;anything-c-source-files-in-all-dired
     anything-c-source-recentf
     anything-c-source-minibuffer-history
     ; this one causes save-excursion: Marker does not point anywhere error when mark is not set
     ; anything-c-source-mark-ring 
     ;; anything-c-source-global-mark-ring causes problems when
     ;; switching back to original buffer.  Its as though save-excursion
     ;; isn't working because upon returning to the buffer, your
     ;; position is not correct.
     ; anything-c-source-global-mark-ring
     anything-c-source-files-in-current-dir
     anything-c-source-kill-ring
     anything-c-source-ctags
     anything-c-source-info-pages
     ; anything-c-source-info-elisp; this gives error progn: Symbol's function definition is void: Info-find-node
     anything-c-source-man-pages
     anything-c-source-locate
     ; anything-c-source-emacs-commands
     anything-c-source-buffer-not-found
     )
   " *my-anything*"))
(global-set-key "," (quote my-anything))
(require 'anything-config)		; loads anything.el too


(require 'breadcrumb)

;; (global-set-key [(shift space)]         'bc-set)            ;; Shift-SPACE for set bookmark
;; (global-set-key (quote [33554464]) (quote bc-set))          ;; Shift-SPACE for set bookmark
(global-set-key [(meta j)]              'bc-previous) ;; M-j for jump to previous
(global-set-key [(shift meta j)]        'bc-next) ;; Shift-M-j for jump to next
(global-set-key [(meta up)]             'bc-local-previous) ;; M-up-arrow for local previous
(global-set-key [(meta down)]           'bc-local-next)	;; M-down-arrow for local next
(global-set-key [(control c)(j)]        'bc-goto-current) ;; C-c j for jump to current bookmark
(global-set-key [(control x)(meta j)]   'bc-list) ;; C-x M-j for the bookmark menu list

;; Temporary macros begin
(fset 'tm_create_wiki_link_from_mac_path
      [?\C-e ?\C-a ?\C-k ?\C-x ?b ?* ?1 ?2 ?3 ?4 ?5 ?1 ?2 ?3 ?4 ?5 ?1 ?2 ?3 ?4 ?5 ?* return ?\C-y ?\C-a ?\C-d ?f ?i ?l ?e ?: ?/ ?/ ?/ ?/ ?/ escape ?d ?1 ?0 ?. ?0 ?. ?1 ?. ?1 ?0 backspace backspace backspace backspace ?2 ?. ?1 ?0 ?\C-e return ?\C-y escape ?y ?\C-a escape ?d ?\\ ?\\ ?1 ?0 ?. ?0 ?. ?2 ?. ?1 ?0 escape ?x ?r ?e ?p ?l ?a ?c ?e ?- ?s ?t ?r ?i ?n ?g return ?/ return ?\\ return ?\C-a ?\C-k ?\C-p ?\C-e ?  ?\C-y ?\C-a ?[ ?\C-e ?] ?\C-a ?\C-k ?\C-y ?\C-a ?\C-k ?\C-x ?k return ?\C-y])
(fset 'tm_create_mac_link_from_unc_path
      [?\C-a ?\C-k ?\C-x ?b ?* ?1 ?2 ?3 ?4 ?5 ?6 ?7 ?8 ?9 ?0 ?1 ?2 ?3 ?4 ?5 ?6 ?7 ?8 ?9 ?0 ?* return ?\C-y ?\C-a escape ?x ?r ?e ?p ?l ?a ?c ?e ?- ?s ?t ?r ?i ?n ?g return ?  return ?% ?2 ?0 return ?\C-  ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-w ?/ ?V ?o ?l ?u ?m ?e ?s escape ?x escape ?p return ?\\ return ?/ return ?\C-a ?\C-k ?\C-x ?k return ?\C-y])
;; Temporary macros end

(defun tm-dir-shell-here()
  (interactive)
  (let ((cbuff (buffer-name))
	(cdcmd (concat "cd \'" (expand-file-name (file-name-as-directory default-directory)) "\'")))
    (progn
      (shell)
      (goto-char (point-max))
      (move-beginning-of-line 1)
      (insert "# ") (comint-send-input)
      (goto-char (point-max))
      (insert cdcmd) (comint-send-input)
      (switch-to-buffer-other-window cbuff)
      (other-window 1)
      (kill-new cbuff)
      )))

(global-set-key "e" (quote tm-dir-shell-here))

;;; Commands added by calc-private-autoloads on Sat Mar 14 15:01:33 2009.
(autoload 'calc-dispatch	   "calc" "Calculator Options" t)
(autoload 'full-calc		   "calc" "Full-screen Calculator" t)
(autoload 'full-calc-keypad	   "calc" "Full-screen X Calculator" t)
(autoload 'calc-eval		   "calc" "Use Calculator from Lisp")
(autoload 'defmath		   "calc" nil t t)
(autoload 'calc			   "calc" "Calculator Mode" t)
(autoload 'quick-calc		   "calc" "Quick Calculator" t)
(autoload 'calc-keypad		   "calc" "X windows Calculator" t)
(autoload 'calc-embedded	   "calc" "Use Calc inside any buffer" t)
(autoload 'calc-embedded-activate  "calc" "Activate =>'s in buffer" t)
(autoload 'calc-grab-region	   "calc" "Grab region of Calc data" t)
(autoload 'calc-grab-rectangle	   "calc" "Grab rectangle of data" t)
(global-set-key "\e#" 'calc-dispatch)
;;; End of Calc autoloads.

(require 'psvn)

;; svn export https://svn.r-project.org/ESS/trunk ~/.elisp/ess
(if (file-directory-p "~/.elisp/ess")
    (progn
      (add-to-list 'load-path "~/.elisp/ess")
      (require 'ess-site)))

(shell)



;; --------------------------------------------------
;; emacs server setup
;; --------------------------------------------------
;;http://www.emacswiki.org/emacs-en/emacsd
;; only start emacs server when it's not started, I hate warnings.
;; http://www.emacswiki.org/emacs/download/EmacsdInitScript

(setq server-socket-file "/tmp/emacs1000/server")
(unless (file-exists-p server-socket-file)
  (server-start))

;; So emacs won't try to start the server again.

;; This function may be useful if you are always in a client. I bind it to C-c q. So I don't need to use C-x # or C-x 5 0 any more.

(defun exit-emacs-client ()
  "consistent exit emacsclient.
   if not in emacs client, echo a message in minibuffer, don't exit emacs.
   if in server mode
      and editing file, do C-x # server-edit
      else do C-x 5 0 delete-frame"
  (interactive)
  (if server-buffer-clients
      (server-edit)
    (delete-frame)))

(global-set-key (kbd "C-c q") 'exit-emacs-client)

;; --------------------------------------------------
;; given some path such as  \\10.0.2.10\Production\Streambox\...\StreamboxOSX3.72b32.zip
;; toggle it between UNC/wiki/Mac format
;; \\10.0.2.10\Production\Streambox\...\StreamboxOSX3.72b32.zip
;; /Volumes/Production/Streambox/.../StreamboxOSX3.72b32.zip
;; [file://///10.0.2.10/Production/Streambox/.../StreamboxOSX3.72b32.zip \\10.0.2.10\Production\Streambox\...\StreamboxOSX3.72b32.zip]
;; --------------------------------------------------

(defun flipunc ()
  (interactive)
  (save-excursion
    (save-restriction
      (progn
	(back-to-indentation)
	(setq bor (point))
	(end-of-line)	
	(setq eol (point))
	(narrow-to-region bor eol)
	(back-to-indentation)
	(if (looking-at "^/Volumes")
	    (progn
	      (replace-string "/Volumes" "\\\\10.0.2.10") (goto-char 0)
	      (replace-string "/" "\\") )
	  (if (looking-at "^\\\\")
	      (progn
		(let ((fullpath (buffer-string)))
		  (end-of-line)
		  (delete-horizontal-space) (insert-char ?\  1)
		  (let ((cp (point)))
		    (insert fullpath)
		    (delete-horizontal-space)            (goto-char cp)
		    (replace-string "\\\\" "file://///") (goto-char cp)
		    (replace-string "\\" "/")            (goto-char cp)
		    (replace-string " " "\%20")          (goto-char cp)
		    (goto-char 0)
		    (insert "[") (goto-char (point-max))
		    (transpose-regions (+ (point-min) 1) (- cp 1) (+ 1 cp) (- (point-max) 1))
		    (insert "]")
		    )))
	    (if (looking-at "^\\[file://///10.0.2.10/")
		(progn
		  (goto-char (- (point-max) 1)) 
		  (delete-char 1)
		  (beginning-of-line) (delete-char 1)
		  (let ((sp (search-forward " ")))
		    (delete-region (point-min) sp)
		    (goto-char (point-min))
		    (replace-string "\\\\10.0.2.10" "/Volumes")
		    (replace-string "\\" "/")
		    ) 
		  )
	      ;; example: //10.0.2.10/production to \\10.0.2.10\production\
	      (if (looking-at "^//")
		  (progn
		    (beginning-of-line)	; rem, we've already narrowed to line above
		    (replace-string "/" "\\")
		    )
		(if (looking-at "^ *\\\\10.0.2.10\\")
		    (progn
		      (beginning-of-line) ; rem, we've already narrowed to line above
		      (replace-string "\\\\10.0.2.10\\" "http://10.0.2.10/")
		      )
		  )
		)       ; (looking-at "^//")	     
	      )		; (looking-at "^\\\\")	        		
	    )		; (looking-at "^/Volumes")   		
	  )		; let eol		     		
	)		; save restriction	     		
      )			; save excursion	     		
    )			; end defun                  		
  )					

(global-set-key "w" (quote flipunc))

(defun capture_full_path ()
  (interactive)
  (save-excursion
    (save-restriction
      (progn
	(let ((cp (point)))
	  (end-of-line)
	  (let ((fullpath 
		 (concat 
		  (expand-file-name dired-directory)
		  (buffer-substring cp (point)))))
	    (message "%s" fullpath)
	    (kill-new fullpath)
	    ))))))

(global-set-key "g" (quote capture_full_path))


;; --------------------------------------------------
;; I believe custom vars should appear last to overwrite factory default values...I think.
;; --------------------------------------------------
(custom-set-variables
 '(diary-file (expand-file-name "~/.diary"))
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(bc-bookmark-limit 100)
 '(delete-by-moving-to-trash t)
 '(display-time-mode t nil (time))
 '(eshell-prompt-function (lambda nil (let* ((prompt (eshell/pwd)) (tmp (string-match "/[^:/\\]*$" prompt))) (concat (substring prompt (+ tmp 1) (length prompt)) " "))) t)
 '(ido-case-fold t)
 '(menu-bar-mode nil)
 '(menu-bar-mode nil)
 '(major-mode 'org-mode)
 '(nxml-slash-auto-complete-flag t)
 '(org-agenda-files (quote ("~/notes.txt")))
 '(org-agenda-include-diary t)
 '(org-agenda-ndays 31)
 '(org-deadline-warning-days 100)
 '(ring-bell-function (quote ignore) t)
 '(scroll-bar-mode nil)
 '(tab-stop-list (quote (2 4 6 8 10 12 56 64 72 80 88 96 104 112 120)))
 '(truncate-lines t)
)

(require 'browse-kill-ring)
(global-set-key (kbd "C-c k") 'browse-kill-ring)
(global-set-key (kbd "C-c C-c") (quote comment-region))

(require 'php-mode)


(autoload 'applescript-mode "applescript-mode" "major mode for editing AppleScript source." t)


; http://www.opensubscriber.com/message/emacs-devel@gnu.org/10963543.html
; Add directories to recentf list and then assuming you're using
; anything-sources, then anything-c-source-recentf will bring up past
; directories.
(add-hook 'dired-mode-hook
  (lambda () 
    (local-set-key "f" (quote find-dired))
    (when recentf-mode
      (recentf-add-file default-directory))))

(add-hook 'org-mode-hook
  (lambda () 
    (local-set-key "c" (quote calendar))))

(require 'org-babel-init)     
(require 'org-babel-R)         ;; requires R and ess-mode
;(require 'org-babel-ruby)      ;; requires ruby, irb, ruby-mode, and inf-ruby
(require 'org-babel-python)    ;; requires python, and python-mode
;(require 'org-babel-clojure)   ;; requires clojure, clojure-mode, swank-clojure and slime
(org-babel-load-library-of-babel)

(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-xj" 'rename-uniquely)
