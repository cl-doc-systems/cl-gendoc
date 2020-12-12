(defsystem example-docs
  :class :package-inferred-system
  :pathname "docs/scripts/"
  :license "Unlicense"
  :depends-on ("example-docs/builder"))


(asdf:register-system-packages "cl-gendoc" '(#:gendoc))
