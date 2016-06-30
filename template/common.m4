divert(-1)
changequote(`[', `]')

# expands cross-references (given as command-line args)
define([_expxrefs], [ifelse($#, 0, , $#, 1, _expxref2($1), [_expxref2($1)$0(shift($@))])])
define([_expxref2], [define([$1], [_X([[$1]])])])

# expands arguments passed to synposis and sets the argument name to be
# underlined in all following text.
define([_expargs], [_exparg2(shift(shift($@)))])
define([_exparg2], [ifelse($#, 0, , $#, 1, _exparg3($1), [_exparg3($1), $0(shift($@))])])
define([_exparg3], [define([$2], [_U([[$2]])])][$1 $2])

divert(0)dnl
