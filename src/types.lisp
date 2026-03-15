;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-csv-pure)

;;; Core types for cl-csv-pure
(deftype cl-csv-pure-id () '(unsigned-byte 64))
(deftype cl-csv-pure-status () '(member :ready :active :error :shutdown))
