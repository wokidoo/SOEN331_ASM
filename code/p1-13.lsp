(setq connections 
  '((Montreal . (Ottawa Kingston Quebec Halifax))
    (Ottawa . (Montreal Toronto))
    (Toronto . (Montreal Ottawa))
    (Halifax . (Montreal Quebec))
    (Quebec . (Montreal Halifax))
    (Kingston . (Montreal))))

(print (assoc 'Montreal connections))
(print (assoc 'Toronto connections))
(print (assoc 'Halifax connections))
(print (assoc 'Quebec connections))