;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.
(setq my-name "Bastien")

(insert "Hello!")Hello!
Hello!

(insert "Hello, I am " my-name)Hello, I am Bastien
(defun hello () (insert "Hello, I am " my-name))
(hello)Hello, I am Bastien

(defun hello (name) (insert "Hello " name))
(hello "you")Hello you
(swith-to-buffer-other-window "*test*")

(progn 
(switch-to-buffer-other-window "*test*")
(hello "you"))

(progn 
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello "there"))

(progn
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello "you")
(other-window 1))

(format "Hello %s!\n" "visitor")

(let ((local-name "you"))
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello local-name)
(other-window 1))

(defun hello (name)
(insert (format "Hello %s!\n" name)))
(hello "you")
Hello you!
(defun hello(name)
    (insert (format "Hello, %s!\n" name)))
(hello "VitalyR")Hello, VitalyR!

(defun greeting (name) 
    (let ((your-name "Bastien"))
        (insert (format "Hello %s!\n\nI am %s."
            name
            your-name
            ))))
(greeting "you")
Hello you!

I am Bastien.
(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
    (let ((your-name (read-from-minibuffer "Enter your name:")))
        (insert (format "Hello! \n\nI am %s and your are %s."
            from-name
            your-name
           ))))
(greeting "Bastien")Hello! 

I am Bastien and your are Vitaly Ankh.

I am Bastien and your are VitalyR.

    
(defun greeting (from-name)
    (let ((your-name (read-from-minibuffer "Enter your name:")))
        (switch-to-buffer-other-window "*test*")
        (erase-buffer)
        (insert (format "Hello %s!\n\nI am %s." your-name from-name))
        (other-window 1)))
(greeting "Bastien")

(setq list-of-names '("Sarah" "Chloe" "Mathilde"))
(car list-of-names)
(cdr list-of-names)

(push "Stephanie" list-of-names)

(mapcar 'hello list-of-names)Hello Stephanie!
Hello Sarah!
Hello Chloe!
Hello Mathilde!

(defun greeting()
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (mapcar 'hello list-of-names)
    (other-window 1))
(greeting)

(hello "Sarah")Hello Sarah!
(defun hello(name)
    (format "Hello %s!\n" 
        name))
(hello "VitalyR")

(defun hello(name) (insert "Hello, \n" name))
(hello "VitalyR")Hello, VitalyR

(defun replace-hello-by-bonjour()
    (switch-to-buffer-other-window "*test*")
    (goto-char (point-min))
    (while (search-forward "Hello")
        (replace-match "Bonjour"))
    (other-window 1))
(replace-hello-by-bonjour)

(search-forward "Hello" nil t)
(defun hello-to-bonjour ()
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (mapcar 'hello list-of-names)
    (goto-char (point-min))
    (while (search-forward "Hello" nil t)
        (replace-match "Bonjour"))
    (other-window 1))
(hello-to-bonjour)

(defun boldify-names()
    (switch-to-buffer-other-window "*test*")
    (goto-char (point-min))
    (while (re-search-forward "Bonjour \\(.+\\)!" nil t)
      (add-text-properies (match-beginnig 1)
			  (match-end 1)
			  (list 'face 'bold)))
    (other-window 1))
(boldify-names)
