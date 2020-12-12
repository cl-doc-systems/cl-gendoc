(defpackage #:example/app
  (:use #:cl)
  (:import-from #:example/utils)
  (:documentation "This is docstring for the package.

The package contains a function which does it's job by
applying transformation to the first and second arguments.

CL-GENDOC does not support doctring deindentaion and this docstring
looks ugly in the code :(")
  (:export #:foo))
(in-package example/app)


(defun foo (first &key (other 100500))
  "This is example function.

Internally it calls [`EXAMPLE/UTILS:DO-THE-JOB`](#apiref-do-the-job)
to do the real job."
  (example/utils:do-the-job first other))
