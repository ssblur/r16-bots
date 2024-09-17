(define face `(
    (2 2)
    (5 2)
    (2 5)
    (5 5)
    (3 6)
    (4 6)
    (10 2)
    (13 2)
    (10 5)
    (13 5)
    (11 6)
    (12 6)
))

(define (place color) (call-trick "place" (string-append string-args " " color)))

(if (equal? (length (read-args)) 2)
    (if (member (read-args) face)
        (place "saddlebrown")
        (place "pink")
    )
    "Usage: `!!plater [x] [y]` to place a tater-colored pixel."
)