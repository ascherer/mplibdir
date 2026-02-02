@x [0] l.10
\def\psqrt#1{\sqrt{\mathstrut#1}}
@y
\def\psqrt#1{\sqrt{\mathstrut#1}}

\def\title{MPSTRINGS}

@s boolean int
@s integer int
@s tm int
@s mp_lstring char
@s mp_string char
@s MP int
@z

@x [2] l.26
#  include <unistd.h>           /* for access */
@y
#  include <unistd.h>           /* for |access| */
@z
@x [2] l.28
#include <time.h>               /* for struct tm \& co */
@y
#include <time.h>               /* for |struct tm| $\AND$ co */
@z

@x [3] l.36
#include "mplib.h"
@y
@z
@x [3] l.39
#include "mpmp.h"               /* internal header */
@y
@z

@x [5] l.72
  mp_string ff;
  const mp_lstring *fp;
  fp = (const mp_lstring *) p;
  ff = malloc (sizeof (mp_lstring));
@y
  const mp_lstring *fp = (const mp_lstring *) p;
  mp_string ff = malloc (sizeof (mp_lstring));
@z

@x [6] l.95
do so it needs a way to create a new, empty string structure.

@ @c
@y
do so it needs a way to create a new, empty string structure.

@c
@z

@x [7] l.99
  mp_string ff;
  ff = mp_xmalloc (mp, 1, sizeof (mp_lstring));
@y
  mp_string ff = mp_xmalloc (mp, 1, sizeof (mp_lstring));
@z

@x [18] l.243
} while (0)
@y
} while (0)@;
@z
@x [18] l.255
} while (0)
@y
} while (0)@;
@z

@x [19] l.258
@ At the very start of the metapost run and each time after
@y
@ At the very start of the \MP\ run and each time after
@z

@x [22] l.301
  } while (0)
@y
  } while (0)@;
@z

@x [25] l.321
  mp_string r;
  r = mp_rts (mp, s);
@y
  mp_string r = mp_rts (mp, s);
@z

@x [34] l.446
  return mp_make_string (mp);
}
@y
  return mp_make_string (mp);
}

@* Index.
@z
