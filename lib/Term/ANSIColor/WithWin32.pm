## no critic (Modules::ProhibitAutomaticExportation)

package Term::ANSIColor::WithWin32;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict 'subs', 'vars';
use warnings;

if ($^O =~ /^(MSWin32)$/) { require Win32::Console::ANSI }

use Term::ANSIColor (); # XXX color() & colored() still imported?
no warnings 'redefine';

*import = \&Term::ANSIColor::import;

1;
#ABSTRACT: Use Term::ANSIColor and load Win32::Console::ANSI on Windows

=head1 SYNOPSIS

Use as you would L<Term::ANSIColor>.


=head1 DESCRIPTION

This module is a thin wrapper for L<Term::ANSIColor>. It loads
L<Win32::Console::ANSI> on Windows (an extra step needed to make ANSI escape
codes work). The rest is identical with Term::ANSIColor.


=head1 SEE ALSO

L<Term::ANSIColor>

L<Win32::Console::ANSI>

L<Term::ANSIColor::Conditional> now also tries to load Win32::Console::ANSI on
Windows.
