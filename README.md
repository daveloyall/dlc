dlc
===

dlc takes lispy template files (cl-template) as input and emits
Graphviz DOT language files as output.  It includes Common Lisp
functions for creating nodes and edges and setting attributes on
them.

If your normal workflow looks like this:

    digraph makin_diagrams {
        #Author graphs via dot language
        Editor -> dot -> "Image Viewer";
    }

... after dlc, it will look like this:

    digraph makin_diagrams {
        #Author graphs via Common Lisp
        Editor -> dlc -> dot -> "Image Viewer";
    }

