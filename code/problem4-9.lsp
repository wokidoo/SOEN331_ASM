(defun is-memberp(ele lst)
   (cond ((null lst) nil)
         ((= (car lst) ele) t)
         (t (is-memberp ele (cdr lst)))))

(defun equals-setsp(lst1 lst2)
   (cond ((not (= (length lst1) (length lst2))) nil)
         ((= (length lst1) 0) T)
         ((= (car lst1)(car lst2)) (equals-setsp(cdr lst1) (cdr lst2)))))
        

(print (is-memberp 1 '(1 2 3 4)))
(print (is-memberp 4 '(1 2 3 4)))
(print (is-memberp 5 '(1 2 3 4)))

(print (equals-setsp '(1 2 3) '(1 2 3)))
(print (equals-setsp '(1 2 3) '(1 2 3 4)))