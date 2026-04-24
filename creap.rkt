(define l (string-split (call-trick `corn "list") "\n" #:repeat? #t))
(define ll (- (length l) 1))
(define c (list-ref l (+ (random ll) 1)))

(define (reap field)
    (define res (call-trick 'corn (string-append "reap " field)))
    (if (string-contains? res "doesn't exist!")
        (call-trick 'corn (string-append "reap \"" field "\""))
        res
    )
)

(if (= ll 0)
    "There are no fields to reap!"
    (string-append 
        (if (= ll 1) 
            "There is one field.\n"
            (string-append "There are " (number->string ll) " fields.\n")
        )
        (reap (substring c 5 (- (string-length c) 3)))
    )
)