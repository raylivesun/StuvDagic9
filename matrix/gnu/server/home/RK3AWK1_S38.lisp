;; 9.11.1 General number tools

;; min and max work as you would expect though they always return ﬂoats. Like many of
;; the arithmetic operators, you can supply more than one value:

(max 1 2 13.2 4 2 1 4 3 2 1 0.2)
;-> 13.2
(min -1 2 17 4 2 1 43 -20 1.1 0.2)
;-> -20
(float? (max 1 2 3))
;-> true
(float? (min 1 2 3))
;-> true

;; 9.11.2 Rounding and truncation

(round 3.5)
;-> 4
(round -3.5)
;-> -4
(truncate 3.5)
;-> 3
(truncate -3.5)
;-> -3

;; 9.11.3 Modulus and remainder

(mod 10 3)
;-> 1
(mod -10 3)
;-> -1
(mod 3.5 2)
;-> 1.5
(mod -3.5 2)
;-> -1.5

(remainder 10 3)
;-> 1
(remainder -10 3)
;-> -1
(remainder 3.5 2)
;-> 1.5
(remainder -3.5 2)
;-> -1.5

;; 9.11.4 Exponentiation

(expt 2 3)
;-> 8
(expt 2 -3)
;-> 0.125
(expt 0.5 2)
;-> 0.25
(expt 0.5 -2)
;-> 0.0625

;; 9.11.5 Logarithms

(log 10)
;-> 1
(log 2)
;-> 0.30103
(log 100)
;-> 2
(log 1)
;-> 0
(log 0)
;-> -∞

(log 10 10)
;-> 1
(log 10 2)
;-> 0.30103
(log 10 0.1)
;-> -∞

;; 9.11.6 Trigonometric functions

(sin 0)
;-> 0
(sin (pi/2))
;-> 1
(sin (pi))
;-> 0
(cos 0)
;-> 1
(cos (pi/2))
;-> 0
(tan 0)
;-> 0
(tan (pi/4))
;-> 1
(tan (pi/2))
;-> undefined
(tan (pi))


;; 9.11.7 Hyperbolic functions

(sinh 0)
;-> 0
(sinh (pi/2))
;-> 1.175201193643801
(cosh 0)
;-> 1
(cosh (pi/2))
;-> 1.543080634815244
(tanh 0)
;-> 0
(tanh (pi/4))
;-> 0.995054753686730
(tanh (pi/2))
;-> undefined
(tanh (pi))


;; 9.11.8 Special mathematical constants

(e)
;-> 2.718281828459045


;; 9.11.9 Complex numbers

(complex 1 2)
;-> #C(1.0 2.0)
(magnitude (complex 1 2))
;-> 2.23606797749979
(phase (complex 1 2))
;-> 0.927295218001612
(polar (complex 1 2))
;-> (2.23606797749979
; 0.927295218001612)
(sin (complex 0 1))
;-> #C(0.5403023058681


;; 9.11.10 Random number generation

(random 10)
;-> 9
(random 10)
;-> 5
(random 10)
;-> 1
(random 10)
;-> 5
(random 10)
;-> 5

(rand-float 10)
;-> 5.998611779998784
(rand-float 10)
;-> 8.79873761676663
(rand-int 10)
;-> 5
(rand-int 10)
;-> 9
(rand-int 10)
;-> 4

(rand-normal 0 1)
;-> 1.646981752631675


;; 9.11.11 Error handling

(try
  (expt 2 0)
)
(catch arithmetic-error e
  (format "Arithmetic error: ~a" e))

(try
  (expt 2 "abc")
)
(catch type-error e
  (format "Type error: ~a" e))

(try
  (expt 2 1.5)
)
(catch invalid-number-error e
  (format "Invalid number error: ~a" e))

(try
  (expt 2 0)
)
(catch arithmetic-error e
  (format "Arithmetic error: ~a" e))

(try
  (expt 2 "abc")
)
(catch type-error e
  (format "Type error: ~a" e))

(try
  (expt 2 1.5)
)
(catch invalid-number-error e
  (format "Invalid number error: ~a" e))

(try
  (expt 2 0)
)
(catch arithmetic-error e
  (format "Arithmetic error: ~a" e))

(try
  (expt 2 "abc")
)
(catch type-error e
  (format "Type error: ~a" e))

(try
  (expt 2 1.5)
)
(catch invalid-number-error e
  (format "Invalid number error: ~a" e))

;; 9.11.12 Special forms

(let ((x 2))
  (* x x))
;-> 4

(let ((x 2)
      (y 3))
  (+ x y))


;; 9.11.13 Procedures


;; 9.11.14 Special operators

(let ((x 2)
      (y 3))
  (+ x y))

;; 9.11.15 Miscellaneous
(let ((x 2)
      (y 3))
  (list x y))

(let ((x 2)
      (y 3))
      (cons x y))

(let ((x 2)
      (y 3))
      (set! x 4)
      x)

(let ((x 2)
      (y 3))
      (if (<= x y) x y))
      4
      5)

(let ((x 2)
      (y 3))
      (cond ((<= x y) x)
            ((> x y) y)
            (else "Error: x and y must be equal")))


;; 9.11.16 Additional libraries

;; 9.11.17 Summary


;; 9.11.18 Appendices

;; 9.11.18.1 Frequently asked questions

;; 9.11.18.2 Glossary


;; 9.11.18.3 Exercises

;; 9.11.18.4 Solutions


;; 9.11.18.5 Bibliography


;; 9.11.18.6 Index


;; 9.11.18.7 Errata


;; 9.11.18.8 Glossary


;; 9.11.18.9 Exercises

;; 9.11.18.10 Solutions

;; 9.11.18.11 Bibliography

;; 9.11.18.12 Index

;; 9.11.18.13 Errata


;; 9.11.18.14 Glossary


;; 9.11.18.15 Exercises

;; 9.11.18.16 Solutions

;; 9.11.18.17 Bibliography

;; 9.11.18.18 Index

;; 9.11.18.19 Errata


;; 9.11.18.20 Glossary

;; The comparison functions allow you to supply just a single argument. If you use them with
;; numbers, newLISP helpfully assumes that you're comparing with 0. Remember that you're
;; using postﬁx notation:

(set 'n 3)
(> n)
;-> true, assumes test for greater than 0
(< n)
;-> nil, assumes test for less than 0
(set 'n 0)
(>= n)
;-> true


;; 9.11.18.21 Exercises

;; 9.11.18.22 Solutions

;; 9.11.18.23 Bibliography

;; 9.11.18.24 Index

;; 9.11.18.25 Errata

;; 9.11.18.26 Glossary

;; 9.11.18.27 Exercises

;; 9.11.18.28 Solutions

;; 9.11.18.29 Bibliography

;; 9.11.18.30 Index

;; 9.11.18.31 Errata

;; The factor function ﬁnds the factors for an integer and returns them in a list. It's a useful
;; way of testing a number to see if it's prime:


(factor 10)
;-> (2 5)


;; 9.11.18.32 Exercises

;; 9.11.18.33 Solutions

;; 9.11.18.34 Bibliography

;; 9.11.18.35 Index

;; 9.11.18.36 Errata

;; 9.11.18.37 Glossary

;; The factor function ﬁnds the factors for an integer and returns them in a list. It's a useful
;; way of testing a number to see if it's prime:

(factor 5)
;-> (5)
(factor 42)
;-> (2 3 7)
(define (prime? n)
        (and
        (set 'lst (factor n))
(= (length lst) 1)))


;; 9.11.18.38 Exercises

;; 9.11.18.39 Solutions

;; 9.11.18.40 Bibliography

;; 9.11.18.41 Index

;; 9.11.18.42 Errata

;; 9.11.18.43 Glossary

;; Or you could use it to test if a number is even:

(true? (find 2 (factor n)))
;-> true if n is even

;;  9.11.2 Floating-point utilities
; If omitted, the second argument to the pow function defaults to 2.

(pow 2)
;-> 4


;; 9.11.21 Exercises

;; 9.11.22 Solutions

;; 9.11.23 Bibliography

;; 9.11.24 Index

;; 9.11.25 Errata


(pow 2 2 2 2)
;-> 256; (((2 squared) squared) squared)
(pow 2 8)
;-> 256; 2 to the 8
(pow 2 3)
;-> 8
(pow 2 0.5)
;-> 1.414213562
; square root



;; 9.11.26 Exercises

;; 9.11.27 Solutions

;; 9.11.28 Bibliography

;; 9.11.29 Index

;; 9.11.30 Errata

;; 9.11.31 Glossary

;; You can also use sqrt to ﬁnd square roots. To ﬁnd cube and other roots, use pow:

(pow 8 (div 1 3))
;-> 2


;; 9.11.32 Exercises

;; 9.11.33 Solutions

;; 9.11.34 Bibliography

;; 9.11.35 Index

;; 9.11.36 Errata

;; 9.11.37 Glossary

;; 9.11.38 Exercises


;; The exp function calculates ex , where e is the mathematical constant 2.718281828, and x
;; is the argument:

(exp 1)
;-> 2.71828128

;; 9.11.39 Solutions

;; 9.11.40 Bibliography

;; 9.11.41 Index

;; 9.11.42 Errata

;; 9.11.43 Glossary

;; The log function calculates the natural logarithm of its argument:

(log 100)
;-> 2

;; 9.11.44 Exercises

;; 9.11.45 Solutions

;; 9.11.46 Bibliography

;; 9.11.47 Index

;; 9.11.48 Errata

;; Other mathematical functions available by default in newLISP are ﬀt (fast Fourier trans-
;; form), and iﬀt (inverse fast Fourier transform).

;; 9.12 Trigonometry

;; All newLISP's trigonometry functions, sin, cos, tan, asin, acos, atan, atan2, and the
;; hyperbolic functions sinh, cosh, and tanh, work in radians. If you prefer to work in
;; degrees, you can deﬁne alternative versions as functions:

(constant 'PI 3.141592653589793)
    (define (rad->deg r)
            (mul r (div 180 PI)))
    (define (deg->rad d)
            (mul d (div PI 180)))
    (define (sind _e)
            (sin (deg->rad (eval _e))))
    (define (cosd _e)
(cos (deg->rad (eval _e))))

(define (tand _e)
        (tan (deg->rad (eval _e))))
        (define (asind _e)
                (rad->deg (asin (eval _e))))
        (define (atan2d _e _f)
                (rad->deg (atan2 (deg->rad (eval _e)) (deg->rad (eval _f)))))


;; and so on.
;; When writing equations, one approach is to build them up from the end ﬁrst. For example,
;; to convert an equation like this:
;; {
;; α = arctan
;; sin λ cos ϵ−tan β sin ϵ
;; cos λ
;; }
;; build it up in stages, like this:

;; and so on...
;; It's often useful to line up the various expressions in your text editor:
(set 'right-ascension
     (atan2d
           (sub
(mul
      (sind lamda)
      (cosd epsilon))
(mul
      (tand beta)
      (sind epsilon)))
(cosd lamda)))

;; 9.12.1 Exercises

;; 9.12.2 Solutions

;; 9.12.3 Bibliography

;; 9.12.4 Index

;; 9.12.5 Errata

;; If you have to convert a lot of mathematical expressions from inﬁx to postﬁx notation, you
;; might want to investigate the inﬁx.lsp module (available from the newLISP website):



;; 9.12.6 Exercises

;; 9.12.7 Solutions

;; 9.12.8 Bibliography

;; 9.12.9 Index

;; 9.12.10 Errata

;; 9.12.11 Glossary

;; If you're dealing with trigonometric functions that involve large numbers or angles, you
;; might want to use the math.lisp module (available from the newLISP website):

;; 9.12.12 Exercises

;; 9.12.13 Solutions

;; 9.12.14 Bibliography

;; 9.12.15 Index

;; 9.12.16 Errata

(load "/usr/share/newlisp/modules/infix.lsp")
      (INFIX:xlate
      "(sin(lamda) * cos(epsilon)) - (cos(beta) * sin(epsilon))")
       ;->
      (sub (mul (sin lamda) (cos epsilon)) (mul (tan beta) (sin epsilon)))


;; 9.12.17 Exercises

;; 9.12.18 Solutions

 ;; 9.12.19 Bibliography
 ;; 9.12.20 Index
 ;; 9.12.21 Errata
 ;; 9.12.22 Glossary


;; 9.13 Arrays
;; newLISP provides multidimensional arrays. Arrays are very similar to lists, and you can
;; use most of the functions that operate on lists on arrays too.   


;; 9.13.1 Creating arrays
;; To create an array, you use the make-array function:

(define arr (make-array 5))


;; 9.13.2 Accessing elements
;; You can access elements of an array by indexing them with square brackets:

(set arr 0 10)
(set arr 1 20)
(set arr 2 30)
(set arr 3 40)
(set arr 4 50)
(print arr)
;-> (10 20 30 40 50)

;; 9.13.3 Modifying elements
;; You can modify the elements of an array in the same way you can modify the elements of a
;; list:

(set arr 2 60)
(print arr)
;-> (10 20 60 40 50)

;; A large array can be faster than a list of similar size. The following code uses the time
;; function to compare how fast arrays and lists work.

(for (size 200 1000)
     ; create an array
     (set 'arry (array size (randomize (sequence 0 size))))
     ; create a list
     (set 'lst (randomize (sequence 0 size)))
     (set 'array-time
               (time (dotimes (x (/ size 2))
     (nth x arry)) 100))
     ; repeat at least 100 times to get non-zero time!
     (set 'list-time
               (time (dotimes (x (/ size 2))
     (nth x lst)) 50))
     (println "with " size " elements: array access: "
      array-time
     "; list access: "
     list-time
     " "
     (div list-time array-time )))


;; 9.13.4 Exercises

;; 9.13.5 Solutions

;; 9.13.6 Bibliography

;; 9.13.7 Index

;; 9.13.8 Errata

;; 9.13.9 Glossary

;; 9.14 Strings
;; newLISP provides a powerful string manipulation library. Strings are immutable, so
;; you can't change them once they're created.


;; 9.14.1 Creating strings
;; You can create a string using the string function:

(print (string "Hello, " "world!"))
;-> Hello, world!

;; 9.14.2 Accessing characters
;; You can access characters in a string using the nth function:

(print (nth 0 (string "Hello, " "world!")))
;-> H

;; 9.14.3 Concatenating strings

;; The exact times will vary from machine to machine, but typically, with 200 elements, arrays
;; and lists are comparable in speed. As the sizes of the list and array increase, the execution
;; time of the nth accessor function increases. By the time the list and array contain 1000
;; elements each, the array is 2 to 3 times faster to access than the list.
;; To create an array, use the array function. You can make a new empty array, make a new
;; one and ﬁll it with default values, or make a new array that's an exact copy of an existing
;; list.


;; 9.14.4 Exercises

;; 9.14.5 Solutions

;; 9.14.6 Bibliography

;; 9.14.7 Index

;; 9.14.8 Errata

;; 9.14.9 Glossary

;; 9.15 Regular expressions
;; newLISP provides a powerful regular expression library. Regular expressions are a way to
;; match and manipulate strings.

;; 9.15.1 Creating regular expressions
;; You can create a regular expression using the regex function:


;; 9.15.2 Matching strings
;; You can match strings against regular expressions using the match function:

;; 9.15.3 Exercises

;; 9.15.4 Solutions

;; 9.15.5 Bibliography

;; 9.15.6 Index

;; 9.15.7 Errata

;; 9.15.8 Glossary

;; 9.16 Input and output
;; newLISP provides a powerful input and output library.

;; To make a new list that's a copy of an existing array, use the array-list function:


;; 9.16.1 Reading and writing files
;; You can read and write files using the read-file and write-file functions:

;; 9.16.2 Exercises

;; 9.16.3 Solutions

;; 9.16.4 Bibliography

;; 9.16.5 Index

;; 9.16.6 Errata

;; 9.16.7 Glossary

;; 9.17 Error handling
;; newLISP provides a powerful error handling library.


;; To tell the diﬀerence between lists and arrays, you can use the list? and array? tests:

(array? arry)
;-> true
(list? lst)
;-> true

;; 9.17.1 Creating error objects
;; You can create new error objects using the error function:

;; 9.17.2 Handling errors
;; You can handle errors using the handle-error function:

;; 9.17.3 Exercises

;; 9.17.4 Solutions

;; 9.17.5 Bibliography

;; 9.17.6 Index

;; 9.17.7 Errata

;; 9.17.8 Glossary

;; 9.18 Command-line arguments
;; newLISP provides a powerful command-line argument library.


;; 9.13.1 Functions available for arrays

;; The following general-purpose functions work equally well on arrays and lists: ﬁrst, last,
;; rest, mat, nth, setf, sort, append, and slice.
;; There are also some special functions for arrays and lists that provide matrix operations:
;; invert, det, multiply, transpose. See Matrices3 .
;; Arrays can be multi-dimensional. For example, to create a 2 by 2 table, ﬁlled with 0s,
;; use this:

(set 'arry (array 2 2 '(0)))


;; 9.18.1 Exercises

;; 9.18.2 Solutions

;; 9.18.3 Bibliography

;; 9.18.4 Index

;; 9.18.5 Errata

;; 9.18.6 Glossary

;; 9.19 Miscellaneous functions
;; newLISP provides a wide range of miscellaneous functions. Some of the most useful
;; are: ﬁnd, find-if, map, filter, reduce, and
;; foldl.
;; 9.19.1 Exercises


;; The third argument to array supplies some initial values that newLISP will use to ﬁll the
;; array. newLISP uses the value as eﬀectively as it can. So, for example, you can supply a
;; more than suﬃcient initializing expression:


;; 9.19.2 Solutions

;; 9.19.3 Bibliography

;; 9.19.4 Index

;; 9.19.5 Errata

;; 9.19.6 Glossary

;; 9.20 Miscellaneous macros
;; newLISP provides a wide range of miscellaneous macros. Some of the most useful
;; are: ﬁdef, ﬁnally, ﬁ
;; 9.20.1 Exercises

;; 9.20.2 Solutions

;; 9.20.3 Bibliography


;; 9.20.4 Index

;; 9.20.5 Errata

;; 9.20.6 Glossary

;; 9.21 Miscellaneous libraries
;; newLISP provides a wide range of miscellaneous libraries. Some of the most useful
;; are: cl-ppcre, cl-pprint, cl-pprint-pretty,
;; cl-pprint-indent, cl-pprint-objects, cl-pprint-
;; cl-pprint-indent-stream, cl-pprint-stream, cl-pp
;; cl-pprint-tab, cl-pprint-tab-stream, cl-pp
;; cl-pprint-tab-stream-pretty, cl-pprint-tab-stream
;; cl-pprint-tab-stream-pretty-stream, cl-pprint-tab
;; cl-pprint-tab-stream-pretty-stream-pretty,

;; or just provide a hint or two:
(set 'arry (array 2 2 (list 1 2)))
arry
;-> ((1 2) (1 2))
(set 'arry (array 2 2 '(42)))
arry
;-> ((42 42) (42 42))

;; This array initialization facility is cool, so I sometimes use it even when 
;; I'm creating lists:
(set 'maze (array-list (array 10 10 (randomize (sequence 0 10)))))


;; 9.21.1 Exercises

;; 9.21.2 Solutions

;; 9.21.3 Bibliography

;; 9.21.4 Index

;; 9.21.5 Errata

;; 9.21.6 Glossary

;; 9.14 Getting and setting values
;; To get values from an array, use the nth function, which expects a list of indices for the
;; dimensions of the array, followed by the name of the array:

(set 'size 10)
(set 'table (array size size (sequence 0 (pow size))))


;; 9.14.1 Exercises

;; 9.14.2 Solutions

;; 9.14.3 Bibliography

;; 9.14.4 Index

;; 9.14.5 Errata

;; 9.14.6 Glossary

;; 9.15.2 Getting and setting values
;; To get values from a list, use the nth function:

(set 'lst '(1 2 3 4 5))
(nth 0 lst)
;-> 1
(nth 3 lst)
;-> 4

;; 9.15.3 Exercises

;; 9.15.4 Solutions

;; 9.15.5 Bibliography

;; 9.15.6 Index

;; 9.15.7 Errata

;; 9.15.8 Glossary

;; 9.14 Getting and setting values

;; To get values from an array, use the nth function, which expects a list of indices for the
;; dimensions of the array, followed by the name of the array:

(set 'size 10)
(set 'table (array size size (sequence 0 (pow size))))


(dotimes (row size)
         (dotimes (column size)
                  (print (format {%3d} (nth (list row column) table))))
; end of row
(println))

(nth also works with lists and strings.)

;; As with lists, you can use implicit addressing to get values:

(set 'size 10)
(set 'table (array size size (sequence 0 (pow size))))
(table 3)
;-> (30 31 32 33 34 35 36 37 38 39)
(table 3 3)
;-> 33

;; To set values, use setf. The following code replaces every number that isn't prime with 0.
(set 'size 10)
(set 'table (array size size (sequence 0 (pow size))))
(dotimes (row size)
         (dotimes (column size)
                  (if (not (= 1 (length (factor (nth (list row column) table)))))
(setf (table row column) 0))))

table
;-> ((0 0 0 0 0 0 0 0 0
;     0 0 0 0 0 0 0 0 0

;; Instead of the implicit addressing (table row column), I could have written (setf (nth (list
;; row column) table) 0). Implicit addressing is slightly faster, but using nth can make code
;; easier to read sometimes.

;; 9.15 Matrices
;; There are functions that treat an array or a list (with the correct structure) as a matrix.

;; • invert returns the inversion of a matrix
;; • det calculates the determinant
;; • multiply multiplies two matrices
;; • mat applies a function to two matrices or to a matrix and a number
;; • transpose returns the transposition of a matrix
;; transpose is also useful when used on nested lists (see Association lists4 ).

;; 9.15.1 Exercises

;; 9.15.2 Solutions

;; 9.15.3 Bibliography

;; 9.15.4 Index

;; 9.15.5 Errata

;; 9.15.6 Glossary

;; 9.16 Statistics, ﬁnancial, and modelling functions

;; newLISP has an extensive set of functions for ﬁnancial and statistical analysis, and for
;; simulation modelling.
;; Given a list of numbers, the stats function returns the number of values, the mean, average
;; deviation from mean value, standard deviation (population estimate), variance (population
;; estimate), skew of distribution, and kurtosis of distribution:

(set 'data (sequence 1 10))
;->(1 2 3 4 5 6 7 8 9 10)
(stats data)
;; (10 5.5 2.5 3.02765035409749 9.16666666666667 0 -1.56163636363636)

