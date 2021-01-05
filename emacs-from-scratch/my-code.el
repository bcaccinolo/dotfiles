
;; Personal elisp code

;; Insert current date
(defun b-insert-current-date ()
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +'%a %d %b %Y')")))

(defun org/select-insert-code-block ()
  "2020/07 - Interactively select the language for the code block to insert"
  (interactive)
  (let ((selected (funcall 'completing-read
                           "Select language "
                           '("clojure" "sql" "json"))))
    (org/insert-block selected)))

(defun org/insert-block-sql ()
  "insert an org code block for sql"
  (interactive)
  (org/insert-block "sql"))

(defun org/insert-block (language)
  "insert an org code block of the given language"
  (insert "#+BEGIN_SRC " language "\n<body>\n#+END_SRC"))

(defun hello ()
  "2020-07 - method inserting hello"
  (interactive)
  (newline)
  (insert "hello")
  (message "hello"))

(defun select-fruit ()
  "2020/07 - Interactively select a fruit and display it"
  (interactive)
  (let ((selected (funcall 'completing-read
                           "Select fruit "
                           '("apple" "ananas" "peach"))))
    (message "Selected fruit: %s" selected)))

(defun show-ls ()
  "2020/07 - Display 'ls' result in a dedicated buffer."
  (interactive)
  (let ((command "ls")
        (buffer "ls result buffer"))

    (shell-command command buffer)
    (pop-to-buffer buffer)
    (message buffer)))
