(defun rev (x)
  "Reverses list 'x'"
  (let ((head (car x)) (tail (cdr x)))
    (if x (append (rev tail) (list head)))))

(defun len (x)
  "Counts length of list 'x'"
  (if x (+ 1 (len (cdr x))) 0))

(defun sum-helper (x1 x2)
  "Counts term-wise sum of lists 'x1' and 'x2'.
   Implies that 'x1' is not longer than 'x2'"
  (if x1 (cons (+ (car x1) (car x2)) (sum-helper (cdr x1) (cdr x2))) x2))

(defun sum (x1 x2)
  "Counts term-wise sum of lists 'x1' and 'x2'"
  (if (<= (len x1) (len x2)) (sum-helper x1 x2) (sum-helper x2 x1)))

(defun sum-polynomes (p1 p2)
  (rev (sum (rev p1) (rev p2))))

(format t "~d" (sum-polynomes '(1 2 3 0 4) '(2 4 5 4)))
