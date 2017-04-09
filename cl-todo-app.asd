;;;; todo-web-app.asd

(asdf:defsystem #:cl-todo-app
  :description "Simple Todo Web Application in Ningle that utilizes Firebase"
  :author "Ramnarayan Vedam <rvedam@gmail.com>"
  :license "GPL"
  :depends-on (#:clack
               #:ningle
               #:caveman2)
  :serial t
  :components ((:file "package")
	       (:file "todo-list")
	       (:file "todo-item")
               (:file "cl-todo-app")))

