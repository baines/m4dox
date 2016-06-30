divert(-1)

# underline
define([_U], [\fI$1\fP])

# bold
define([_B], [\fB$1\fP])

# xref / link
define([_X], [_B($1)(3)])

# header & empty footer
define([HEAD], [dnl
.TH $1 3 "DATE" "PROJECT_ABBR PROJECT_VERS" "PROJECT_NAME"
.SH NAME
$1 \- $2])
define([FOOT])

# synopsis
define([SYNO], [dnl
.SH SYNOPSIS
.B [#]include <HEADER_FILE>

.B $1  $2(_expargs($@))])

# description
define([DESC], [_expxrefs(translit(XREF, [ ], [, ]))
.SH DESCRIPTION
$1])

# return value
define([RETV], [dnl
.SH RETURN VALUE
$1])

# see also
define([ALSO], [dnl
.SH SEE [ALSO]
$1])

divert(0)dnl
