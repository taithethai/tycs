(sentence "New if will cause this function to run into an infinite loop, because all arguments will be evaluated first")

(define (squares x) (if (empty? x) '() (sentence (* (first x) (first x)) (squares (bf x)))))

(define (switch x) (if (empty? x) '() (sentence (cond [(equal? 'me (first x)) 'you] [(equal? 'you (first x)) 'me] [else (first x)]) (switch (bf x)))))
(switch '(You told me that I should wake you up))

(define (ends-e x) (if (empty? x) x (sentence (if (equal? 'e (last (first x))) (first x) '()) (ends-e (bf x)))))
(ends-e '(please put the salami above the blue elephant))

(and #f (/))


