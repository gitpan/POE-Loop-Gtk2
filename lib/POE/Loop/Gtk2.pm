# $Id: Gtk2.pm 26 2004-12-10 11:43:32Z martijn $

# Gtk2-Perl event loop bridge for POE::Kernel.

# Empty package to appease perl.
package POE::Loop::Gtk2;
BEGIN {
	warn (	"*\n",
		"* POE::Loop::Gtk2 is deprecated.\n",
		"* Please use POE::Loop::Glib instead\n",
		"*\n",
	);
}

use base qw(POE::Loop::Glib);
use strict;

use vars qw($VERSION);
$VERSION = do {my@r=(0,q$Rev: 26 $=~/\d+/g);sprintf"%d."."%04d"x$#r,@r};

1;
