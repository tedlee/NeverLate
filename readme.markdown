NeverLate
===

Let's face it, getting hit with late fees when you forget to renew a library book sucks. Well no more.

This is a quick little Perl script to automagically renew books that you currently have out from the Queen's Library.

Set `$barcode_number` to the 14 digit integer at the bottom of your student card and set `$last_name` to the last name as shown on your student card.

### To run requires Perl. 
**If you don't already have it installed, get youself some Perl.**

OSX:

    curl -L http://xrl.us/installperlosx | bash

Ubuntu:

    sudo apt-get install perl

Windows:

	- See: [How to install Perl on Windows](http://lmgtfy.com/?q=How+to+install+Perl+on+Windows)

Ensure you have the required dependencies installed so, you know, the script runs. Then run:

    chmod +x NeverLate.pl
    ./NeverLate.pl


###Dependencies

Required for running:  
**WWW:Mechanize**  
    sudo perl -MCPAN -e 'install WWW::Mechanize' 

**Remember folks, with great power, comes great responsability.**

