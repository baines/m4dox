# m4dox - generate HTML & man pages for a library with m4

m4dox is a simple set of m4 macros that can be used to generate both html pages
and man pages from source documents describing library functions.

Add or edit files in src/ then run *make*, and the HTML and man pages will be
created in two separate directories. Also look at *template/config.m4* to change
the name of the project etc.

It will automatically underline parameters and cross-reference names of 
functions mentioned in the description / see also sections. In the case of HTML 
these will be hyperlinks, and for man pages they'll be formatted in a way 
understood by the vim Man plugin to allow jumping between them.
