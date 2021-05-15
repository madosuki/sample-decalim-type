(ql:quickload :ironclad)

(declaim (ftype (function (string)
                          (values string &optional))
                add-space))
(defun add-space (s)
  (declare (optimize (speed 3) (debug 0) (safety 0)))
  (format nil " ~A " s))

(declaim (ftype (function (fixnum &optional (or fixnum bignum))
                          (values (or fixnum bignum) &optional))
                fact))
(defun fact (n &optional (result 1))
  (declare (optimize (speed 3) (debug 0) (safety 0)))
  (if (or (= n 0) (= n 1))
      result
      (fact (- n 1) (* result n))))

(defun main ()
  (print (dice 2 100))
  (print (fact 100000)))
