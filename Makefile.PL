#!/usr/bin/env perl

use ExtUtils::MakeMaker;

sub MY::postamble {
   package MY;
   "\npredist: all\n" .
#   "\tcvs2cl\n" .
   "\t\$(MAKE) manifest\n" .
   "\t\$(MAKE) tardist\n"
}

WriteMakefile(
   MAKEFILE => 'Makefile',
   VERSION_FROM => 'lib/POE/Loop/Gtk2.pm',
   NAME => 'POE::Loop::Gtk2',
   PREREQ_PM => {
      'POE' => '0.30',
      'Gtk2' => '0',
      'POE::Loop::Glib' => '0.00022',
   },
   dist => {
      COMPRESS     =>'gzip',
      SUFFIX       =>'gz',
      DIST_DEFAULT => 'predist',
   },
);
