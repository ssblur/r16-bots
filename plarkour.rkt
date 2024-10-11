(define (place color) (call-trick "place" (string-append string-args " " color)))
(define (block? args) 
    (and
        (odd? (car args))
        (even? (cadr args))
    )
)

(if (equal? (length (read-args)) 2)
    (if (block? (read-args))
        (place "forestgreen")
        (place "skyblue")
    )
    "Usage: `!!plarkour [x] [y]` to build parkour civilization"
)