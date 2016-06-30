divert(-1)

# underline
define([_U], [<u>$1</u>])

# bold
define([_B], [<strong>$1</strong>])

# xref / link
define([_X], [<a href="$1.htm">$1</a>])

# header
define([HEAD], [dnl
<!doctype html>
<html>
<head>
<style>
html {
	background-color: #ddddee;
	font-family: monospace;
}
body {
	width: 480px;
	margin: 0 auto;
}
</style>
</head>
<body>
<section>
<h1>Name</h1>
<p>$1 - $2</p>
</section>
])

# footer
define([FOOT], [dnl
</body>
</html>
])

# synopsis
define([SYNO], [dnl
<section>
<h1>Synopsis</h1>
<p>
[#]include &lt;HEADER_FILE&gt;
</p>
<p>
$1  $2(_expargs($@))
</p>
</section>
])

# description
define([DESC], [_expxrefs(translit(XREF, [ ], [, ]))
<section>
<h1>Description</h1>
<p>
$1
</p>
</section>
])

# return value
define([RETV], [dnl
<section>
<h1>Return Value</h1>
<p>
$1
</p>
</section>
])

# see also
define([ALSO], [dnl
<section>
<h1>See Also</h1>
<p>
$1
</p>
</section>
])

divert(0)dnl
