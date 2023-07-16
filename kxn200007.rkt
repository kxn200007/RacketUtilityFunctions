#lang racket

(provide (all-defined-out))

#|1. divisible-by-x?|# 
(define (divisible-by-x? x)
    (lambda (y) (cond ((= (modulo y x) 0) #t)
                      (else #f))))


#|2. function-9|# 
(define function-9
  (lambda (x)
    (x 9)))


#|3. my-map|# 
(define (my-map funct x)
  (cond ((empty? x) empty)
        (else (cons(funct (first x))
        (my-map funct (rest x))))))


#|4. pair-up|# 
(define (pair-up y x)
  (cond ((null? y) '())
        ((null? x) '())
        (else (cons (list (car y) (car x))
                (pair-up (rest y) (rest x))))))


 #|5. classify|#      
(define (classify-helper1 funct myList1)
    (cond ((null? myList1) myList1)
          ((funct (car myList1))(cons(car myList1) (classify-helper1 funct (rest myList1))))  
          (#t (classify-helper1 funct(rest myList1))))) 
(define (classify-helper2 funct myList2)
    (cond ((null? myList2) myList2)
        ((funct (car myList2))(classify-helper2 funct (rest myList2)))  
        (#t (cons (car myList2)(classify-helper2 funct (rest myList2)))))) 
(define (classify funct myList)
    (cons (classify-helper1 funct myList) (cons (classify-helper2 funct myList) '())))


#|6. is-member?|#
(define (is-member? funct member)
  (if (null? member) #f
  (if (equal? funct (car member)) #t
      (is-member? funct (rest member)))))

                                
#|7. my-sorted|#
(define (my-sorted? funct sorted)
  (if (<=(length sorted) 1) #t
  (if (funct(car sorted) (car(rest sorted)))
      (my-sorted? funct (rest sorted)) #f)))
                        
         
#|8. my-flatten|#
(define (my-flatten x)
  (cond ((null? x) '())
        ((pair? x)
        (append (my-flatten(car x)) (my-flatten (rest x))))
        (else (list x))))
    

#|9. upper-threshold|#
(define (upper-threshold myList x)
  (cond ((empty? myList) empty)
        ((< (car myList) x)
        (cons (first myList)(upper-threshold (rest myList) x)))
        (else (upper-threshold (rest myList) x))))


#|10. my-list-ref|#
(define (my-list-ref myList x)
  (cond ((null? myList)(display "ERROR: Index out of bounds"))
        ((= x 0)(car myList))
        (else (my-list-ref (rest myList)(- x 1)))))

