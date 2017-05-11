# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 351 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/ornaments.al)"
#
#	Ornaments
#

# This routine originates in Term::ReadLine.pm.

# Debian GNU/Linux discourages users from using /etc/termcap.  A
# subroutine ornaments() defined in Term::ReadLine.pm uses
# Term::Caps.pm which requires /etc/termcap.

# This module calls termcap (or its compatible) library, which the GNU
# Readline Library already uses, instead of Term::Caps.pm.

# Some terminals do not support 'ue' (underline end).
our %term_no_ue = ( kterm => 1 );

sub ornaments {
    return $rl_term_set unless @_;
    $rl_term_set = shift;
    $rl_term_set ||= ',,,';
    $rl_term_set = $term_no_ue{$ENV{TERM}} ? 'us,me,,' : 'us,ue,,'
	if $rl_term_set eq '1';
    my @ts = split /,/, $rl_term_set, 4;
    my @rl_term_set
	= map {
	    # non-printing characters must be informed to readline
	    my $t;
	    ($_ and $t = tgetstr($_))
		? (Term::ReadLine::Gnu::RL_PROMPT_START_IGNORE
		   . $t
		   . Term::ReadLine::Gnu::RL_PROMPT_END_IGNORE)
		    : '';
	} @ts;
    $Attribs{term_set} = \@rl_term_set;
    return $rl_term_set;
}

# end of Term::ReadLine::Gnu::XS::ornaments
1;
