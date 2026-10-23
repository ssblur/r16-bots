(define fixes
  (list
    '("x.com" "fxtwitter.com")
    '("bsky.app" "vxbsky.app")
    '("twitter.com" "fxtwitter.com")
    '("tumblr.com" "tpmblr.com")
    '("reddit.com" "rxddit.com")
    '("tiktok.com" "tfxktok.com")
    '("instagram.com" "kkinstagram.com")
  )
)

(define prefixes
    (list
        "https://"
        "http://"
        "https://www."
        "http://www."
    )
)

(define (replace x r p)
    (replace (string-replace 
        x 
        (string-append (car p) (car r))
        (string-append (car p) (cdr r))
    ) r (cdr p))
)

(define (fix x f) (fix (replace x (car f) prefixes) (cdr f)))

(define (fix-reply) 
    (if (non-empty-string? reply-contents)
        (fix reply-contents fixes) 
        (string-append 
            "!!fix will replace the following:\n * "
            (string-join (map (lambda (pair) (string-join pair " -> ")) fixes) "\n * " )
        )
    )
)

(if (non-empty-string? string-args)
    (fix string-args fixes)
    (fix-reply)
)