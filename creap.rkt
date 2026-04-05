(define c (second (string-split (call-trick `corn "list") "\n" #:repeat? #t)))
(define n (- (string-length c) 3))
(define f (substring c 5 n))

(define o (if (string-contains? f " ")
    (string-append "reap \"" f "\"")
    (string-append "reap " f)
))

(call-trick 'corn o)