(setq connections 
  '((Montreal . (Ottawa Kingston Quebec Halifax))
    (Ottawa . (Montreal Toronto))
    (Toronto . (Montreal Ottawa))
    (Halifax . (Montreal Quebec))
    (Quebec . (Montreal Halifax))
    (Kingston . (Montreal))))

(defun isfunctionp(lst)
  (let ((heads (mapcar #'car lst)))
    (equal (length heads) (length (remove-duplicates heads)))))

(print (isfunctionp connections)) ;returns T