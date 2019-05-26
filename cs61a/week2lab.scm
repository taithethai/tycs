(define (substitute x y z) 
  (if (empty? x) 
      '() 
      (sentence (if (equal? (first x) y) 
          z 
          (first x)) (substitute (bf x) y z))))
(substitute '(tai loves pasta) 'pasta 'ramen)

(squares '(1 2 3 4 5))
'(1 4 9 16 25)

((g) 1) ; = 3
(define (g) (lambda (x) (+ x 2)))

(procedure arg arg2 arg3 ... argn)
(define (f) (lambda () (lambda (x) (+ 1 x))))
(define (f) (+ (lambda () (lambda () 2) 0)))
f
(f)
(f 3)
((f))
(((f)) 3)

(define (t f)
(lambda (x) (f (f (f x)))) )
(define (plusone x) (+ x 1))
((t 1+) 0)
 ((t (t 1+)) 0)
(((t t) 1+) 0)
(define (substitute tai loves pasta) (check to see if there are words left?) (parse the first word, is it the same as old word?) (do it on more words))

(conditional) (valueA) (valueB)

first
but first
last

7. Write and test the make-tester procedure. Given a word w as argument, make-tester returns a procedure
of one argument x that returns true if x is equal to w and false otherwise. Examples:
> ((make-tester 'hal) 'hal)
#t
> ((make-tester 'hal) 'cs61a)
#f
> (define sicp-author-and-astronomer? (make-tester 'gerry))
> (sicp-author-and-astronomer? 'hal)
#f



(define (make-tester x) (lambda (w) (equal? x w)))






(substitute '(tai loves pasta) 'pasta 'ramen)
(substitute '(tai (substitute '(loves pasta) 'pasta 'ramen)) 'pasta 'ramen)
(substitute '(tai (substitute '(loves (substitute '(pasta) 'pasta 'ramen)) 'pasta 'ramen)) 'pasta 'ramen)
