(define fixes
  (list
    (cons "x.com" "girlcockx.com")
    (cons "bsky.app" "vxbsky.app")
    (cons "twitter.com" "stupidpenisx.com")
    (cons "tumblr.com" "tpmblr.com")
    (cons "reddit.com" "vxreddit.com")
    (cons "tiktok.com" "tfxktok.com")
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
    (if (empty? p)
        x
        (replace (string-replace 
            x 
            (string-append (car p) (car r))
            (string-append (car p) (cdr r))
        ) r (cdr p))
    )
)

(define (fix x f) 
    (if (empty? f)
        x
        (fix (replace x (car f) prefixes) (cdr f))
    )
)

(define (fix-reply) 
    (if (non-empty-string? reply-contents)
        (fix reply-contents fixes) 
        "Either include a link to fix or reply to a message. You're giving me *nothing* here."
    )
)

(if (non-empty-string? string-args)
    (fix string-args fixes)
    (fix-reply)
)