(display 
    (string-replace
        (string-replace
            (call-trick 'reaper string-args)
            "Reap"
            "Peap"
        )
        "reap"
        "peap"
    )
)
(call-trick 'peep #f)