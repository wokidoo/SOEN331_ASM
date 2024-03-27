(defvar airports
  '((YUL . (Montreal))
    (LCY . (London_UK))
    (LHR . (London_UK))
    (MIL . (Milan))
    (SFO . (San_Francisco))
    (SDQ . (Santo Domingo))))

(defvar monitored (mapcar 'car airports))

(print monitored)