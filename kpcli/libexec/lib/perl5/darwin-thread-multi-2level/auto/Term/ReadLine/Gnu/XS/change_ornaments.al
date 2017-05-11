# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 454 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/change_ornaments.al)"
# sample function of rl_message()
sub change_ornaments {
    my($count, $key) = @_;	# ignored in this function
    rl_save_prompt;
    rl_message("[S]tandout, [U]nderlining, [B]old, [R]everse, [V]isible bell: ");
    my $c = chr rl_read_key;
    if ($c =~ /s/i) {
	ornaments('so,me,,');
    } elsif ($c =~ /u/i) {
	ornaments('us,me,,');
    } elsif ($c =~ /b/i) {
	ornaments('md,me,,');
    } elsif ($c =~ /r/i) {
	ornaments('mr,me,,');
    } elsif ($c =~ /v/i) {
	ornaments('vb,,,');
    } else {
	rl_ding;
    }
    rl_restore_prompt;
    rl_clear_message;
}

# end of Term::ReadLine::Gnu::XS::change_ornaments
1;
