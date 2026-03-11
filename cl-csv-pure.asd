;;;; cl-csv-pure.asd
;;;; RFC 4180 CSV parsing with ZERO external dependencies

(asdf:defsystem #:cl-csv-pure
  :description "RFC 4180 compliant CSV parsing for Common Lisp"
  :author "Parkian Company LLC"
  :license "BSD-3-Clause"
  :version "1.0.0"
  :serial t
  :components ((:file "package")
               (:module "src"
                :components ((:file "csv")))))
