(in-package :cl-todo-app.models)

(defclass todo-item ()
  ((todo-list-id :initform nil :initarg :todo-list-id :accessor todo-list)
   (task :initform nil :initarg :task :accessor task)
   (complete :initform nil :initarg complete :accessor complete)))

;; constructor
(defmethod initialize-instance :after ((item todo-item) &key)
  (setf (slot-value item 'complete) nil))

