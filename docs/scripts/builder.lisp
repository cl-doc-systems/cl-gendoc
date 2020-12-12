(defpackage #:example-docs/builder
  (:use #:cl)
  (:import-from :gendoc)
  (:import-from :example/app)
  (:import-from :example/utils)
  (:export #:build))
(in-package example-docs/builder)


(defun build ()
  (let ((output-filename "docs/build/index.html"))
    (ensure-directories-exist output-filename)
    (gendoc:gendoc (:output-filename output-filename
                    :css "simple.css")
      (:markdown-file "docs/source/index.md")
      (:markdown-file "docs/source/pros-and-cons.md")
      (:markdown-file "docs/source/handwritten.md")
      (:markdown-file "docs/source/reference.md")
      (:apiref :example/app
               :example/utils))))
