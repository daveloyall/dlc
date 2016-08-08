;;;; dlc.asd

(asdf:defsystem #:dlc
  :description "dlc: a common lisp tool for generating graphviz dot language documents"
  :author "Dave Loyall <sebboh@the-good-guys.net>"
  :license "GPLv3+"
  :depends-on (#:command-line-arguments)
  :serial t
  :components ((:file "package")
               (:file "dlc")))

