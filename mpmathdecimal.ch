@x [0] l.18
\pdfoutput=1

@ Introduction.
@y

@s MP int
@s mp_number int
@s mp_number_type int
@s mp_variable_type int
@s decNumber int
@s decContext int
@s boolean int
@s math_data int
@s integer int
@s int32_t int
@s uint32_t int

@* Introduction.
@d ROUND(a) floor((a)+0.5)
@z
@x [1] l.29
#define ROUND(a) floor((a)+0.5)
@y
@z

@x [3] l.38
#include "mplib.h"
@y
@z

@x [8] l.285
static void decNumberAtan2 (decNumber *result, decNumber *y, decNumber *x, decContext *set)
@y
@ @c
static void decNumberAtan2 (decNumber *result, decNumber *y, decNumber *x, decContext *set)
@z

@x [11] l.611
  /* for (i = 0; i <= last_cached_factorial; i++) {*/
  /*  free(factorials[i]);*/
  /* }*/
  /* free(factorials); */
@y
#if 0
  for (i = 0; i <= last_cached_factorial; i++) {
    free(factorials[i]);
  }
  free(factorials);
#endif
@z

@x [14] l.628
@

@c
@y
@ @c
@z

@x [18] l.775
@

@d odd(A)   (abs(A)%2==1)
@y
@ @d odd(A)   (abs(A)%2==1)
@z

@x [30] l.1001
@
@d halfp(A) (integer)((unsigned)(A) >> 1)
@y
@ @d halfp(A) (integer)((unsigned)(A) >> 1)
@z

@x [32] l.1042
        const char *hlp[] = {"Continue and I'll round the value until it fits the current numberprecision",
@y
        const char *hlp[] = {"Continue and I'll round the value " @| "until it fits the current numberprecision",
@z

@x [36] l.1199
  if (decNumberLess(&denom,&r2)) { /* num/4 >= denom => denom < num/4*/
@y
  if (decNumberLess(&denom,&r2)) { /* |num/4 >= denom|$\Longrightarrow$|denom < num/4| */
@z

@x [44] l.1463
relying on |real| arithmetic or system subroutines for sines, cosines, etc.

@

@c
@y
relying on |real| arithmetic or system subroutines for sines, cosines, etc.

@ @c
@z


@x [46] l.1491
@.Square root...replaced by 0@>;
@y
@.Square root...replaced by 0@>
@z

@x [47] l.1511
  /*|if (set.status != 0) {|*/
  /*|  mp->arith_error = true;|*/
  /*|  decNumberCopy(ret->data.num, &EL_GORDO_decNumber);|*/
  /*|}|*/
@y
#if 0
  if (set.status != 0) {
    mp->arith_error = true;
    decNumberCopy(ret->data.num, &EL_GORDO_decNumber);
  }
#endif
@z

@x [49] l.1552
@.Pythagorean...@>;
@y
@.Pythagorean...@>
@z

@x [51] l.1586
@.Logarithm...replaced by 0@>;
@y
@.Logarithm...replaced by 0@>
@z

@x [53] l.1620
  if (decNumberIsZero((decNumber *)x_orig.data.num) && decNumberIsZero((decNumber *)y_orig.data.num)) {
@y
  if (decNumberIsZero((decNumber *)x_orig.data.num) && @| decNumberIsZero((decNumber *)y_orig.data.num)) {
@z

@x [54] l.1651
@.angle(0,0)...zero@>;
@y
@.angle(0,0)...zero@>
@z

@x [57] l.1760
@ This is the {\tt http://www-cs-faculty.stanford.edu/~uno/programs/rng.c}
@y
@ This is the \.{http://www-cs-faculty.stanford.edu/\TILDE/uno/programs/rng.c}
@z
@x [57] l.1763
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

@x [57] l.1781
/* */
/* the following routines are from exercise 3.6--15 */
/* after calling |ran_start|, get new randoms by, e.g., "|x=ran_arr_next()|" */
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
  /* |long seed|             selector for different streams */
@y
@ The following routines are from exercise 3.6--15
after calling |ran_start|, get new randoms by, e.g., ``|x=ran_arr_next()|''.

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

@x [57] l.1821
/* */
#define ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
static long ran_arr_cycle(void)
@y
@ @d ran_arr_next() (*ran_arr_ptr>=0? *ran_arr_ptr++: ran_arr_cycle())
@c
static long ran_arr_cycle(void)
@z

@x [64] l.1989
/*
|void mp_decimal_ab_vs_cd (MP mp, mp_number *ret, mp_number a_orig, mp_number b_orig, mp_number c_orig, mp_number d_orig) {|
|  decNumber a, b, c, d;|
|  decNumber ab, cd;|
|  (void)mp;|
||
|  decNumberCopy(&a, (decNumber *)a_orig.data.num);|
|  decNumberCopy(&b, (decNumber *)b_orig.data.num);|
|  decNumberCopy(&c, (decNumber *)c_orig.data.num);|
|  decNumberCopy(&d, (decNumber *)d_orig.data.num);|
||
||
|  decNumberMultiply (&ab, (decNumber *)a_orig.data.num, (decNumber *)b_orig.data.num, &set);|
|  decNumberMultiply (&cd, (decNumber *)c_orig.data.num, (decNumber *)d_orig.data.num, &set);|
|  decNumberCompare(ret->data.num, &ab, &cd, &set);|
|  mp_check_decNumber(mp, ret->data.num, &set);|
|  return;|
||
|}|
*/



@y
#if 0
void mp_decimal_ab_vs_cd (MP mp, mp_number *ret, mp_number a_orig, mp_number b_orig, mp_number c_orig, mp_number d_orig) {
  decNumber a, b, c, d;
  decNumber ab, cd;
  (void)mp;

  decNumberCopy(&a, (decNumber *)a_orig.data.num);
  decNumberCopy(&b, (decNumber *)b_orig.data.num);
  decNumberCopy(&c, (decNumber *)c_orig.data.num);
  decNumberCopy(&d, (decNumber *)d_orig.data.num);

  decNumberMultiply (&ab, (decNumber *)a_orig.data.num, (decNumber *)b_orig.data.num, &set);
  decNumberMultiply (&cd, (decNumber *)c_orig.data.num, (decNumber *)d_orig.data.num, &set);
  decNumberCompare(ret->data.num, &ab, &cd, &set);
  mp_check_decNumber(mp, ret->data.num, &set);
  return;
}
#endif

@* Index.
@z
