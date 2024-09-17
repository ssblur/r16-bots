(if (equal? message-author "726509826557083680")
    (values (string-append "**chorb:** " string-args) (delete-caller))
    "You aren't chorb..."
)