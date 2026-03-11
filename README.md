# cl-csv-pure

RFC 4180 compliant CSV parsing for Common Lisp with ZERO external dependencies.

## Installation

```lisp
(asdf:load-system :cl-csv-pure)
```

## API

### Reading
- `read-csv` - Read entire CSV to list of rows
- `read-csv-row` - Read single row
- `with-csv-reader` - Iterate over rows
- `parse-csv-string` - Parse CSV from string

### Writing
- `write-csv` - Write rows to stream
- `write-csv-row` - Write single row
- `with-csv-writer` - Writer context

## Example

```lisp
;; Parse CSV
(parse-csv-string "a,b,c
1,2,3
4,5,6")
; => (("a" "b" "c") ("1" "2" "3") ("4" "5" "6"))

;; Write CSV
(with-output-to-string (s)
  (write-csv s '(("name" "age") ("Alice" "30"))))
; => "name,age
;     Alice,30
;     "
```

## RFC 4180 Compliance

- Handles quoted fields with embedded commas, quotes, and newlines
- Properly escapes quotes by doubling
- Supports CRLF and LF line endings

## License

BSD-3-Clause. Copyright (c) 2024-2026 Parkian Company LLC.
