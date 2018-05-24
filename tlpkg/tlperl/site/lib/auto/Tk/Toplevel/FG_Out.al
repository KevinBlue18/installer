# NOTE: Derived from blib\lib\Tk\Toplevel.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Tk::Toplevel;

#line 188 "blib\lib\Tk\Toplevel.pm (autosplit into blib\lib\auto\Tk\Toplevel\FG_Out.al)"
# tkFocusGroup_Out --
#
#	Handles the <FocusOut> event. Checks if this is really a lose
#	focus event, not one generated by the mouse moving out of the
#	toplevel window.  Calls the FocusOut command for the widget
#	who loses its focus.
#
sub FG_Out {
    my($t, $w, $detail) = @_;
    if ($detail ne 'NotifyNonlinear' and $detail ne 'NotifyNonlinearVirtual') {
	# This is caused by mouse moving out of the window
	return;
    }
    unless (exists $t->{'_FocusOut'}{$w}) {
	return;
    } else {
	$t->{'_FocusOut'}{$w}->Call;
	delete $t->{'_focus'};
    }
}

1;

__END__
1;
# end of Tk::Toplevel::FG_Out
