@x [0] l.17
\pdfoutput=1
@y

@s MP int
@s mp_number int
@s mp_number_type int
@s mp_variable_type int
@s math_data int
@s integer int
@s quarterword int
@s boolean int
@z

@x [1] l.19
@ Introduction.
@y
@* Introduction.
@z

@x [3] l.36
#include "mplib.h"
@y
@z

@x [5] l.48
static void mp_ab_vs_cd (MP mp, mp_number *ret, mp_number a, mp_number b, mp_number c, mp_number d);
static void mp_crossing_point (MP mp, mp_number *ret, mp_number a, mp_number b, mp_number c);
@y
static void mp_ab_vs_cd (MP mp, mp_number *ret, @| mp_number a, mp_number b, mp_number c, mp_number d);
static void mp_crossing_point (MP mp, mp_number *ret, @| mp_number a, mp_number b, mp_number c);
@z
@x [5] l.67
static void mp_velocity (MP mp, mp_number *ret, mp_number st, mp_number ct, mp_number sf,  mp_number cf, mp_number t);
@y
static void mp_velocity (MP mp, mp_number *ret, @| mp_number st, mp_number ct, mp_number sf,  mp_number cf, mp_number t);
@z
@x [5] l.78
static void mp_set_number_from_of_the_way(MP mp, mp_number *A, mp_number t, mp_number B, mp_number C);
@y
static void mp_set_number_from_of_the_way(MP mp, @| mp_number *A, mp_number t, mp_number B, mp_number C);
@z

@x [11] l.374
void mp_set_number_from_of_the_way(MP mp, mp_number *A, mp_number t, mp_number B, mp_number C) {
@y
void mp_set_number_from_of_the_way(MP mp, mp_number *A, mp_number t, @| mp_number B, mp_number C) {
@z

@x [29] l.860
@.Number is too large@>;
@y
@.Number is too large@>
@z
@x [29] l.869
@.Enormous number...@>;
@y
@.Enormous number...@>
@z

@x [33] l.944
void mp_velocity (MP mp, mp_number *ret, mp_number st, mp_number ct, mp_number sf,
@y
void mp_velocity (MP mp, mp_number *ret, mp_number st, mp_number ct, @| mp_number sf,
@z

@x [34] l.974
static void mp_ab_vs_cd (MP mp, mp_number *ret, mp_number a_orig, mp_number b_orig, mp_number c_orig, mp_number d_orig) {
@y
static void mp_ab_vs_cd (MP mp, mp_number *ret, @| mp_number a_orig, mp_number b_orig, mp_number c_orig, mp_number d_orig) {
@z

@x [36] l.1078
static void mp_crossing_point (MP mp, mp_number *ret, mp_number aa, mp_number bb, mp_number cc) {
@y
static void mp_crossing_point (MP mp, mp_number *ret, @| mp_number aa, mp_number bb, mp_number cc) {
@z

@x [42] l.1189
  if (x <= 0) {
    @<Handle square root of zero or negative argument@>;
  } else {
@y
  if (x <= 0)
    @<Handle square root of zero or negative argument@>@;
  else {
@z

@x [42] l.1204
    do {
      @<Decrease |k| by 1, maintaining the invariant
      relations between |x|, |y|, and~|q|@>;
    } while (k != 0);
@y
    do
      @<Decrease |k| by 1, maintaining the invariant
      relations between |x|, |y|, and~|q|@>@;
    while (k != 0);
@z

@x [43] l.1222
@.Square root...replaced by 0@>;
@y
@.Square root...replaced by 0@>
@z

@x [44] l.1230
@ @<Decrease |k| by 1, maintaining...@>=
@y
@ @<Decrease |k| by 1, maintaining...@>={
@z

@x [44] l.1236
};
@y
}
@z

@x [44] l.1243
};
@y
}
@z

@x [44] l.1250
};
k--
@y
}
k--}
@z

@x [45] l.1272
  };                            /* now |0<=b<=a| */
@y
  } /* now |0<=b<=a| */
@z

@x [45] l.1280
    };                          /* we reduced the precision to avoid arithmetic overflow */
@y
    } /* we reduced the precision to avoid arithmetic overflow */
@z

@x [45] l.1288
      };
@y
      }
@z

@x [47] l.1320ß
  if (a <= b) {
    @<Handle erroneous |pyth_sub| and set |a:=0|@>;
  } else {
@y
  if (a <= b)
    @<Handle erroneous |pyth_sub| and set |a:=0|@>@;
  else {
@z

@x [50] l.1379
static const integer spec_log[29] = { 0,        /* special logarithms */
  93032640, 38612034, 17922280, 8662214, 4261238, 2113709,
  1052693, 525315, 262400, 131136, 65552, 32772, 16385,
  8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1, 1
};
@y
static const integer spec_log[29] = { 0,
  93032640, 38612034, 17922280, 8662214, 4261238, 2113709,
  1052693, 525315, 262400, 131136, 65552, 32772, 16385,
  8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1, 1
}; /* special logarithms */
@z

@x [51] l.1406
  if (x <= 0) {
    @<Handle non-positive logarithm@>;
  } else {
@y
  if (x <= 0)
    @<Handle non-positive logarithm@>@;
  else {
@z

@x [51] l.1418
    while (x > fraction_four + 4) {
      @<Increase |k| until |x| can be multiplied by a
        factor of $2^{-k}$, and adjust $y$ accordingly@>;
    }
@y
    while (x > fraction_four + 4)
      @<Increase |k| until |x| can be multiplied by a
        factor of $2^{-k}$, and adjust $y$ accordingly@>@;
@z

@x [52] l.1433
  };
@y
  }
@z

@x [53] l.1447
@.Logarithm...replaced by 0@>;
@y
@.Logarithm...replaced by 0@>
@z

@x [57] l.1569
  if (x == 0) {
    @<Handle undefined arg@>;
  } else {
@y
  if (x == 0)
    @<Handle undefined arg@>@;
  else {
@z

@x [58] l.1586
@.angle(0,0)...zero@>;
@y
@.angle(0,0)...zero@>
@z

@x [60] l.1634
  };
  @<Increase |z| to the arg of $(x,y)$@>;
@y
  }
  @<Increase |z| to the arg of $(x,y)$@>@;
@z

@x [61] l.1663
  };
@y
  }
@z
@x [61] l.1671
  };
} while (k != 26)
@y
  }
} while (k != 26);
@z

@x [73] l.1923
  free_number (xa);
  free_number (u);
}
@y
  free_number (xa);
  free_number (u);
}

@* Index.
@z
