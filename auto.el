
(autoload 'jw-align           "jw-align"          "Alignment functionality" t)
(autoload 'actionscript-mode  "actionscript-mode" "Actionscript programming mode" t)
(autoload 'go-mode            "go-mode"           "Go programming mode" t)
(autoload 'clojure-mode       "clojure-mode"      "Clojure programming mode" t)

(defun make-auto (pattern mode)
  "Add a pattern to the auto-mode alist."
  (let ((ans (assoc pattern auto-mode-alist)))
    (if (and ans (equal mode (cdr ans)))
	(print "Do Nothing")
      (print "Added")
      (setq auto-mode-alist
	    (cons (cons pattern mode) auto-mode-alist)))))

(make-auto "\\.as$"    'actionscript-mode)
(make-auto "\\.as$"    'actionscript-mode)
(make-auto "\\.clj$"   'clojure-mode)
