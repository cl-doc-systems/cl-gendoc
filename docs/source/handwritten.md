## Handwritten documentation

I think the ability to write a large pieces of documentation which aren't bound to
a function, class or module is an important feature. This way you can tell the user
about some toplevel abstractions and give a bird eye view on the library or system.

For example, handwritten parts of the documentation can provide some code snippets
to demonstrate the ways, how to use the library:

```lisp

   (loop repeat 42
         collect (foo "bar" 100500))

```

And when you are talking about some function or class, you can reference it. But
this referencing is manual. You have to contruct links using Markdown markup.

For example, if I'm talking about `FOO` function, I can reference it like this
```[`EXAMPLE/APP:FOO`](#apiref-foo)``` and it will appear in the code as
the link [`EXAMPLE/APP:FOO`](#apiref-foo). Pay attention that the link does not have
a package name. It can be hard to use `cl-gendoc` do document a system containing
multiple packages.

Also `cl-gendoc` will not warn you if you will have a typo in a link name. The link just
will not work in the resulting documentation :(

It is also possible to refer documentation of packages. For example, here are
docs for [`example/app`](#reference-example/app) package.
