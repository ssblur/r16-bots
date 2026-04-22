(define l (string-split (call-trick `corn "list") "\n" #:repeat? #t))
(define ll (- (length l) 1))
(define c (list-ref l (+ (random ll) 1)))
(define f (substring c 5 (- (string-length c) 3)))

(define o (if (string-contains? f " ")
    (string-append "reap \"" f "\"")
    (string-append "reap " f)
))

(string-append 
    (if (= ll 1) 
        "There is one field."
        (string-append "There are " (number->string ll) " fields.\n")
    )
    (call-trick 'corn o)
)