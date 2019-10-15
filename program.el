



(defun find-matches(index)
  "Return string-match value for the index, null otherwise"
  (condition-case nil
      (string-match "abc" "abcdefgabc" index)
    (error nil))

  (lambda string-match-needing-index (look-for search-in index) (string-match look-for search-in index))

(with-current-buffer (find-file "./program.scala")
  (let ((buffer-text (buffer-substring-no-properties (point-min) (point-max)))
        (range (number-sequence 0 (length buffer-text)))
        (indexes (mapcar find-matches range)))
    (princ indexes)
  ))


(defun add(x y)
  "add stuff"
  (+ x y))

(apply (apply-partially #'add 1) (list 2))




