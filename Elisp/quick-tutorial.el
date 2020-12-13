

;; This buffer is for text that is not saved, and for Lisp evaluation.

;; To create a file, visit it with C-x C-f and enter text in its buffer.
(setq my-name "Bastien")

(insert "Hello!")Hello!Hello!Hello!Hello!
Hello!


(insert "Hello, I am a big fool? " my-name) Hello,
(defun hello () (insert "Hello, I am " my-name))
(hello)Hello, I am Bastien
(defun hello () (insert "Hello, I'm VitalyR"))

(defun hello (name) (insert "Hello " name))
(hello "you")
(switch-to-buffer-other-window "*test*")

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
  (hello "VitalyR")
  (other-window 1))

(format "Hello %s!\n" "visitor")
(defun hello (name)
  (insert (format "Hello, %s!\n" name)))
(hello "annie")

(let ((local-name "vitalyr"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(other-buffer 0)
(let ((new-name "欧阳"))
  (switch-to-prev-buffer)
  (hello new-name))

(defun hello (name)
  (insert (format "Hello %s!\n" name)))
(hello "you")

(defun greeting (name)
  (let ((your-name "Bastien"))
    (insert (format "Hello %s!\n\nI am %s."
                    name
                    your-name
                    ))))
(greeting "you")

(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
  (let ((local-name (read-from-minibuffer "Enter your name: ")))
    (insert
     (format "Hello!\n\nI am %s and you are %s!"
             from-name
             local-name))
    ))
(greeting "Bastien")

(setq list-of-names '("Sarah" "Chloe" "Mathilde"))
(setq list-of-names-2 '("Sarah" "VitalyR" "Annie"))

(car list-of-names)

(cdr list-of-names)

(push "Stephanie" list-of-names)

(mapcar 'hello list-of-names)

(defun greeting ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (other-window 1))

(greeting)

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello" nil t)
    (replace-match "Bonjour"))
  (other-window 1)
  )
(replace-hello-by-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "Bonjour \\(.+\\)!" nil t)
    (add-text-properties
     (match-beginning 1)
     (match-end 1)
     (list 'face 'bold)
     ))
  (other-window 1)
  )
(boldify-names)
