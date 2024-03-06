(defvar stack1 nil)
(defvar stack2 nil)

(defun enqueue (element)
  (setf stack1 (cons element stack1)))

;; Dequeue function
(defun dequeue ()
  (loop for element in stack1
          do (setf stack2 (cons element stack2))
             (setf stack1 (cdr stack1)))
  (let 'x (car stack2)
  (setf stack2 (cdr stack2))
  (loop for element in stack2
          do (setf stack1 (cons element stack1))
             (setf stack2 (cdr stack2)))
  x))

(defun printQueue()
  (print stack1))


(setf stack1 nil)
(setf stack2 nil)

(enqueue 1)
(enqueue 2)
(enqueue 3)

(printQueue)

(dequeue)
(printQueue)

(enqueue 1)
(printQueue)

(dequeue)
(printQueue)
