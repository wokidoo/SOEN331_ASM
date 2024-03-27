(setq connections 
  '((Montreal . (Ottawa Kingston Quebec Halifax))
    (Ottawa . (Montreal Toronto))
    (Toronto . (Montreal Ottawa))
    (Halifax . (Montreal Quebec))
    (Quebec . (Montreal Halifax))
    (Kingston . (Montreal))))

(defun getDestinations(source alst)
  (cdr (assoc source alst)))

(print (getDestinations 'Montreal connections)) ;Returns (Ottawa Kingston Quebec Halifax)