#!/usr/bin/perl -w

use strict;
use warnings;
use WWW::Mechanize;

my $mech = new WWW::Mechanize;

## 14 Digit integer on the bottom of Queen's student card
my $barcode_number = "##############";

## Replace last_name with your last name on your student card
my $last_name = "LAST_NAME";					
$mech -> agent_alias('Linux Mozilla');

## Login with via old Islander library system
my $login_url = "http://islander.library.queensu.ca/cgi-bin/Pwebrecon.cgi?DB=local&PAGE=First";

$mech->get($login_url);
$mech->follow_link( text => 'My Library Account');

$mech->submit_form(
	form_number => 1,
	fields => {
		BC => "$barcode_number",
		LN => "$last_name"
	}
);

$mech->tick('RENEWID','0');
$mech->submit();

print $mech->content();
idie unless ($mech->success);