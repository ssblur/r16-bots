(define c (second (string-split (call-trick `corn "list") "\n" #:repeat? #t)))
(define n (- (string-length c) 3))
(define f (substring c 5 n))

(call-trick 'corn (string-append "reap \"" f "\""))