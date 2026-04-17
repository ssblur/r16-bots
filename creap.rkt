(define l (string-split (call-trick `corn "list") "\n" #:repeat? #t))
(define ll (- (length l) 1))
(define li (+ (random ll) 1))
(define c (list-ref l li))
(define n (- (string-length c) 3))
(define f (substring c 5 n))

(define o (if (string-contains? f " ")
    (string-append "reap \"" f "\"")
    (string-append "reap " f)
))

(string-append 
    (call-trick 'corn o) "\n"
    "There are " (number->string (- ll 1)) " fields remaining."
)