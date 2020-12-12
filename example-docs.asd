(defsystem example-docs
  :defsystem-depends-on ("cl-gendoc")
  :pathname "docs/scripts/"
  :depends-on ("example-docs/builder"))


(asdf:register-system-packages "cl-gendoc" '(#:gendoc))
