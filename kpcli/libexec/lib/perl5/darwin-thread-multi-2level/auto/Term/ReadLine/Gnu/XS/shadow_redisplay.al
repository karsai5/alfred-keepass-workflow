# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 487 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/shadow_redisplay.al)"
# redisplay function for secret input like password
# usage:
#	$a->{redisplay_function} = $a->{shadow_redisplay};
#	$line = $t->readline("password> ");
sub shadow_redisplay {
    @_tstrs = _tgetstrs() unless $_tstrs_init;
    # remove prompt start/end mark from prompt string
    my $prompt = $Attribs{prompt}; my $s;
    $s = Term::ReadLine::Gnu::RL_PROMPT_START_IGNORE; $prompt =~ s/$s//g;
    $s = Term::ReadLine::Gnu::RL_PROMPT_END_IGNORE;   $prompt =~ s/$s//g;
    my $OUT = $Attribs{outstream};
    my $oldfh = select($OUT); $| = 1; select($oldfh);
    print $OUT ($_tstrs[0],	# carriage return
		$_tstrs[1],	# clear to EOL
		$prompt, '*' x length($Attribs{line_buffer}));
    print $OUT ($_tstrs[2]	# cursor left
		x (length($Attribs{line_buffer}) - $Attribs{point}));
    $oldfh = select($OUT); $| = 0; select($oldfh);
}

# end of Term::ReadLine::Gnu::XS::shadow_redisplay
1;
