(define l (string-split (call-trick `corn "list") "\n" #:repeat? #t))
(define ll (- (length l) 1))
(define c (list-ref l (+ (random ll) 1)))

(if (read-storage 'guild)
    (if (> ll 49) (write-storage 'guild #f) #f)
    (if (< ll 1) (write-storage 'guild #t) #f)
)

(define (reap field)
    (define res (call-trick 'corn (string-append "reap " field)))
    (if (or (string-suffix? res "doesn't exist!") (string-suffix? res "halve your cooldown!"))
        (call-trick 'corn (string-append "reap \"" field "\""))
        res
    )
)

(if (read-storage 'guild)
    (string-append 
        "It's not harvest season! There are only " 
        (number->string ll)
        " fields. Harvest season will start once there are 50 or more fields."
    )
    (string-append 
        (if (= ll 1) 
            "There is one field.\n"
            (string-append "There are " (number->string ll) " fields.\n")
        )
        (reap (substring c 5 (- (string-length c) 3)))
    )
)