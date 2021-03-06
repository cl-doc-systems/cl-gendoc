## Pros & Cons of cl-gendoc


### Pros

* Markdown format is supported by default. It als
  can be used in docstrings.
* Resulting HTML can be constructed from blocks of
  different types. By default, Markdown files and
  autogenerated package reference are supported.
* You can write an extensions to support other markups.
* Links to hyperspec from code snippets (if you download
  and unpack [HyperSpec archive](http://www.lispworks.com/documentation/common-lisp.html).


### Cons

* To create a multi-html documentation you have to
  write a function which will build each page separately.
* There is no any default theme. But you can provide a single CSS file.
* You can't adjust the way how HTML is generated, for example, to make
  an alternative template.
* Cross reference is half-automated, `cl-gendoc` only generates HTML
  anchors for symbols, but don't provides a convenient way to reference them.
* Header levels in documents and autogenerated reference are different.
* There is no docstring deindentation and docstrings in code will look ugly :(
* CLOS classes [are not supported yet](https://github.com/rpav/cl-gendoc/issues/10#issuecomment-416426621).
