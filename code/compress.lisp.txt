(defun compress (lst)
  (if (null lst)
      nil
      (if (equal (car lst) (car (cdr lst)))
          (compress (cdr lst))
          (cons (car lst) (compress (cdr lst))))))

(print (compress '(a a a b c d d e))) ;=> (A B C D E)
(print (compress '())) ;=> NIL
(print (compress '(a b c c c a))) ;=> (A B C A)
(print (compress '(a a b b c c c c a b b))) ;=> (A B C A B)