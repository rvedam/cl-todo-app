;;;; package.lisp

(defpackage #:cl-todo-app
  (:use #:cl #:clack)
  (:export
   #:todo-application
   #:start-webapp
   #:stop-webapp))

(defpackage #:cl-todo-app.models
  (:use #:cl)
  (:export
   #:todo-item
   #:todo-list
   #:user))


