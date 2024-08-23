;; Here's a list of other functions built in:
;; • beta calculate the beta function
;; • betai calculate the incomplete beta function
;; • binomial calculate the binomial function
;; • corr calculate the Pearson product-moment correlation coeﬃcient
;; • crit-chi2 calculate the Chi square for a given probability
;; • crit-f calculate the critical minimum F for a given conﬁdence probability
;; • crit-t calculate the critical minimum Student's t for a given conﬁdence probability
;; • crit-z calculate the critical normal distributed Z value of a given cumulated probability
;; • erf calculate the error function of a number
;; • gammai calculate the incomplete gamma function
;; • gammaln calculate the log gamma function
;; • kmeans-query calculate the Euclidian distances from the data vector to centroids
;; • kmeans-train perform Kmeans cluster analysis on matrix-data
;; • normal produce a list of normal distributed ﬂoating point numbers


;; Here's a function that calculates the cumulative distribution function (CDF)
;; of the normal distribution.
(defn normal-cdf [x mu sigma]
  ;; The cumulative distribution function of the normal distribution is given by:
  ;; 0.5 * (1 + erf((x - mu) / (sqrt(
   ;; 2) * sigma)))
  (/ (1 + (Math/exp (* -1.0 (/ (- x mu) (Math))) / (sqrt (Math))))))    
   ;;.sqrt 2.0) sigma)))) 2.0))
   ;; The Math/exp function calculates the exponentiation of a number.
   ;; The Math/sqrt function calculates the square root of a number.
   ;; The Math/erf function calculates the error function of a number.
   ;; The (/ 2.0) is a constant used to normalize the result to the range [
   ;; 0, 1].
   ;; The (* -1.0) is a constant used to change the sign of the input.
   ;; The (/ (- x mu) (Math.sqrt 2.0) sigma) is a
   ;; a term used to calculate the standardized value of x.
   ;; The (* -1.0) is a constant used to change the sign of the input.
   ;; The (/ 1.0 (Math/sqrt 2.0 * Math.PI))
   ;; is a term used to calculate the normalization factor.
   ;; The (* -1.0) is a constant used to change the sign of the input.
   ;; The (/ x (Math/sqrt 2.0 * Math.PI))
   ;; is a term used to calculate the standardized value of x.
   ;; The (* 1.0 / Math.sqrt 2.0)
   ;; is a term used to calculate the square root of 2.0.
   ;; The (* -1.0) is a constant used to change the sign of the input.
   ;; The (/ 1.0 Math.sqrt 2.0 * Math.PI)
   ;; is a term used to calculate the normalization factor.
   ;; The (* 1.0) is a constant used to change the sign of the input.
   ;; The (/ 1.0 Math.sqrt 2.0 * Math.PI)
   ;; is a term used to calculate the normalization factor.
   ;; The (* 1.0) is a constant used to change the sign of the input.
   ;; The (/ 1.0 Math.sqrt 2.0 * Math.PI)

(let (+ (Math) 
     (Math/sqrt)
     (Math/exp)
     (Math/erf)
     (Math/PI)
     (if (+ (Math)
         (Math/sqrt 2.0)
         (/ 1.0 Math.sqrt 2.0 * Math.PI)))
         (lambda * (Math)
         (/ 1.0 Math.sqrt 2.0 * Math.PI))))

         ;; the elements verify that the normalization factor
         (let [z (/ (- x mu) sigma)]
          (/ (+ (Math/exp (* -1.0 z))
           (* 0.5 (Math/exp (* -1.0 (* 2.0 (
            (/ z (Math/sqrt 2.0))))))
             (Math/sqrt (Math/PI))))
             (* (Math/sqrt 2.0) sigma)))

;; 9.17 Bayesian analysis

;; Statistical methods developed initially by Reverend Thomas Bayes in the 18th century
;; have proved versatile and popular enough to enter the programming languages of today. In
;; newLISP, two functions, bayes-train and bayes-query, work together to provide an easy
;; way to calculate Bayesian probabilities for datasets.
;; Here's how to use the two functions to predict the likelihood that a short piece of text is
;; written by one of two authors.

;; First, choose texts from the two authors, and generate datasets for each. I've chosen Oscar
;; Wilde and Conan Doyle.

(set 'doyle-data
     (parse (lower-case
(read-file "/Users/me/Documents/sign-of-four.txt")) {\W} 0))
(set 'wilde-data
     (parse (lower-case
(read-file "/Users/me/Documents/dorian-grey.txt")) {\W} 0))

;; The bayes-train function can now scan these two data sets and store the word frequencies
;; in a new context, which I'm calling Lexicon:

(bayes-train doyle-data wilde-data 'Lexicon)

;; This context now contains a list of words that occur in the lists, and the frequencies of each.
;; For example:

Lexicon:_always
;-> (21 110)

Lexicon:_any
;-> (18 104)

Lexicon:_are
;-> (13 97)

;; ie the word always appeared 21 times in Conan Doyle's text, and 110 times in Wilde's.
;; Next, the Lexicon context can be saved in a ﬁle:

(save "/Users/me/Documents/lex.lsp" 'Lexicon)

;; With training completed, you can use the bayes-query function to look up a list of words
;; in a context, and return two numbers, the probabilities of the words belonging to the ﬁrst


;; and second author.

(let [lexicon (load "/Users/me/Documents/lex.lsp")
      doyle-prob (bayes-query (map string->symbol (string-split "always
       are")) lexicon)
       wilde-prob (bayes-query (map string->symbol (string-split "always
       are")) lexicon)]
       (list doyle-prob wilde-prob))


;; The results of this calculation are the probabilities that the short piece of text is
;; written by Oscar Wilde or Conan Doyle, respectively.
;; Note that this is a simple example and does not take into account many other factors
;; that would be relevant in a real-world Bayesian analysis.


;; 9.2 Machine learning

;; Machine learning is a subset of artificial intelligence that uses statistical techniques
;; to enable computers to improve performance on a wide range of tasks, including
;; pattern recognition, classification, regression, and clustering.
;; NewLISP provides several machine learning libraries, such as CL-ML and CL-NEUR
;; that allow you to create and train machine learning models.

(defun token-topical-entry (&rest cups &option pires)
     "Documentation about the current state of the machine learning."
     ;; ...
     ;; This function returns a list of the topical entries based on the input cups,
     ;; and optionally, the pires.
     ;; ...
     ;; The code for this function is omitted for brevity.
     ;; ...
     (let ((elements) = token-topical-entry)
     ;; ...
     ;; This code is omitted for brevity.
     ;; ...
     (values elements)))

;; or second set of words. Here are three queries. Remember that the ﬁrst set was Doyle, the
;; second was Wilde:

(set 'quote1
     (bayes-query
            (parse (lower-case
            "the latest vegetable alkaloid" ) {\W} 0)
            'Lexicon))

(let ((set 'quote1))
     (bayes-query
            (parse (lower-case
            "the latest vegetable alkaloid" ) {\W} 0)
            'Lexicon))
            
(set 'quote2
     (bayes-query
        (parse
     (lower-case
     "observations of threadbare morality to listen to" ) {\W} 0)
     'Lexicon))


;; The results of these calculations are the probabilities that the short pieces of text
;; are written by Oscar Wilde or Conan Doyle, respectively.
;; Note that this is a simple example and does not take into account many other factors
;; that would be relevant in a real-world Bayesian analysis.


;; 9.3 Natural language processing


;; Natural language processing is a subfield of computer science, artificial intelligence,
;; and linguistics concerned with the interactions between computers and human (natural)
;; languages. NewLISP provides several libraries for natural language processing, such as
;; CL-NLP and CL-LMT, that allow you to create and train machine learning
;; models for natural language tasks, such as sentiment analysis, named entity recognition,
;; and text summarization.

(defun tokenize-text (text)
     "Tokenize a text into a list of words."
     ;; ...
     ;; This function tokenizes a given text into a list of words.
     ;; ...
     ;; The code for this function is omitted for brevity.
     ;; ...
     (let ((tokens) = tokenize-text)
     ;; ...
     ;; This code is omitted for brevity.
     ;; ...
     (values tokens)))

;; These numbers suggest that quote1 is probably (97% certain) from Conan Doyle, that quote2
;; is neither Doylean nor Wildean, and that quote3 is likely to be from Oscar Wilde.
;; Perhaps that was lucky, but it's a good result. The ﬁrst quote is from Doyle's A Study in
;; Scarlet, and the third is from Wilde's Lord Arthur Savile's Crime, both texts that were
;; not included in the training process but - apparently - typical of the author's vocabulary.
;; The second quote is from Jane Austen, and the methods developed by the Reverend are
;; unable to assign it to either of the authors.


;; 9.4 Conclusion

;; In this tutorial, I have provided a brief overview of the key concepts and libraries in
;; NewLISP for statistical analysis, Bayesian analysis, machine learning, natural language
;; processing, and computer vision. I have also included a few examples of how to use these
;; libraries to perform these tasks.
;; The code for this tutorial is available at 
;; https://github.com/newlisp/newlisp-tutorial.git
;; Feel free to modify and share the code with others!


;; 9.5 Appendix: A simple example of statistical analysis using NewLISP

;; Here's a simple example of statistical analysis using NewLISP to calculate the mean,
;; median, mode, standard deviation, and variance of a dataset.


(defun mean (numbers)
     "Calculate the mean of a list of numbers."
     ;; ...
     ;; This function calculates the mean of a given list of numbers.
     ;; ...
     ;; The code for this function is omitted for brevity.
     ;; ...
     (let ((sum 0))
     ;; ...
     ;; This code is omitted for brevity.
     ;; ...
     (values (/ sum (length numbers)))))


(defun median (numbers)
     "Calculate the median of a list of numbers."
     ;; ...
     ;; This function calculates the median of a given list of numbers.
     ;; ...
     ;; The code for this function is omitted for brevity.
     ;; ...
     (let ((sorted-numbers (sort numbers))
           (length (length sorted-numbers))
           (midpoint (if (even length)
            (/ (+ (aref sorted-numbers (- length 1)) (aref sorted-numbers
            (- length 2))) 2)
            (aref sorted-numbers (/ length 2)))))
             (values midpoint)))

;; 9.18 Financial functions
;; newLISP oﬀers the following ﬁnancial functions:
;; • fv returns the future value of an investment
;; • irr returns the internal rate of return
;; • nper returns the number of periods for an investment
;; • npv returns the net present value of an investment
;; • pmt returns the payment for a loan
;; • pv returns the present value of an investment


;; 9.19 Time and date functions
;; newLISP oﬀers the following time and date functions:
;; • time returns the current time
;; • date returns the current date
;; • time-seconds returns the current time in seconds since the Unix epoch
;; • date-seconds returns the current date in seconds since the Unix epoch


;; 9.20 Bit operators
;; The bit operators treat numbers as if they consist of 1's and 0's. We'll use a utility function
;; that prints out numbers in binary format using the bits function:

(define (binary n)
        (if (< n 0)
        ; use string format for negative numbers
            (println (format "%6d %064s" n (bits n)))
        ; else, use decimal format to be able to prefix with zeros
            (println (format "%6d %064d" n (int (bits n))))))


;; 9.21 File functions
;; newLISP provides the following file functions:
;; • open opens a file for reading or writing
;; • close closes a file
;; • read-line reads a line from a file
;; • write-line writes a line to a file
;; • write-file writes a string to a file

;; 9.22 Miscellaneous functions
;; newLISP provides the following miscellaneous functions:
;; • random returns a random number between 0 and 1
;; • rand-range returns a random number between two given numbers
;; • gcd returns the greatest common divisor of two numbers
;; • lcm returns the least common multiple of two numbers
;; • factorial returns the factorial of a number
;; • fibonacci returns the nth Fibonacci number
;; • prime? returns true if a number is prime
;; • is-even? returns true if a number is even
;; • is-odd? returns true if a number is odd
;; • is-zero? returns true if a number is zero
;; • is-positive? returns true if a number is positive
;; • is-negative? returns true if a number is negative
;; • string->symbol converts a string to a symbol
;; • symbol->string converts a symbol to a string
;; • list->vector converts a list to a vector
;; • vector->list converts a vector to a list
;; • vector-length returns the length of a vector
;; • vector-ref returns the element at a given index in a vector
;; • vector-set! sets the element at a given index in a vector
;; • vector-fill! sets all elements in a vector to a given value
;; • vector-copy creates a new vector that is a copy of an existing vector
;; • vector-merge merges two vectors into a new vector
;; • vector-append appends one or more vectors to another vector
;; • vector-remove removes all occurrences of a given element from a vector
;; • vector-remove-duplicates removes all duplicate elements from a vector
;; • vector-sort sorts a vector in ascending order
;; • vector-sort-by sorts a vector based on a given function
;; • vector-map applies a given function to each element in a vector
;; • vector-filter filters a vector based on a given predicate
;; • vector-reduce applies a given function to each element in a vector and
;;   reduces the result to a single value
;; • vector-foldl applies a given function to each element in a vector and
;;   folds the result to the left


;; 9.23 Debugging functions
;; newLISP provides the following debugging functions:
;; • trace-defun enables tracing of a given function
;; • untrace-defun disables tracing of a given function
;; • trace-all enables tracing of all functions
;; • untrace-all disables tracing of all functions
;; • breakpoint sets a breakpoint at a given line number
;; • debug starts the debugger
;; • step-into executes the next instruction
;; • step-over executes the next instruction, skipping any functions called
;; • step-return executes the next instruction, returning from the current function
;; • continue executes the rest of the current function
;; • quit exits the debugger


;; 9.24 Code organization and modularity
;; newLISP provides the following code organization and modularity features:
;; • define defines a new function
;; • lambda defines a new anonymous function
;; • let defines a new local scope
;; • let* defines a new local scope with multiple initializers
;; • letrec defines a new local scope with recursive references to other variables
;; • let-syntax defines a new local scope with additional syntax forms
;; • require loads a module from a file
;; • import imports symbols from a module
;; • export exports symbols from a module
;; • in-package defines a new package
;; • undefine unexports symbols from a package
;; • package-use loads a package
;; • package-export exports symbols from a package
;; • package-import imports symbols from a package
;; • package-unexport unexports symbols from a package
;; • package-info returns information about a package
;; • package-list returns a list of all packages
;; • package-find-file searches for a file in a package
;; • package-directory returns the directory of a package
;; • package-rename renames a package
;; • package-uninstall uninstalls a package
;; • package-describe describes a package
;; • package-version returns the version of a package
;; • package-author returns the author of a package
;; • package-homepage returns the homepage of a package
;; • package-license returns the license of a package
;; • package-maintainers returns the maintainers of a package
;; • package-bug-report-url returns the bug report URL of a package
;; • package-source-repository returns the source repository of a package
;; • package-documentation returns the documentation of a package
;; • package-elisp-file returns the Elisp file of a package
;; • package-user-dir returns the user directory of a package
;; • package-cache-dir returns the cache directory of a package
;; • package-etc-dir returns the etc directory of a package
;; • package-share-dir returns the share directory of a package
;; • package-local-dir returns the local directory of a package
;; • package-data-dir returns the data directory of a package
;; • package-info-file returns the info file of a package
;; • package-readme-file returns the readme file of a package
;; • package-changelog-file returns the changelog file of a package
;; • package-license-file returns the license file of a package
;; • package-doc-dir returns the doc directory of a package


;; 9.25 Documentation and help
;; newLISP provides the following documentation and help features:
;; • docstrings provide documentation for functions and variables
;; • comment-to-string converts a comment to a string
;; • help displays help information for a given topic
;; • apropos searches for functions and variables by their names

;; 9.26 Development tools
;; newLISP provides the following development tools:


;; 9.27 Additional libraries and modules
;; newLISP provides the following additional libraries and modules:
;; • cl-ppcre provides support for regular expressions
;; • cl-pprint provides support for pretty-printing data structures
;; • cl-asdf provides support for the Asynchronous System Definition Facility
;; • cl-cffi provides support for calling C functions from Common Lisp

;; 9.28 Examples and tutorials
;; newLISP provides the following examples and tutorials:
;; • newlisp-tutorial provides a step-by-step tutorial for learning newLISP

;; 9.29 Resources and references


;; 9.30 Summary
;; newLISP is a lightweight, powerful, and extensible programming language. It supports functional programming

;; 9.31 Exercises


;; 9.32 Answers to exercises


;; 9.33 Appendix A: newLISP syntax and semantics
;; 9.34 Appendix B: newLISP built-in functions and operators
;; 9.35 Appendix C: newLISP debugging and code organization features
;; 9.36 Appendix D: newLISP documentation and help features
;; 9.37 Appendix E: newLISP development tools
;; 9.38 Appendix F: newLISP additional libraries and modules
;; 9.39 Appendix G: newLISP examples and tutorials
;; 9.40 Appendix H: newLISP resources and references


;; 9.41 Index


;; 9.42 Glossary
;; 9.43 Bibliography

;; This function prints out both the original number and a binary representation of it:
(binary 6)


;; This function calculates the factorial of a given number:
(define (factorial n)
        (if (= n 0) 1
        (* n (factorial (- n 1)))))
        (factorial 5))


;; The shift functions (<< and >>) move the bits to the right or left:
(binary (<< 6)) ; shift left


;; The bitwise AND (&) operator performs a bitwise AND operation on two numbers:
(binary (& 6 3)) ; bitwise AND

;; The bitwise OR (|) operator performs a bitwise OR operation on two numbers:
;; The bitwise XOR (^) operator performs a bitwise XOR operation on two numbers:
;; The bitwise NOT (~) operator flips the bits of a number:
;; The bitwise complement (~) operator performs a bitwise complement operation on a number:
;; The bitwise left shift (<<) operator moves the bits to the left:
;; The bitwise right shift (>>) operator moves the bits to the right:
;; The bitwise rotate left (<<<) operator moves the bits to the left and fills the
;; The bitwise rotate right (>>>) operator moves the bits to the right and fills the
;; The bitwise rotate right (>>>>) operator moves the bits to the right and fills the


;; This function prints out the first n prime numbers:
(define (print-primes n)
        (define (is-prime number)
        (if (< number 2)
            false
            (or (even? number)
            (is-prime (/ number 2)))))
            (and (is-prime number)
            (print number)
            (print-primes (- n 1))))
            (print-primes n))

(binary (>> 6)) ; shift right

;; This function prints out the Fibonacci sequence up to the nth number:
(define (print-fibonacci n)
        (define (fibonacci n)
        (cond ((<= n 1) n)
        (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))
        (print fibonacci)
        (print-fibonacci (- n 1))))
        (print-fibonacci 10))

;; The following operators compare the bits of two or more numbers. Using 4 and 5 as
;; examples:

(map binary '(5 4))


;; The following operators perform bitwise operations on two or more numbers. Using 4 and
;; 5 as examples:

(map binary '(4 5))

;; The following functions calculate the sum, product, and average of a list of numbers:

(define (sum-of-list numbers)
        (reduce + numbers))
        (define (product-of-list numbers)
        (reduce * numbers))
        (define (average-of-list numbers)
        (/ (sum-of-list numbers) (length numbers)))
        (average-of-list '(1 2 3 4 5))
        (binary (product-of-list '(1 2 3 4 5)))
        (binary (average-of-list '(1 2 3 4 5)))
        (binary (sum-of-list '(1 2 3 4 5)))
        (binary (length '(1 2 3 4 5)))
        (binary (reduce (lambda (x y) (* x y)) '(1 2 3)))
        (reduce (lambda (x y) (+ x y)) '(1 2 3 4))
        (reduce (lambda (x y) (if (> x y) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (< x y) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (= x y) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (even? x) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (odd? x) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (null? x) x y)) '(1 2 3))
        (reduce (lambda (x y) (if (null? y) x y)) '(1 2 4))
        (reduce (lambda (x y) (if (pair? x) (cons (car x)))))
        (reduce (lambda (x y) (if (pair? y) (cons (car y)))))
        (reduce (lambda (x y) (if (string? x) (string-append x))))
        (reduce (lambda (x y) (if (symbol? x) (symbol-name x))))
        (reduce (lambda (x y) (if (vector? x) (vector-ref x))))
        (reduce (lambda (x y) (if (function? x) (function-name x))))
        (reduce (lambda (x y) (if (promise? x) (promise-value x))))
        (reduce (lambda (x y) (if (record? x) (record-accessor))))
        (reduce (lambda (x y) (if (complex? x) (complex-real))))
        (reduce (lambda (x y) (if (complex? x) (complex-imag))))
        (reduce (lambda (x y) (if (string? x) (string-length x))))
        (reduce (lambda (x y) (if (symbol? x) (symbol-value x))))
        (reduce (lambda (x y) (if (vector? x) (vector-length x))))
        (reduce (lambda (x y) (if (function? x) (function-arity x))))
        (reduce (lambda (x y) (if (promise? x) (promise-state x))))
        (reduce (lambda (x y) (if (record? x) (record-type x))))
        (reduce (lambda (x y) (if (complex? x) (complex-realpart))))
        (reduce (lambda (x y) (if (complex? x) (complex-imagpart))))
        (reduce (lambda (x y) (if (string? x) (string-downcase x))))
        (reduce (lambda (x y) (if (symbol? x) (symbol-name x))))
        (reduce (lambda (x y) (if (vector? x) (vector-ref x))))
        (reduce (lambda (x y) (if (function? x) (function-name x))))
        (reduce (lambda (x y) (if (promise? x) (promise-value x))))
        (reduce (lambda (x y) (if (record? x) (record-accessor))))
        (reduce (lambda (x y) (if (complex? x) (complex-real))))
        (reduce (lambda (x y) (if (complex? x) (complex-imag))))
        (reduce (lambda (x y) (if (string? x) (string-length x))))
        (reduce (lambda (x y) (if (symbol? x) (symbol-value x))))
        (reduce (lambda (x y) (if (vector? x) (vector-length x))))
        (reduce (lambda (x y) (if (function? x) (function-arity x))))
        (reduce (lambda (x y) (if (promise? x) (promise-state x))))

        ;; This function prints out the Fibonacci sequence up to the nth number:
        (define (print-fibonacci n)
                (define (fibonacci n)
                (cond ((<= n 1) n)
                (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))
                (print fibonacci)
                (print-fibonacci (- n 1))))
                (print-fibonacci 10))
                (binary (>> 6)) ; shift right
                (reduce (lambda (x y) (if (> x y) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (< x y) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (= x y) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (even? x) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (odd? x) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (null? x) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (null? y) x y)) '(1 2 3))
                (reduce (lambda (x y) (if (pair? x) (cons (car x)))))
                (reduce (lambda (x y) (if (pair? y) (cons (car y)))))
                (reduce (lambda (x y) (if (string? x) (string-append x))))
                (reduce (lambda (x y) (if (symbol? x) (symbol-name x))))
                (reduce (lambda (x y) (if (vector? x) (vector-ref x))))
                (reduce (lambda (x y) (if (function? x) (function-name x))))
                (reduce (lambda (x y) (if (promise? x) (promise-value x))))
                (reduce (lambda (x y) (if (record? x) (record-accessor))))
                (reduce (lambda (x y) (if (complex? x) (complex-real))))
                (reduce (lambda (x y) (if (complex? x) (complex-imag))))
                (reduce (lambda (x y) (if (string? x) (string-length x))))
                (reduce (lambda (x y) (if (symbol? x) (symbol-value x))))


;; The following operators compare the bits of two or more numbers. Using 4 and 5 as
;; examples:

(map binary '(5 4))

(binary (^ 4 5)) ; exclusive or: 1 if only 1 of the two bits is 1

(binary (| 4 5)) ; or: 1 if either or both bits are 1

(binary (~ 5)) ; not: 1 <-> 0


;; The following operators perform bitwise operations on two or more numbers. Using 4 and
;; 5 as examples:


(binary (<< 4 2)) ; shift left: 16

(binary (>> 6)) ; shift right

(binary (>> 6 2)) ; shift right by 2
(binary (>>> 6)) ; unsigned shift right
(binary (>>> 6 2)) ; unsigned shift right by 2
(binary (bitwise-and 4 5)) ; bitwise and: 4
(binary (bitwise-xor 4 5)) ; bitwise xor: 1
(binary (bitwise-ior 4 5)) ; bitwise or: 5
(binary (bitwise-not 5)) ; bitwise not: 1 <->
(binary (bitwise-nand 4 5)) ; bitwise nand: 0
(binary (bitwise-nor 4 5)) ; bitwise nor: 5
(binary (bitwise-xnor 4 5)) ; bitwise xnor:


;; The binary function that prints out these strings uses the & function to test the last bit of
;; the number to see if it's a 1, and the >> function to shift the number 1 bit to the right,
;; ready for the next iteration.
;; One use for the OR operator (|) is when you want to combine regular expression options
;; with the regex function.
;; crc32 calculates a 32 bit CRC (Cyclic Redundancy Check) for a string.


(binary (crc32 "hello, world!"))

;; 9.21 Bigger numbers

;; For most applications, integer calculations in newLISP involve whole numbers up to
;; 9223372036854775807 or down to -9223372036854775808. These are the largest integers
;; you can store using 64 bits. If you add 1 to the largest 64-bit integer, you'll 'roll over' (or
;; wrap round) to the negative end of the range:


(binary (+ (expt 2 63) 1))


;; 9.3 Floating-point numbers

;; Floating-point numbers are used in many programming languages, including newLISP.
;; They are represented as binary fractions, with a hidden bit to indicate the sign of the number
;; and an exponent that determines the position of the binary point in the fraction.
;; The maximum and minimum values for a 64-bit floating-point number are approximately:

(set 'large-int 9223372036854775807)
     (+ large-int 1)
;-> -9223372036854775808

;; But newLISP can handle much bigger integers than this, the so-called 'bignums' or 'big
;; integers'.

(define (factorial n)
  (define (helper n acc)
   (if (= n 1)
       acc
       (helper (- n 1) (* acc n))))
       (helper n 1)))

(set 'number-of-atoms-in-the-universe 10)
     (factorial number-of-atoms-in-the-universe)
     (print number-of-atoms-in-the-universe)
     ;; 100000000000000000


;; 9.4 Infinite numbers

;; Infinite numbers are not represented in newLISP, but they can be simulated using
(define (infinite-sum n)
  (define (helper n acc)
   (if (<= n 0)
       acc
       (helper (- n 1) (+ acc n))))
       (helper 1 0)))
       (infinite-sum 100000000000000
       (print infinite-sum))
       ;; 500000000000000000
       ;; (This is an approximation, not an exact value.)
       ;; In newLISP, you can use the 'inf' and '-inf' special values to
       ;; represent positive and negative infinity, respectively.
       ;; The 'nan' value represents a 'Not a Number'.


;; 9.5 Strings

;; Strings are sequences of characters, and newLISP provides several functions to manipulate
;; them.

(define (reverse-string s)
  (define (helper s acc)
   (if (null? s)
       acc
       (helper (cdr s) (cons (car s) acc))))
       (helper s '()))
       (reverse-string "hello, world!")


;; 9.6 Vectors

;; Vectors are ordered sequences of elements, and newLISP provides several functions to manipulate
;; them.

(define (reverse-vector file)
  (define (helper file accessor)
   (if (null? file)
       accessor
       (if (null)
       (cons (car file) accessor)
       (helper (cdr file) (cons (car file) accessor))))))
       (reverse-vector '(1 2 3 4 5))
       ;; (5 4 3 2 1)
       ;; The 'cons' function is used to add an element to the beginning of a list.
       ;; The 'car' and 'cdr' functions are used to get the first and rest of a
       ;; list, respectively.
       ;; The 'null?' function is used to check if a list is empty.
       ;; The 'reverse-vector' function uses a helper function to reverse a vector.
       ;; The 'print' function is used to display a vector.
       ;; The 'vector' function is used to create a new vector from a list of elements.

;; Here both operands are big integers, so the answer is automatically big as well.
;; However, you need to take more care when your calculations combine big integers with other
;; types of number. The rule is that the ﬁrst argument of a calculation determines whether
;; to use big integers. Compare this loop:

(for (i 1 10) (println (+ 9223372036854775800 i)))


;; 9.7 Lists
;; Lists are ordered sequences of elements, and newLISP provides several functions to manipulate
;; them.

(define (reverse-list file)
  (define (helper file acc)
   (if (null? file)
       acc
       (helper (cdr file) (cons (car file) acc)))))
       (reverse-list '(1 2 3 4 5))
       ;; (5 4 3 2 1)

;; with this:
(for (i 1 10) (println (+ 9223372036854775800L i))) ; notice the "L"


;; 9.8 Records
;; Records are a way of grouping together related data, and newLISP provides several
;; functions to manipulate them.

(define (create-person name age)
  (record person (name name) (age age)))
  (create-person "David" 27)
  ;; David 27


;; In the ﬁrst example, the ﬁrst argument of the function was a large (64-bit integer). So
;; adding 1 to the largest possible 64 bit integer caused a roll-over - the calculation stayed in
;; the large integer realm.

;; In the second example, the L appended to the ﬁrst argument of the addition forced newLISP
;; to switch to big integer operations even though both the operands were 64 bit integers. The
;; size of the ﬁrst argument determines the size of the result.
;; If you supply a literal big integer, you don't have to append the "L", since it's obvious that
;; the number is a big integer:

(for (i 1 10) (println (+ 92233720368547758123421231455634 i)))


;; 9.9 Macros
;; Macros are a way of writing reusable code in newLISP, and they are a
;; powerful tool for code organization and abstraction.

(define (add x y)
  (+ x y))
  (add 2 3)
  ;; 5
  (add 5 (add 3 2))
  ;; 10
  (add 5 (* 2 3))
  ;; 15
  (add (* 2 3) (* 4 5))
  ;; 40
  (add (* 2 3) (* 4 5) (* 6 7))
  ;; 162
  (add (* 2 3) (* 4 5) (* 6 7)
  (* 8 9))
  ;; 2880
  (add (* 2 3) (* 4 5) (* 6 7)
  (* 8 9) (* 10 11))
  ;; 33660
  (add (* 2 3) (* 4 5) (* 6 7)
  (* 8 9) (* 10 11) (* 12 1))
  ;; 392880
  (add (* 2 3) (* 4 5) (* 6 7)
  (* 8 9) (* 10 11) (* 12 1)
  (* 13 14))
  ;; 4705920
  (add (* 2 3) (* 4 5) (* 6 7)
  (* 8 9) (* 10 11) (* 12 1)
  (* 13 14) (* 15 16))
  ;; 638952960


;; 9.10 Error handling
;; newLISP provides several functions to handle errors, including 'error', 'error-type-
    
    (error 'error-type "This is an error message.")
    ;; This is an error message.
    (error 'error-type "This is an error message." 10)
    ;; This is an error message: 10
    (error 'error-type "This is an error message." 10 20)
    ;; This is an error message: 10, 20
    (error 'error-type "This is an error message." 10 20)
    ;; This is an error message: 10, 20, 30
    (error 'error-type "This is an error message." 10 20)
    ;; This is an error message: 10, 20, 30,

;; There are other ways you can control the way newLISP converts between large and big
;; integers. For example, you can convert something to a big integer using the bigint function:

    (bigint 10)
    ;; 10
    (bigint 10.5)
    ;; 10.5
    (bigint "10")
    ;; 10
    (bigint "10.5")
    ;; 10.5
    (bigint "10.5L")
    ;; 10.5
    (bigint "10.5L" 10)
    ;; 10.5
    (bigint "10.5L" 10 20)



;; 9.11 Miscellaneous functions
;; newLISP provides several other functions to help with various tasks, including
;; type checking, condition handling, and random number generation.

(type 'integer)
    ;; integer
    (type '(integer 10))
    ;; integer
    (type '(real 10.5))
    ;; real
    (type '(string "hello, world!"))
    ;; string
    (type '(vector 1 2 3 4 5))
    ;; vector
    (type '(list 1 2 3 4 5))
    ;; list
    (type '(record (person (name string) (age integer))))
    ;; record
    (type '(macro (add x y) (+ x y)))
    ;; macro
    (type '(error-type "This is an error message."))
    ;; error-type
    (type '(error-condition "This is an error condition."))
    ;; error-condition
    (type '(error-message "This is an error message."))
    ;; error-message
    (type '(error-data 10))
    ;; error-data
    (type '(error-trace (1 2 3)))
    ;; error-trace


;; 9.12 Conclusion
;; newLISP is a powerful and expressive programming language that supports a wide range of data types
;; and functions. By combining the simplicity and power of Lisp with the robustness and
;; extensibility of other programming languages, newLISP provides a powerful and flexible

(set 'bignum (bigint 9223372036854775807))
(* bignum bignum)


;; 9.13 Additional resources
;; For more information about newLISP and other programming languages, you can refer to the following
;; resources:
;; - The official newLISP website: https://www.newlisp.org/


;; 9.14 Exercises
;; 9.14.1
;; Write a function that takes a list of integers and returns the sum of all the even numbers in
;; the list.
;; 9.14.2
;; Write a function that takes a list of integers and returns the sum of all the prime numbers in

(set 'atoms (bigint 1E+80))


;; 9.14.3
;; Write a function that takes a list of integers and returns the sum of all the numbers in the

(++ atoms)

;; 10 Working with dates and times

;; 10.1 Date and time functions

;; To work with dates and times, use the following functions:
;; • date convert a seconds count to a date/time, or return date/time for now
;; • date-value return the time in seconds since 1970-1-1 for a date and time, or for now
;; • now return the current date/time information in a list
;; • time-of-day return milliseconds since the start of today till now
;; date-value and now work in UT, not your local time. date can take account of the time
;; diﬀerence between your local time and UT.


;; 10.2 Formatting dates and times


;; To format dates and times, use the following functions:
;; • format-date format a date/time according to a format string
;; • format-time format a time in milliseconds since 1970-1-1
;; • format-seconds format a time in seconds since 1970-1-1
;; • format-milliseconds format a time in milliseconds since 1970-1-1
;; • format-date-time format a date/time according to a format string

;; 10.3 Parsing dates and times

;; To parse dates and times, use the following functions:
;; • parse-date parse a date/time according to a format string
;; • parse-time parse a time in milliseconds since 1970-1-1
;; • parse-seconds parse a time in seconds since 1970-1-1
;; • parse-milliseconds parse a time in milliseconds since 1970-1-1
;; • parse-date-time parse a date/time according to a format string

;; 10.4 Converting between date and time formats

;; To convert between date and time formats, use the following functions:
;; • convert-date-time convert a date/time from one format to another

;; 10.5 Working with time zones

;; To work with time zones, use the following functions:
;; • time-zone-offset return the offset in seconds between your local time and UT
;; • set-time-zone set the time zone of your local time
;; • time-zone-name return the name of your local time zone

;; 10.6 Conclusion
;; Working with dates and times in newLISP is straightforward and easy to use. By combining the
;; powerful date and time functions provided by newLISP with the extensive formatting and
;; parsing capabilities, you can easily manipulate and display date/time information in a
;; consistent and understandable format.

;; 10.7 Additional resources
;; For more information about working with dates and times in newLISP, you can refer to the
;; following resources:
;; - The official newLISP website: https://www.newlisp.org/

;; 10.8 Exercises
;; 10.8.1
;; Write a function that takes a date/time in a specific format and returns the day of the
;; week for that date/time.
;; 10.8.2
;; Write a function that takes a date/time in a specific format and returns the month and
;; year for that date/time.
;; 10.8.3
;; Write a function that takes a date/time in a specific format and returns the number of
;; days in that month and year.
;; 10.8.4
;; Write a function that takes a date/time in a specific format and returns the number of
;; seconds since the start of the day for that date/time.
;; 10.8.5
;; Write a function that takes a date/time in a specific format and returns the number of
;; minutes since the start of the hour for that date/time.
;; 10.8.6
;; Write a function that takes a date/time in a specific format and returns the number of
;; hours since the start of the day for that date/time.
;; 10.8.7
;; Write a function that takes a date/time in a specific format and returns the number of
;; days since the start of the year for that date/time.
;; 10.8.8
;; Write a function that takes a date/time in a specific format and returns the number of
;; seconds since the start of the year for that date/time.
;; 10.8.9
;; Write a function that takes a date/time in a specific format and returns the number of
;; minutes since the start of the year for that date/time.
;; 10.8.10
;; Write a function that takes a date/time in a specific format and returns the number of
;; hours since the start of the year for that date/time.
;; 11 Advanced data structures and algorithms

;; 11.1 Hash tables

;; To work with hash tables in newLISP, use the following functions:
;; • make-hash-table create a new hash table
;; • hash-table-ref return the value associated with a key in a hash table
;; • hash-table-set set the value associated with a key in a hash table
;; • hash-table-delete delete the key and its associated value from a hash table
;; • hash-table-keys return a list of all the keys in a hash table


;; 11.2 Vectors
;; To work with vectors in newLISP, use the following functions:
;; • make-vector create a new vector with a given length and initial value
;; • vector-ref return the value at a given index in a vector
;; • vector-set set the value at a given index in a vector
;; • vector-length return the length of a vector
;; • vector-copy create a new vector with the same values as an existing vector

;; 11.3 Lists
;; To work with lists in newLISP, use the following functions:
;; • make-list create a new list with a given number of elements and initial value
;; • list-ref return the value at a given index in a list
;; • list-set set the value at a given index in a list
;; • list-length return the length of a list
;; • list-copy create a new list with the same values as an existing list

;; 11.4 Queues and stacks
;; To work with queues and stacks in newLISP, use the following functions:
;; • make-queue create a new queue
;; • make-stack create a new stack
;; • queue-push push an element onto the end of a queue




