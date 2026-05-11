(define l (string-split (call-trick `corn "list") "\n" #:repeat? #t))
(define ll (- (length l) 1))

(if (= ll 0)
    "There are no fields."
    (if (= ll 1) 
        "There is one field.\n"
        (string-append "There are " (number->string ll) " fields.\n")
    )
)