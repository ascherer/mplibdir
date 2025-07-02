@x [0] l.28
\pdfoutput=1
@y

@s quarterword int
@s MP int
@s boolean int
@s font_data int
@s font_number int
@s halfword int
@z

@x [1] l.30
@ Introduction.
@y
@* The {\tt TFMIN} program.
@z

@x [2] l.48
#include "mplib.h"
#include "mpmp.h" /* internal header */
@y
@z

@x [6] l.110
@<Read the \.{TFM} size fields@>
@<Use the size fields to allocate space in |font_info|@>
@<Read the \.{TFM} header@>
@<Read the character data and the width, height, and depth tables and
  |goto done|@>
@y
@<Read the \9{t}\.{TFM} size fields@>@;
@<Use the size fields to allocate space in |font_info|@>@;
@<Read the \9{t}\.{TFM} header@>@;
@<Read the \9{c}character data and the width, height, and depth tables and
  |goto done|@>@;
@z

@x [7] l.118
needed if it causes a system error to refer to |tfm_infile^| or call
@y
needed if it causes a system error to refer to |tfm_infile|$\mathchar"222$ or call
@z

@x [7] l.122
``|begin get(tfm_infile); if eof(tfm_infile) then goto bad_tfm; end|.''
@y
``\&{begin} $\\{get}(\\{tfm\_infile})$; \&{if} $\\{eof}(\\{tfm\_infile})$ %
\&{then} \&{goto} \\{bad\_tfm}; \&{end}.''
@z

@x [7] l.131
} while (0)
@y
} while (0)@;
@z

@x [7] l.138
@<Read the \.{TFM} size fields@>=
@y
@<Read the \9{t}\.{TFM} size fields@>=
@z

@x [8] l.164
  font_data *font_info;
  font_info = mp_xmalloc (mp,(l+1),sizeof(font_data));
@y
  font_data *font_info = mp_xmalloc (mp,(l+1),sizeof(font_data));
@z

@x [9] l.187
@<Read the \.{TFM} header@>=
@y
@<Read the \9{t}\.{TFM} header@>=
@z

@x [10] l.197
@ @<Read the character data and the width, height, and depth tables...@>=
@y
@ @<Read the \9{c}character data and the width, height, and depth tables...@>=
@z

@x [12] l.245
file_opened=true








@y
file_opened=true  @;

@* Index.
@z
