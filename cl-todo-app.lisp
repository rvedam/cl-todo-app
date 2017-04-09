;;;; cl-todo-app.lisp

(in-package #:cl-todo-app)

;;; "todo-web-app" goes here. Hacks and glory await!

(defclass todo-application ()
  ((app-instance :initform nil :initarg :app-instance :accessor app-instance)
   (portnum :initform 5000 :initarg :app-port :accessor port)
   (clack-handler :initform nil :accessor clack-handler)))

(defmethod initialize-instance :after ((app todo-application) &key)
  "constructs a proper instance of todo-application"
  (setf (slot-value app 'app-instance) (make-instance 'ningle:<app>)))

(defmethod start-webapp ((app todo-application) &key (port 5000))
  (setf (slot-value app 'clack-handler) (clack:clackup (slot-value app 'app-instance) :port port)))

(defmethod stop-webapp ((app todo-application))
  (clack:stop (slot-value app 'clack-handler)))

