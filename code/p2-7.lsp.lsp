(defvar airports
  '((YUL . (Montreal))
    (LCY . (London_UK))
    (LHR . (London_UK))
    (MIL . (Milan))
    (SFO . (San_Francisco))
    (SDQ . (Santo Domingo))))

(defparameter REPORT
  '(SUCCESS ERROR ALREADY-KNOWN-AIRPORT))

(defun AlreadyKnownAirport (airport_id)
    (not (null (find airport_id (mapcar #'car airports)))))

(defun AddAirport (airport_id city)
  (setf airports (cons (cons airport_id (list city)) airports))
  airports)

(defun AddAirportOK (airport_id city)
    (if (AlreadyKnownAirport airport_id)
        (progn 
        'ALREADY-KNOWN-AIRPORT)
        (progn
        (AddAirport airport_id city)
        'SUCCESS)))

 
(print (AddAirportOK 'YUL 'Amsterdam))
(print (AddAirportOK 'AMS 'Amsterdam))