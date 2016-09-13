;;;; dlc.lisp

(in-package #:dlc)

;;; define the command line options
(defparameter +command-line-spec+
  '((("auto" #\O) :type boolean :optional t :documentation "--auto-filename -O	- Automatically generate an output filename by appending '.dot' to the input filename.  Default when an input filename is provided.")
    (("output" #\o) :type string :optional t :documentation "--output file -ofile	-write output to 'file'")
    (("verbose" #\v) :type boolean :optional t :documentation "--verbose -v		- Enable verbose mode")
    (("help" #\h #\?) :type boolean :optional t :documentation "--help -h -?		- Print usage and exit")
    (("version" #\V) :type boolean :optional t :documentation "--version -V		- Print version and exit")))

;;; Hark, a main function.  Are these special in CL?
(defun main (args)
  (handle-command-line
    ;; the spec as above, or prepared with prepare-command-line-options-specification
    +command-line-spec+
    ;; the function to call with the arguments as parsed
    'dlc-switchboard
    ;; the arguments to parse
    :command-line args
    ;; the program name to use in case of an error message
    :name "dlc"
    ;; the number of mandatory positional arguments for this command (default: 0)
    :positional-arity 0
    ;; What to do with the rest of the positional arguments.
    ;; T means pass the list of the rest of the command-line-arguments as one lisp argument.
    ;; NIL means ignore it. A keyword means pass this rest as a keyword argument.
    :rest-arity t))

;;; get the input, perhaps from stdin, perhaps from a file

;;; Perform the work

;;; Emit the data

