(defsystem example-docs
  :class :package-inferred-system
  :defsystem-depends-on ("cl-gendoc")
  :pathname "docs/scripts/"
  :depends-on ("example-docs/builder"))


(asdf:register-system-packages "cl-gendoc" '(#:gendoc))

(gendoc:define-gendoc-load-op :example-docs :example-docs/builder 'build)
