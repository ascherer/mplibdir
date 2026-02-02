@x [0] l.16
\pdfoutput=1
@y

@s MP int
@s mp_number int
@s mp_number_type int
@s mp_variable_type int
@s math_data int
@s integer int
@z

@x [1] l.18
@ Introduction.
@y
@* Introduction.

@d ROUND(a) floor((a)+0.5)
@z
@x [1] l.28
#define ROUND(a) floor((a)+0.5)
@y
@z

@x [3] l.37
#include "mplib.h"
@y
@z

@x [9] l.331
  n->type = t;
}

@

@c
@y
  n->type = t;
}

@ @c
@z

@x [25] l.653
@
@d halfp(A) (integer)((unsigned)(A) >> 1)
@y
@ @d halfp(A) (integer)((unsigned)(A) >> 1)
@z

@x [27] l.683
@.Number is too large@>;
@y
@.Number is too large@>
@z
@x [27] l.694
@.Enormous number...@>;
@y
@.Enormous number...@>
@z

@x [39] l.1037
@

@c
@y
@ @c
@z

@x [40] l.1062
@.Square root...replaced by 0@>;
@y
@.Square root...replaced by 0@>
@z

@x [43] l.1115
@.Pythagorean...@>;
@y
@.Pythagorean...@>
@z

@x [46] l.1150
@.Logarithm...replaced by 0@>;
@y
@.Logarithm...replaced by 0@>
@z

@x [49] l.1206
@.angle(0,0)...zero@>;
@y
@.angle(0,0)...zero@>
@z

@x [53] l.1254
@ This is the http://www-cs-faculty.stanford.edu/~uno/programs/rng.c
@y
@ This is the \.{http://www-cs-faculty.stanford.edu/\TILDE/uno/programs/rng.c}
@z
@x [53] l.1257
@c
#define KK 100                     /* the long lag  */
#define LL  37                     /* the short lag */
#define MM (1L<<30)                /* the modulus   */
#define mod_diff(x,y) (((x)-(y))&(MM-1)) /* subtraction mod MM */
/* */
static long ran_x[KK];                    /* the generator state */
/* */
static void ran_array(long aa[],int n) /* put n new random numbers in aa */
  /* long aa[]    destination */
  /* int n       array length (must be at least KK) */
@y
@d KK 100                     /* the long lag  */
@d LL  37                     /* the short lag */
@d MM (1L<<30)                /* the modulus   */
@d mod_diff(x,y) (((x)-(y))&(MM-1)) /* subtraction mod MM */

@c
static long ran_x[KK];                    /* the generator state */

static void ran_array( /* put n new random numbers in aa */
  long aa[], /* destination */
  int n)     /* array length (must be at least KK) */
@z

@x [53] l.1275
/* */
/* the following routines are from exercise 3.6--15 */
/* after calling |ran_start|, get new randoms by, e.g., |x=ran_arr_next()| */
/* */
#define QUALITY 1009 /* recommended quality level for high-res use */
static long ran_arr_buf[QUALITY];
static long ran_arr_dummy=-1, ran_arr_started=-1;
static long *ran_arr_ptr=&ran_arr_dummy; /* the next random number, or -1 */
/* */
#define TT  70   /* guaranteed separation between streams */
#define is_odd(x)  ((x)&1)          /* units bit of x */
/* */
static void ran_start(long seed) /* do this before using |ran_array| */
  /* long seed             selector for different streams */
@y
@ The following routines are from exercise 3.6--15
after calling |ran_start|, get new randoms by, e.g., |x=ran_arr_next()|.

@d QUALITY 1009 /* recommended quality level for high-res use */
@d TT  70   /* guaranteed separation between streams */
@d is_odd(x)  ((x)&1)          /* units bit of x */

@c
static long ran_arr_buf[QUALITY];
static long ran_arr_dummy=-1, ran_arr_started=-1;
static long *ran_arr_ptr=&ran_arr_dummy; /* the next random number, or -1 */

static void ran_start( /* do this before using |ran_array| */
  long seed) /* selector for different streams */
@z

@x [53] l.1315
/* */
#define ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
@y
@ @d ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
@c
@z

@x [60] l.1499
  return ;
}

@y
  return;
}

@* Index.
@z
