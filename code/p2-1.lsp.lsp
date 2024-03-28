(defvar airports
  '((YUL . (Montreal))
    (LCY . (London_UK))
    (LHR . (London_UK))
    (MIL . (Milan))
    (SFO . (San_Francisco))
    (SDQ . (Santo Domingo))))

(defun monitored (t_airports) 
    (mapcar 'car t_airports))

(print (monitored airports))