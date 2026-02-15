@x [0] l.16
\pdfoutput=1
@y

@s MP int
@s mp_number int
@s mp_number_type int
@s mp_variable_type int
@s mpfr_t int
@s mpfr_prec_t int
@s boolean int
@s math_data int
@s mpfr_exp_t int
@s integer64 int
@z

@x [1] l.18
@ Introduction.
@y
@* Introduction.
@d ROUND(a) floor((a)+0.5)
@z
@x [1] l.28
#define ROUND(a) floor((a)+0.5)
@h
@y
@h
@z

@x [3] l.37
#include "mplib.h"
@y
@z

@x [3] l.43
#define MP_STR_HELPER(x) #x
#define MP_STR(x) MP_STR_HELPER(x)
const char * const COMPILED_gmp_version  = MP_STR(__GNU_MP_VERSION) "." MP_STR( __GNU_MP_VERSION_MINOR) "." MP_STR(__GNU_MP_VERSION_PATCHLEVEL);
@y
#define MP_STR_HELPER(x) @[#x@]
#define MP_STR(x) @[MP_STR_HELPER(x)@]
const char * const COMPILED_gmp_version  = MP_STR(__GNU_MP_VERSION) "."@|
  MP_STR( __GNU_MP_VERSION_MINOR) "." @|
  MP_STR(__GNU_MP_VERSION_PATCHLEVEL);
@z

@x [10] l.264
  /*mpfr_clears (one, minusone, zero, two_mpfr_t, three_mpfr_t, four_mpfr_t, fraction_multiplier_mpfr_t,*/
  /*            fraction_one_mpfr_t, fraction_one_plus_mpfr_t,  angle_multiplier_mpfr_t, PI_mpfr_t, */
  /*            epsilon_mpfr_t, EL_GORDO_mpfr_t, (mpfr_ptr) 0); */
  /*mpfr_free_cache ();*/
@y
#if 0
  mpfr_clears (one, minusone, zero, two_mpfr_t, three_mpfr_t, four_mpfr_t, fraction_multiplier_mpfr_t,
              fraction_one_mpfr_t, fraction_one_plus_mpfr_t,  angle_multiplier_mpfr_t, PI_mpfr_t,
              epsilon_mpfr_t, EL_GORDO_mpfr_t, (mpfr_ptr) 0);
  mpfr_free_cache ();
#endif
@z

@x [12] l.489
@ Creating an destroying |mp_number| objects
@y
@ Creating and destroying |mp_number| objects.
@z

@x [14] l.500
@

@c
@y
@ @c
@z

@x [18] l.625
@

@d odd(A)   (MPOST_ABS(A)%2==1)
@y
@ @d odd(A)   (MPOST_ABS(A)%2==1)
@z

@x [21] l.703
    /* the buffer should also fit at least strlen("E+\%d", exp) or (numprecdigits-2) worth of zeroes,
     * because with numprecdigits == 33, the str for "1E32" will be "1", and needing 32 extra zeroes,
     * and the decimal dot. To avoid miscalculations by myself, it is safer to add these
     * three together.
@y
    /* the buffer should also fit at least |strlen("E+\%d", exp)| or |(numprecdigits-2)| worth of zeroes,
     because with |numprecdigits == 33|, the |str| for |"1E32"| will be |"1"|, and needing 32 extra zeroes,
     and the decimal dot. To avoid miscalculations by myself, it is safer to add these
     three together.
@z

@x [24] l.808
instruction. But when we are restricted to int-eger arithmetic it
@y
instruction. But when we are restricted to integer arithmetic it
@z

@x [30] l.896
@
@d halfp(A) (integer)((unsigned)(A) >> 1)
@y
@ @d halfp(A) (integer)((unsigned)(A) >> 1)
@z

@x [32] l.909
@ The check of the precision is based on the article "27 Bits are not enough for 8-Digit accuracy"
@ by Bennet Goldberg  which roughly says that
@ given $p$ digits in base 10 and $q$ digits in base 2,
@ conversion from base 10 round-trip through base 2 if and only if $10^p < 2^{q-1}$.
@ In our case  $p/\log_{10}2 + 1 < q$, or $q\geq a$
@ where $q$ is the current precision in bits and $a=\left\lceil p/\log_{10}2 + 1\right\rceil$.
@ Therefore if $a>q$ the required precision could be too high and we emit a warning.
@y
@ The check of the precision is based on the article "27 Bits are not enough for 8-Digit accuracy"
by Bennet Goldberg  which roughly says that
given $p$ digits in base 10 and $q$ digits in base 2,
conversion from base 10 round-trip through base 2 if and only if $10^p < 2^{q-1}$.
In our case  $p/\log_{10}2 + 1 < q$, or $q\geq a$
where $q$ is the current precision in bits and $a=\left\lceil p/\log_{10}2 + 1\right\rceil$.
Therefore if $a>q$ the required precision could be too high and we emit a warning.
@z

@x [38] l.931
  /* strip leading - or + or 0 or .*/
  if ( (*bufp=='-') || (*bufp=='+') || (*bufp=='0') || (*bufp=='.') ) { lp--; bufp++;}
@y
  if ( (*bufp=='-') || (*bufp=='+') || (*bufp=='0') || (*bufp=='.') )
  { /* strip leading |-| or |+| or |0| or |.| */
    lp--; bufp++;
  }
@z
@x [38] l.935
  /* strip also trailing 0s */
  bufp = buf+l-1;
@y
  bufp = buf+l-1;
  /* strip also trailing 0s */
@z
@x [38] l.955
        mp_snprintf (msg, 256, "Required precision is too high (%d vs. numberprecision = %f, required precision=%d bits vs internal precision=%f bits)", (unsigned int)lp,mpfr_get_d(internal_value (mp_number_precision).data.num, ROUNDING),(int)lpbit,precision_bits);
@.Number is too large@>;
@y
        mp_snprintf (msg, 256, "Required precision is too high " @|
          "(%d vs. numberprecision = %f, required precision=%d bits " @|
          "vs internal precision=%f bits)", (unsigned int)lp,mpfr_get_d(internal_value (mp_number_precision).data.num, ROUNDING),(int)lpbit,precision_bits);
@.Number is too large@>
@z
@x [38] l.967
@.Enormous number...@>;
@y
@.Enormous number...@>
@z

@x [51] l.1381
@

@c
@y
@ @c
@z

@x [52] l.1405
@.Square root...replaced by 0@>;
@y
@.Square root...replaced by 0@>
@z

@x [55] l.1463
@.Pythagorean...@>;
@y
@.Pythagorean...@>
@z

@x [57] l.1495
@.Logarithm...replaced by 0@>;
@y
@.Logarithm...replaced by 0@>
@z

@x [60] l.1548
@.angle(0,0)...zero@>;
@y
@.angle(0,0)...zero@>
@z

@x [63] l.1580
@ This is the http://www-cs-faculty.stanford.edu/~uno/programs/rng.c
with  small cosmetic modifications.

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
@ This is the \.{http://www-cs-faculty.stanford.edu/\TILDE/uno/programs/rng.c}
with  small cosmetic modifications.

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

@x [63] l.1601
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

@x [63] l.1641
/* */
#define ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
static long ran_arr_cycle(void)
@y
@ @d ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
@c
static long ran_arr_cycle(void)
@z

@x [65] l.1685
 /* mpfr_remainder (a->data.num, a->data.num, b.data.num, ROUNDING);*/
@y
 /* |mpfr_remainder (a->data.num, a->data.num, b.data.num, ROUNDING);| */
@z

@x [70] l.1841
  mpfr_clears(a,b,c,d,ab,cd,(mpfr_ptr)0);
  return;
}


@y
  mpfr_clears(a,b,c,d,ab,cd,(mpfr_ptr)0);
  return;
}

@* Index.
@z
