(defun columnar-addition-req (n1 n2 &optional (dozen 0))
  (if (> n2 0)
    (let ((rem_sum (+ (rem n1 10) (rem n2 10) dozen)))
      (+ (rem rem_sum 10) (* (columnar-addition-req (floor n1 10) (floor n2 10) (floor rem_sum 10)) 10)))
    n1))

(defun columnar-addition (n1 n2)
  (if (>= n1 n2) (columnar-addition-req n1 n2) (columnar-addition-req n2 n1)))

(format t "~d" (columnar-addition 2 3))
