(define storage (or (read-storage 'guild) (list) ))

(define (post-choice) (list-ref storage (random 0 (length storage))))
(define (add-choice) 
  (if (write-storage 'guild (cons (substring string-args 4) storage)) 
    "Choice added!" 
    "Could not add."
  )
)
(define (debug) 
    (make-attachment
      (string->bytes/utf-8 (string-join storage "\n"))
      "choices.txt"
      'text/plain
    )
)
(define (reset)
  (if (write-storage 'guild (list)) "Storage reset." "An error occurred when resetting storage")
)
(define (remove) 
  (if (write-storage 'guild (remove (substring string-args 7) storage)) 
    "Choice removed" 
    "Failed to remove."
  )
)
(define routes 
  (list
    (cons "add" add-choice)
    (cons "debug" debug)
    (cons "reset" reset)
    (cons "remove" remove)
  )
)
(define (route a b) (equal? a (car b)))

(if (and (non-empty-string? string-args) (equal? message-author "150753715727368193"))
  ( 
    (or 
      (cdar (member (car (read-args)) routes route)) 
      (post-choice)
    )
  )
  (post-choice)
)