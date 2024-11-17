(display 
    (string-replace
        (string-replace
            (call-trick 'reap #f)
            "Reap"
            "Peap"
        )
        "reap"
        "peap"
    )
)
(call-trick 'peep #f)