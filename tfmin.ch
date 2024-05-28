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
@* Introduction.
@z

@x [2] l.48
#include "mplib.h"
#include "mpmp.h" /* internal header */
@y
@z

@x [6] l.114
  |goto done|@>
@y
  |goto done|@>;
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

@x [8] l.164
  font_data *font_info;
  font_info = mp_xmalloc (mp,(l+1),sizeof(font_data));
@y
  font_data *font_info = mp_xmalloc (mp,(l+1),sizeof(font_data));
@z

@x [12] l.245
file_opened=true








@y
file_opened=true  @;

@* Index.
@z
