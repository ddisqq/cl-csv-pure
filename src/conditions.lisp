;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-csv-pure)

(define-condition cl-csv-pure-error (error)
  ((message :initarg :message :reader cl-csv-pure-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-csv-pure error: ~A" (cl-csv-pure-error-message condition)))))
