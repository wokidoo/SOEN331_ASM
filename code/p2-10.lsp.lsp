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

(defun UpdateAirport (airport_id city)
  (setf (cdr (assoc airport_id airports))
        (list city))
  'SUCCESS)

(defun UpdateAirportOK (airport_id city)
    (if (AlreadyKnownAirport airport_id)
        (UpdateAirport airport_id city)
        'UNKNOWN-AIRPORT))

(print airports)
(print (UpdateAirportOK 'YUL 'Dorval))
(print airports)
(print (UpdateAirportOK 'AMS 'Amsterdam))