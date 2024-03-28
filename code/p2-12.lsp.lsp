(defvar airports
  '((YUL . (Montreal))
    (LCY . (London_UK))
    (LHR . (London_UK))
    (MIL . (Milan))
    (SFO . (San_Francisco))
    (SDQ . (Santo Domingo))))

(defparameter REPORT
  '(SUCCESS ERROR ALREADY-KNOWN-AIRPORT UNKNOWN-AIRPORT))

(defun AlreadyKnownAirport (airport_id)
    (not (null (find airport_id (mapcar #'car airports)))))

(defun DeleteAirport (airport_id)
  (setf airports (remove (assoc airport_id airports) airports))
  'SUCCESS)

(defun DeleteAirportOK (airport_id)
    (if (AlreadyKnownAirport airport_id)
        (DeleteAirport airport_id)
        'UNKNOWN-AIRPORT))

(print airports)
(print (DeleteAirportOK 'YUL))
(print airports)