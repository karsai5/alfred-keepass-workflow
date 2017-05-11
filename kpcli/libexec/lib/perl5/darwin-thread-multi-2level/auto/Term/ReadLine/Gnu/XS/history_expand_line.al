# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 388 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/history_expand_line.al)"
#
#	a sample custom function
#

# The equivalent of the Bash shell M-^ history-expand-line editing
# command.

# This routine was borrowed from bash.
sub history_expand_line {
    my ($count, $key) = @_;
    my ($expanded, $new_line) = history_expand($Attribs{line_buffer});
    if ($expanded > 0) {
  	rl_modifying(0, $Attribs{end}); # save undo information
  	$Attribs{line_buffer} = $new_line;
    } elsif ($expanded < 0) {
  	my $OUT = $Attribs{outstream};
  	print $OUT "\n$new_line\n";
  	rl_on_new_line();
    }				# $expanded == 0 : no change
}

# end of Term::ReadLine::Gnu::XS::history_expand_line
1;
