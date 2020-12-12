(defsystem example-docs
  :class :package-inferred-system
  :defsystem-depends-on ("cl-gendoc")
  :build-operation build-docs-op
  :build-pathname "docs/build/"
  :pathname "docs/scripts/"
  :depends-on ("example-docs/builder"))


(asdf:register-system-packages "cl-gendoc" '(#:gendoc))
