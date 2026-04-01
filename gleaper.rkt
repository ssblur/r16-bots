(display 
    (string-replace
        (string-replace
            (call-trick 'reaper string-args)
            "Reap"
            "Gleap"
        )
        "reap"
        "gleap"
    )
)
(call-trick 'gleep #f)