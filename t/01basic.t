#!/usr/bin/perl

use Template::Test;
test_expect(\*DATA);

__DATA__
-- test --
[% USE Textile -%]
[% FILTER textile %]this is _like_ *so* *cool*[% END %]
-- expect --
<p>this is <em>like</em> <strong>so* *cool</strong></p>
-- test --
[% FILTER textile -%]
Reasons to use the Template Toolkit:

* Seperation of concerns.
* It's written in Perl.
* Badgers are Still Cool.
[%- END %]
-- expect --
<p>Reasons to use the Template Toolkit:</p>

<ul><li>Seperation of concerns.</li>
<li>It's written in Perl.</li>
<li>Badgers are Still Cool.</li>
</ul>
-- test --
[% text = BLOCK %]
The "Template Toolkit":http://www.tt2.org was written by Andy Wardly.
!http://www.perl.com/supersnail/os2002/images/small/os6_d5_5268_w2_sm.jpg!
This image (c) Julian Cash 2002
[% END -%]

[%- text | textile %]
-- expect --
<p>The <a href="http://www.tt2.org">Template Toolkit</a> was written by Andy Wardly.<br />
<img src="http://www.perl.com/supersnail/os2002/images/small/os6_d5_5268_w2_sm.jpg" /><br />
This image &copy; Julian Cash 2002</p>