@x [0.0] l.26
\pdfoutput=1 \sanitizecommand\MP{MetaPost}
\pageno=3
@y
\def\topofcontents{\centerline{\titlefont\title}%\vskip.7in
  \vfill} % this material will start the table of contents page
\ifpdf
\sanitizecommand\ps{PostScript}
\sanitizecommand\MP{MetaPost}
\sanitizecommand\theta{theta}
\sanitizecommand\psi{psi}
\sanitizecommand\alpha{alpha}
\sanitizecommand\beta{beta}
\sanitizecommand\preceq{<=}
\sanitizecommand\prec{<}
\sanitizecommand\langle{<}
\sanitizecommand\rangle{>}
\fi
\def\contentspagenumber{2}
\pageno=\contentspagenumber \advance \pageno by 1

\def\inx{\par\vskip6pt plus 1fil % we are beginning the index
  \def\page{\box255 } \normalbottom
  \write\cont{} % ensure that the contents file isn't empty
       \write\cont{\catcode `\noexpand\@@=12\relax} % \makeatother
  \closeout\cont % the contents information has been fully gathered
  \output{\ifpagesaved\normaloutput{\box\sbox}\lheader\rheader\fi
    \global\setbox\sbox=\page \global\pagesavedtrue \mark{\topmark}}
  \pagesavedfalse \eject % eject the page-so-far and predecessors
  \setbox\sbox\vbox{\unvbox\sbox} % take it out of its box
  \vsize=\pageheight \advance\vsize by -\ht\sbox % the remaining height
  \hsize=.5\pagewidth \advance\hsize by -10pt
    % column width for the index (20pt between cols)
  \ifhint\else
  \parfillskip 0pt plus .6\hsize % try to avoid almost empty lines
  \fi
  \def\lr{L} % this tells whether the left or right column is next
  \output{\if L\lr\global\setbox\lbox=\page \gdef\lr{R}
    \else\normaloutput{\vbox to\pageheight{\box\sbox\vss
        \hbox to\pagewidth{\box\lbox\hfil\page}}}\lheader\rheader
    \global\vsize\pageheight\gdef\lr{L}\global\pagesavedfalse\fi}
  \message{Index:}
  \parskip 0pt plus .5pt
  \outer\def\I##1, ##2.{\par\hangindent2em\noindent##1:\hskip1em %XXX \kern1em
    \scan##2!.} % index entry
  \def\[##1]{$\underline{\scan##1!}$\scan} % underlined index item
  \rm \rightskip0pt plus 2.5em \tolerance 10000
  \hyphenpenalty 10000 \parindent0pt
  \readindex}
@z

@x [1.3] l.91
#include <stdlib.h>
@y
@z

@x [1.4] l.111
wholesale.
@y
wholesale.
@s integer64 int
@s mpinteger64 int
@s QUARTERWORD int
@s quarterword int
@s halfword int
@z

@x [1.4] l.132
/* integer64 should be alredy defined in source/texk/web2c/w2c/config.h */
/* but just in case */
@y
/* |integer64| should be already defined in
\.{source/texk/web2c/w2c/config.h}, but just in case */
@z

@x [1.5] l.157
/*\#define MPOST_DEBUG_ENVELOPE */
@y
@z

@x [1.5] l.193
#include <png.h>                /* for |PNG_LIBPNG_VER_STRING|, |png_libpng_ver| */
/*|
#include <pixman.h>| */             /* for |PIXMAN_VERSION_STRING|, |pixman_version_string()| */
/*|
#include <cairo.h>| */              /* for |CAIRO_VERSION_STRING|, |cairo_version_string()| */
/*|
#include <gmp.h>| */                /* for |gmp_version| */
/*|
#include <mpfr.h>| */               /* for |MPFR_VERSION_STRING|, |mpfr_get_version()| */
#include "mplib.h"
#include "mplibps.h"            /* external header */
/*|
#include "mplibsvg.h"| */          /* external header */
/*|
#include "mplibpng.h"| */          /* external header */
#include "mpmp.h"               /* internal header */
#include "mppsout.h"            /* internal header */
/*|
#include "mpsvgout.h"| */           /* internal header */
/*|
#include "mppngout.h"| */           /* internal header */
#include "mpmath.h"             /* internal header */
#include "mpmathdouble.h"       /* internal header */
#include "mpmathdecimal.h"      /* internal header */
/*|
#include "mpmathbinary.h"| */       /* internal header */
/*|
#include "mpmathinterval.h"| */       /* internal header */
#include "mpstrings.h"          /* internal header */
@y
#include <png.h>                /* for |PNG_LIBPNG_VER_STRING|, |png_libpng_ver| */ @t@>
/*|
#include <pixman.h>| */             /* for |PIXMAN_VERSION_STRING|, |pixman_version_string()| */ @t@>
/*|
#include <cairo.h>| */              /* for |CAIRO_VERSION_STRING|, |cairo_version_string()| */ @t@>
/*|
#include <gmp.h>| */                /* for |gmp_version| */ @t@>
/*|
#include <mpfr.h>| */               /* for |MPFR_VERSION_STRING|, |mpfr_get_version()| */
#include "mplibps.h"            /* external header */ @t@>
/*|
#include "mplibsvg.h"| */          /* external header */ @t@>
/*|
#include "mplibpng.h"| */          /* external header */
#include "mpmp.h"               /* internal header */
#include "mppsout.h"            /* internal header */ @t@>
/*|
#include "mpsvgout.h"| */           /* internal header */ @t@>
/*|
#include "mppngout.h"| */           /* internal header */
#include "mpmath.h"             /* internal header */
#include "mpmathdouble.h"       /* internal header */
#include "mpmathdecimal.h"      /* internal header */ @t@>
/*|
#include "mpmathbinary.h"| */       /* internal header */ @t@>
/*|
#include "mpmathinterval.h"| */       /* internal header */
#include "mpstrings.h"          /* internal header */ @t@>
@z

@x [1.7] l.259
extern font_number mp_read_font_info (MP mp, char *fname);      /* \.{tfmin.w} */
@y
#include "tfmin.h" /* |mp_read_font_info| */
@z

@x [1.8] l.267
until the c99 standard (and that is too new for us). Lets' hope that at least
@y
until the c99 standard (and that is too new for us). Let's hope that at least
@z

@x [1.8] l.272
#if MPOST_DEBUG
/* This function occasionally crashes (if something is written after the */
/* log file is already closed), but that is not so important while debugging. */

extern void do_debug_printf(MP mp, const char *prefix, const char *fmt, ...);

#endif

@y
@z

@x [1.8] l.286
/*void do_debug_printf(MP mp, const char *prefix, const char *fmt, ...);*/
@y
static void do_debug_printf(MP mp, const char *prefix, const char *fmt, ...);
@z

@x [1.9] l.302
@ This function occasionally crashes (if something is written after the */
log file is already closed), but that is not so important while debugging. */

@c
#if MPOST_DEBUG
@y
@ This function occasionally crashes (if something is written after the
log file is already closed), but that is not so important while debugging.

@c
#if MPOST_DEBUG > 1
@z

@x [1.17] l.423
  @<Local variables for initialization@>;
  @<Set initial values of key variables@>;
@y
  @<Local variables for initialization@>;@#
  @<Set \9{i}initial values of key variables@>;
@z

@x [1.20] l.689
  @<Find and load preload file, if required@>;
@y
  @<Find \9{a}and load preload file, if required@>;
@z

@x [2.42] l.920
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [2.43] l.932
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [3.45] l.974
the fopen mode is passed along for the same reason.
@y
the fopen mode is passed along for the same reason.
@s eight_bits int
@z

@x [3.70] l.1282
returns |false| and sets |last:=first|.  In general, the |ASCII_code|
@y
returns |false| and sets |last=first|.  In general, the |ASCII_code|
@z

@x [3.70] l.1287
(in which case the line was entirely blank) or |buffer[last-1]<>" "|.
@y
(in which case the line was entirely blank) or |buffer[last-1]!=" "|.
@z

@x [6.121] l.2103
@s mp_sym int
@y
@s mp_sym int
@s uint16_t int
@s uint32_t int
@z
@x [6.121] l.2108
  //uint32_t s1;
@y
  //|uint32_t s1;|
@z

@x [11.203] l.4260
@ @<Set initial ...@>=
@y
@ @<Set \9{i}initial ...@>=
@z

@x [11.205] l.4382
enum mp_color_model {
@y
enum mp@&_color@&_model @+ { @t\1@>@/
@!@:mp_color_model}{\bf mp\_color\_model@>
@z
@x [11.205] l.4388
};
@y
@t\2@>@/};
@z

@x [11.215] l.4608
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [13.243] l.5442
/* static mp_number do_get_value_number (MP mp, mp_token_node A) \{ */
/*   assert (A->type != mp_structured); */
/*   FUNCTION_TRACE3 ("%d = get_value_number(%p)\n", A->data.n.type, A); */
/*   return  A->data.n ; */
/* \} */
@y
@z

@x [13.244] l.5451
/* static mp_number do_get_value_number (MP mp, mp_token_node A); */
@y
@z

@x [14.273] l.6204
|value| points to a 12-word node containing six values, identified by
@y
|value| points to a 12-word node containing six values, identified by
the entries
@z

@x [14.276] l.6270
@ Variables of type \&{color} have 3~values in 6~words identified by |mp_red_part_sector|,
@y
@ Variables of type \&{color} have 3~values in a 6-word node identified by
the entries |mp_red_part_sector|,
@z

@x [14.288] l.6556
capable of growing. This operation is done only when |mp_name_type(p)=root|,
@y
capable of growing. This operation is done only when |mp_name_type(p)| |=root|,
@z

@x [15.298] l.7028
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [16.307] l.7315
one knot from another, we will set |originator(p):=mp_metapost_user| when
@y
one knot from another, we will set |originator(p)=mp_metapost_user| when
@z
@x [16.307] l.7317
|originator(p):=mp_program_code| in all other cases.
@y
|originator(p)=mp_program_code| in all other cases.
@z

@x [17.334] l.7812
  @<Other local variables for |make_choices|@>;
@y
  @+@t}\6{@>
  @<Other local variables for |make_choices|@>;
  @#
@z

@x [17.334] l.7817
  @<If consecutive knots are equal, join them explicitly@>;
@y
  @<If \9{c}consecutive knots are equal, join them explicitly@>;
@z

@x [17.337] l.7851
@<If consecutive knots are equal, join them explicitly@>=
@y
@<If \9{c}consecutive knots are equal, join them explicitly@>=
@z

@x [17.340] l.7910
checking the |mp_left_type| and |mp_right_type| fields.

@y
checking the fields |mp_left_type| and |mp_right_type|.
@z

@x [17.345] l.8037
@<Remove |open| types at the breakpoints@>
@y
@<Remove \9{o}|open| types at the breakpoints@>
@z

@x [17.350] l.8137
@<Remove |open| types at the breakpoints@>=
@y
@<Remove \9{o}|open| types at the breakpoints@>=
@z

@x [18.392] l.9475
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
  @<Check the control points against the bounding box and set |wavy:=true|
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
  @<Check the control points against the bounding box and set |wavy=true|
@z

@x [18.393] l.9510
@ @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>=
@y
@ @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>=
@z

@x [18.396] l.9577
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@z

@x [18.397] l.9606
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@z

@x [18.402] l.9775
  @<Set |a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is as
@y
  @<Set \9{a}|a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is as
@z

@x [18.403] l.9828
@ @<Set |a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is...@>=
@y
@ @<Set \9{a}|a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is...@>=
@z

@x [19.420] l.10439
    @<Make sure |h| isn't confused with an elliptical pen@>;
@y
    @<Make sure \9{h}|h| isn't confused with an elliptical pen@>;
@z

@x [19.422] l.10476
@<Make sure |h| isn't confused with an elliptical pen@>=
@y
@<Make sure \9{h}|h| isn't confused with an elliptical pen@>=
@z

@x [19.429] l.10565
  @<Other local variables in |make_path|@>;
@y
  @+@t}\6{@>
  @<Other local variables in |make_path|@>;
  @#
@z

@x [19.431] l.10608
    @<Initialize |p| as the |k|th knot of a circle of unit diameter,
@y
    @<Initialize \9{p}|p| as the |k|th knot of a circle of unit diameter,
@z

@x [19.434] l.10643
@<Initialize |p| as the |k|th knot of a circle of unit diameter,...@>=
@y
@<Initialize \9{p}|p| as the |k|th knot of a circle of unit diameter,...@>=
@z

@x [19.436] l.10689
@<Set init...@>=
@y
@<Set \9{i}init...@>=
@z

@x [19.439] l.10739
    @<Set |l| to the leftmost knot in polygon~|h|@>;
    @<Set |r| to the rightmost knot in polygon~|h|@>;
@y
    @<Set \9{l}|l| to the leftmost knot in polygon~|h|@>;
    @<Set \9{r}|r| to the rightmost knot in polygon~|h|@>;
@z
@x [19.439] l.10743
      @<Find any knots on the path from |l| to |r| above the |l|-|r| line and
@y
      @<Find \9{a}any knots on the path from |l| to |r| above the |l|-|r| line and
@z
@x [19.439] l.10745
      @<Find any knots on the path from |s| to |l| below the |l|-|r| line and
@y
      @<Find \9{a}any knots on the path from |s| to |l| below the |l|-|r| line and
@z

@x [19.440] l.10762
@<Set |l| to the leftmost knot in polygon~|h|@>=
@y
@<Set \9{l}|l| to the leftmost knot in polygon~|h|@>=
@z

@x [19.441] l.10774
@ @<Set |r| to the rightmost knot in polygon~|h|@>=
@y
@ @<Set \9{r}|r| to the rightmost knot in polygon~|h|@>=
@z

@x [19.442] l.10786
@ @<Find any knots on the path from |l| to |r| above the |l|-|r| line...@>=
@y
@ @<Find \9{a}any knots on the path from |l| to |r| above the |l|-|r| line...@>=
@z

@x [19.445] l.10829
@ @<Find any knots on the path from |s| to |l| below the |l|-|r| line...@>=
@y
@ @<Find \9{a}any knots on the path from |s| to |l| below the |l|-|r| line...@>=
@z

@x [19.448] l.10923
        @<Remove knot |p| and back up |p| and |q| but don't go past |l|@>@;
@y
        @<Remove \9{k}knot |p| and back up |p| and |q| but don't go past |l|@>@;
@z

@x [19.449] l.10932
@ @<Remove knot |p| and back up |p| and |q| but don't go past |l|@>=
@y
@ @<Remove \9{k}knot |p| and back up |p| and |q| but don't go past |l|@>=
@z

@x [21.495] l.12137
    @<Make |mp_link(pp)| point to a copy of object |p|,
@y
    @<Make \9{m}|mp_link(pp)| point to a copy of object |p|,
@z

@x [21.496] l.12145
@ @<Make |mp_link(pp)| point to a copy of object |p|, and update |p| and |pp|@>=
@y
@ @<Make \9{m}|mp_link(pp)| point to a copy of object |p|, and update |p| and |pp|@>=
@z

@x [21.513] l.12586
  @<Other local variables in |make_dashes|@>;
@y
  @+@t}\6{@>
  @<Other local variables in |make_dashes|@>;
  @#
@z

@x [21.513] l.12602
    @<Make |d| point to a new dash node created from stroke |p| and path |pp|
@y
    @<Make \9{d}|d| point to a new dash node created from stroke |p| and path |pp|
@z
@x [21.513] l.12609
  @<Scan |dash_list(h)| and deal with any dashes that are themselves dashed@>;
  @<Set |dash_y(h)| and merge the first and last dashes if necessary@>;
@y
  @<Scan \9{d}|dash_list(h)| and deal with any dashes that are themselves dashed@>;
  @<Set \9{d}|dash_y(h)| and merge the first and last dashes if necessary@>;
@z
@x [21.513] l.12615
  @<Flush the dash list, recycle |h| and return |NULL|@>;
@y
  @<Flush the \9{d}dash list, recycle |h| and return |NULL|@>;
@z

@x [21.517] l.12649
@ We stash |p| in |dash_info(d)| if |mp_dash_p(p)<>0| so that subsequent processing can
@y
@ We stash |p| in |dash_info(d)| if |mp_dash_p(p)!=0| so that subsequent processing can
@z

@x [21.517] l.12654
@<Make |d| point to a new dash node created from stroke |p| and path...@>=
@<Make sure |p| and |p0| are the same color and |goto not_found| if there is
@y
@<Make \9{d}|d| point to a new dash node created from stroke |p| and path...@>=
@<Make sure \9{p}|p| and |p0| are the same color and |goto not_found| if there is
@z

@x [21.519] l.12740
@ @<Make sure |p| and |p0| are the same color and |goto not_found|...@>=
@y
@ @<Make sure \9{p}|p| and |p0| are the same color and |goto not_found|...@>=
@z

@x [21.521] l.12770
@ @<Set |dash_y(h)| and merge the first and last dashes if necessary@>=
@y
@ @<Set \9{d}|dash_y(h)| and merge the first and last dashes if necessary@>=
@z

@x [21.522] l.12795
@<Flush the dash list, recycle |h| and return |NULL|@>=
@y
@<Flush the \9{d}dash list, recycle |h| and return |NULL|@>=
@z

@x [21.523] l.12804
@<Scan |dash_list(h)| and deal with any dashes that are themselves dashed@>=
@y
@<Scan \9{d}|dash_list(h)| and deal with any dashes that are themselves dashed@>=
@z
@x [21.523] l.12818
@:this can't happen dash0}{\quad dash1@>
@y
@:this can't happen dash1}{\quad dash1@>
@z
@x [21.523] l.12826
@:this can't happen dash0}{\quad dash1@>
@y
@:this can't happen dash1}{\quad dash1@>
@z

@x [21.525] l.12865
    @<If |dd| has `fallen off the end', back up to the beginning and fix |xoff|@>;
@y
    @<If \9{d}|dd| has `fallen off the end', back up to the beginning and fix |xoff|@>;
@z

@x [21.526] l.12881
first |dd| where |take_scaled (hsf, stop_x(dd))| is large enough to make an
@y
first |dd| where the value returned by |take_scaled (hsf, stop_x(dd))| is large enough to make an
@z

@x [21.527] l.12899
@ @<If |dd| has `fallen off the end', back up to the beginning and fix...@>=
@y
@ @<If \9{d}|dd| has `fallen off the end', back up to the beginning and fix...@>=
@z

@x [21.530] l.12977
      @<Make |(dx,dy)| the final direction for the path segment from
@y
      @<Make \9{e}|(dx,dy)| the final direction for the path segment from
@z
@x [21.530] l.12983
          @<Use |(dx,dy)| to generate a vertex of the square end cap and
@y
          @<Use \9{d}|(dx,dy)| to generate a vertex of the square end cap and
@z

@x [21.531] l.13005
@ @<Make |(dx,dy)| the final direction for the path segment from...@>=
@y
@ @<Make \9{e}|(dx,dy)| the final direction for the path segment from...@>=
@z

@x [21.533] l.13043
@ @<Use |(dx,dy)| to generate a vertex of the square end cap and...@>=
@y
@ @<Use \9{d}|(dx,dy)| to generate a vertex of the square end cap and...@>=
@z

@x [21.535] l.13121
      @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@y
  @/  @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@z

@x [22.547] l.13395
  @<Other local variables for |offset_prep|@>;
@y
  @+@t}\6{@>
  @<Other local variables for |offset_prep|@>;
  @#
@z

@x [22.549] l.13543
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [22.573] l.14358
  |t:=fraction_one+1|@>;
@y
  |t=fraction_one+1|@>;
@z

@x [22.577] l.14543
@<Make |ss| negative if and only if the total change in direction is
@y
@<Make \9{s}|ss| negative if and only if the total change in direction is
@z

@x [22.579] l.14603
@<Make |ss| negative if and only if the total change in direction is...@>=
@y
@<Make \9{s}|ss| negative if and only if the total change in direction is...@>=
@z

@x [22.583] l.14763
round joins; and square end caps are achieved by setting |join_type:=3|.
@y
round joins; and square end caps are achieved by setting |join_type=3|.
@z
@x [22.583] l.14767
approach that is achieved by setting |join_type:=2|.
@y
approach that is achieved by setting |join_type=2|.
@z
@x [22.583] l.14778
  @<Other local variables for |make_envelope|@>;
@y
  @+@t}\6{@>
  @<Other local variables for |make_envelope|@>;
  @#
@z
@x [22.583] l.14790
  @<Use |offset_prep| to compute the envelope spec then walk |h| around to
@y
  @<Use \9{o}|offset_prep| to compute the envelope spec then walk |h| around to
@z
@x [22.583] l.14803
      @<Set |join_type| to indicate how to handle offset changes at~|q|@>@;
@y
      @<Set \9{j}|join_type| to indicate how to handle offset changes at~|q|@>@;
@z
@x [22.583] l.14806
      @<Step |w| and move |k| one step closer to |zero_off|@>;
@y
      @<Step \9{w}|w| and move |k| one step closer to |zero_off|@>;
@z
@x [22.583] l.14819
      @<Set |p=mp_link(p)| and add knots between |p| and |q| as
@y
      @<Set \9{p}|p=mp_link(p)| and add knots between |p| and |q| as
@z

@x [22.584] l.14835
@ @<Use |offset_prep| to compute the envelope spec then walk |h| around to...@>=
@y
@ @<Use \9{o}|offset_prep| to compute the envelope spec then walk |h| around to...@>=
@z

@x [22.585] l.14845
degenerate cubic.  Setting |join_type:=2| in this case makes the computed
@y
degenerate cubic.  Setting |join_type=2| in this case makes the computed
@z
@x [22.585] l.14848
@<Set |join_type| to indicate how to handle offset changes at~|q|@>=
@y
@<Set \9{j}|join_type| to indicate how to handle offset changes at~|q|@>=
@z
@x [22.585] l.14861
        degeneracy set |join_type:=2|@>;
@y
        degeneracy set |join_type=2|@>;
@z
@x [22.585] l.14864
          then set |join_type:=2|@>@;
@y
          then set |join_type=2|@>@;
@z

@x [22.589] l.14909
@ @<Step |w| and move |k| one step closer to |zero_off|@>=
@y
@ @<Step \9{w}|w| and move |k| one step closer to |zero_off|@>=
@z

@x [22.592] l.14948
@ After setting |p:=mp_link(p)|, either |join_type=1| or |q=mp_link(p)|.
@y
@ After setting |p=mp_link(p)|, either |join_type==1| or |q==mp_link(p)|.
@z
@x [22.592] l.14950
@<Set |p=mp_link(p)| and add knots between |p| and |q| as...@>=
@y
@<Set \9{p}|p=mp_link(p)| and add knots between |p| and |q| as...@>=
@z
@x [22.592] l.14957
      @<Make |r| the last of two knots inserted between |p| and |q| to form a
@y
      @<Make \9{r}|r| the last of two knots inserted between |p| and |q| to form a
@z

@x [22.593] l.14968
problems, so we just set |r:=NULL| in that case.
@y
problems, so we just set |r=NULL| in that case.
@z

@x [22.594] l.15018
@ @<Make |r| the last of two knots inserted between |p| and |q| to form a...@>=
@y
@ @<Make \9{r}|r| the last of two knots inserted between |p| and |q| to form a...@>=
@z

@x [22.598] l.15147
    @<Make |c| look like a cycle of length one@>@;
@y
    @<Make \9{c}|c| look like a cycle of length one@>@;
@z

@x [22.599] l.15150
@ @<Make |c| look like a cycle of length one@>=
@y
@ @<Make \9{c}|c| look like a cycle of length one@>=
@z

@x [22.600] l.15162
That knot is |p| but if |p<>c|, its coordinates have already been offset by |w|.
@y
That knot is |p| but if |p!=c|, its coordinates have already been offset by |w|.
@z

@x [23.616] l.15920
  @<Initialize for intersections at level zero@>;
@y
  @<Initialize \9{f}for intersections at level zero@>;
@z

@x [23.620] l.16059
@<Initialize for intersections at level zero@>=
@y
@<Initialize \9{f}for intersections at level zero@>=
@z

@x [24.638] l.16470
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [27.695] l.17966
  @<Local variables for formatting calculations@>;
@y
  @+@t}\6{@>
  @<Local variables for formatting calculations@>;
  @#
@z

@x [27.701] l.18103
|tally:=0| and |trick_count:=1000000|; then when we reach the
@y
|tally=0| and |trick_count=1000000|; then when we reach the
@z
@x [27.701] l.18105
set |first_count:=tally| and |trick_count:=@tmax@>(error_line,
@y
set |first_count=tally| and |trick_count=@tmax@>(error_line,
@z
@x [27.701] l.18116
descriptive information on line~1, and set |n:=l+k|; here |n| is the
length of line~1. If $l+k>h$, some cropping is necessary, so we set |n:=h|
@y
descriptive information on line~1, and set |n=l+k|; here |n| is the
length of line~1. If $l+k>h$, some cropping is necessary, so we set |n=h|
@z

@x [28.710] l.18285
@<Declare the procedure called |make_exp_copy|@>
@y
@<Declare the procedure called |make_exp_copy|@>@;
@z

@x [28.711] l.18323
If |cur_sym<>0|, the values of |cur_cmd| and |cur_mod| are irrelevant.
@y
If |cur_sym!=0|, the values of |cur_cmd| and |cur_mod| are irrelevant.
@z

@x [29.735] l.18947
            |cur_sym:=mp->frozen_mpx_break| and |goto common_ending| */
@y
            |cur_sym=mp->frozen_mpx_break| and |goto common_ending| */
@z

@x [30.742] l.19121
            @<Complain that \.{MPX} files cannot contain \TeX\ material@>@;
@y
            @<Complain that \9{m}\.{MPX} files cannot contain \TeX\ material@>@;
@z

@x [30.744] l.19156
@ @<Complain that \.{MPX} files cannot contain \TeX\ material@>=
@y
@ @<Complain that \9{m}\.{MPX} files cannot contain \TeX\ material@>=
@z

@x [31.751] l.19316
        @<Adjust the balance; |break| if it's zero@>@;
@y
        @<Adjust the balance\9{1}; |break| if it's zero@>@;
@z

@x [31.755] l.19379
@ @<Adjust the balance; |break| if it's zero@>=
@y
@ @<Adjust the balance\9{1}; |break| if it's zero@>=
@z

@x [32.770] l.19798
@<Set initial...@>=
@y
@<Set \9{i}initial...@>=
@z

@x [32.798] l.20477
set_cur_cmd(mp_comma + 1);        /* anything |<>comma| will do */
@y
set_cur_cmd(mp_comma + 1);        /* anything |!=comma| will do */
@z

@x [32.804] l.20640
      @<Adjust the balance for an undelimited argument; |break| if done@>@;
@y
      @<Adjust the balance\9{3} for an undelimited argument; |break| if done@>@;
@z
@x [32.804] l.20642
      @<Adjust the balance for a delimited argument; |break| if done@>@;
@y
      @<Adjust the balance\9{2} for a delimited argument; |break| if done@>@;
@z

@x [32.805] l.20652
@ @<Adjust the balance for a delimited argument...@>=
@y
@ @<Adjust the balance\9{2} for a delimited argument...@>=
@z

@x [32.806] l.20666
@ @<Adjust the balance for an undelimited...@>=
@y
@ @<Adjust the balance\9{3} for an undelimited...@>=
@z

@x [32.807] l.20703
    @<Scan an expression followed by `\&{of} $\langle$primary$\rangle$'@>;
@y
    @<Scan \9{a}an expression followed by `\&{of} $\langle$primary$\rangle$'@>;
@z
@x [32.807] l.20706
    @<Scan a suffix with optional delimiters@>;
@y
    @<Scan \9{a}a suffix with optional delimiters@>;
@z

@x [32.808] l.20717
@ @<Scan an expression followed by `\&{of} $\langle$primary$\rangle$'@>=
@y
@ @<Scan \9{a}an expression followed by `\&{of} $\langle$primary$\rangle$'@>=
@z

@x [32.809] l.20754
@ @<Scan a suffix with optional delimiters@>=
@y
@ @<Scan \9{a}a suffix with optional delimiters@>=
@z

@x [33.815] l.20869
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [33.820] l.20943
@ When we begin to process a new \&{if}, we set |if_limit:=if_code|; then
@y
@ When we begin to process a new \&{if}, we set |if_limit=if_code|; then
@z

@x [34.830] l.21164
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [34.836] l.21279
@ @<Scan the loop text...@>=
@y
@<Scan the loop text...@>=
@z

@x [34.838] l.21352
    @<Make |q| a capsule containing the next picture component from
@y
    @<Make \9{q}|q| a capsule containing the next picture component from
@z

@x [34.841] l.21385
@ @<Make |q| a capsule containing the next picture component
@y
@ @<Make \9{q}|q| a capsule containing the next picture component
@z

@x [35.849] l.21615
@<Set init...@>=
@y
@<Set \9{i}init...@>=
@z

@x [35.857] l.21747
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@ @c
@y
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@c
@z

@x [35.861] l.21788
@<Find and load preload file, if required@>=
@y
@<Find \9{a}and load preload file, if required@>=
@z

@x [35.863] l.21816
where |loc<last| and |buffer[loc]<>""|.
@y
where |loc<last| and |buffer[loc]!=""|.
@z

@x [35.876] l.22018
|job_name<>0|. It ignores and changes the current settings of |cur_area|
@y
|job_name!=0|. It ignores and changes the current settings of |cur_area|
@z

@x [35.886] l.22249
  @<Flush |name| and replace it with |cur_name| if it won't be needed@>;
@y
  @<Flush \9{n}|name| and replace it with |cur_name| if it won't be needed@>;
@z

@x [35.887] l.22259
@<Flush |name| and replace it with |cur_name| if it won't be needed@>=
@y
@<Flush \9{n}|name| and replace it with |cur_name| if it won't be needed@>=
@z

@x [36.906] l.22539
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [36.912] l.22814
@<Declare the procedure called |print_dp|@>
@<Declare the stashing/unstashing routines@>
@y
@<Declare the procedure called |print_dp|@>@;
@<Declare the stashing/unstashing routines@>@;
@z

@x [36.934] l.23487
just before \MP\ calls |scan_expression|, if the expression should be
@y
just before \MP\ calls the procedure |scan_expression|, if the expression should be
@z

@x [36.934] l.23495
|var_flag:=0|. In this way each of the scanning routines ``knows''
@y
|var_flag=0|. In this way each of the scanning routines ``knows''
@z

@x [36.935] l.23508
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [37.936] l.23538
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z
@x [37.936] l.23767
      if (cur_cmd() < mp_numeric_token) {  /* in particular, |cur_cmd<>plus_or_minus| */
@y
      if (cur_cmd() < mp_numeric_token) {  /* in particular, |cur_cmd!=plus_or_minus| */
@z
@x [37.936] l.23904
    @<Scan a variable primary; |goto restart| if it turns out to be a macro@>;
@y
    @<Scan \9{a}a variable primary; |goto restart| if it turns out to be a macro@>;
@z

@x [37.937] l.23920
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [37.940] l.24057
@<Scan a variable primary...@>=
@y
@<Scan \9{a}a variable primary...@>=
@z

@x [37.943] l.24250
subscripts evaluated. But if |post_head<>NULL|, the variable turned out
@y
subscripts evaluated. But if |post_head!=NULL|, the variable turned out
@z

@x [37.944] l.24284
@<Declare subroutines needed by |make_exp_copy|@>
@y
@<Declare subroutines needed by |make_exp_copy|@>@;
@z

@x [37.947] l.24447
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z
@x [37.947] l.24455
      /* Scan a bracketed subscript and set |cur_cmd:=numeric_token| */
@y
      /* Scan a bracketed subscript and set |cur_cmd=numeric_token| */
@z

@x [38.948] l.24506
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.950] l.24562
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.951] l.24606
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.952] l.24672
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.957] l.25164
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [39.961] l.25437
@<Declare nullary action procedure@>
@y
@<Declare nullary action procedure@>@;
@z

@x [39.963] l.25542
@<Declare unary action procedures@>
@y
@<Declare unary action procedures@>@;
@z

@x [39.991] l.27278
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [39.992] l.27297
@<Declare binary action procedures@>
@y
@<Declare binary action procedures@>@;
@z

@x [39.992] l.27428
      mp_add_or_subtract (mp, p, NULL, mp_minus);      /* |cur_exp:=(p)-cur_exp| */
@y
      mp_add_or_subtract (mp, p, NULL, mp_minus);      /* |cur_exp=(p)-cur_exp| */
@z

@x [39.995] l.28017
@<Declare the procedure called |dep_finish|@>
@y
@<Declare the procedure called |dep_finish|@>@;
@z

@x [39.1013] l.28727
    @<Transform graphical object |q|@>;
@y
    @<Transform \9{g}graphical object |q|@>;
@z

@x [39.1020] l.28858
@<Transform graphical object |q|@>=
@y
@<Transform \9{g}graphical object |q|@>=
@z
@x [39.1020] l.28864
    @<Transform |mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@y
    @<Transform \9{m}|mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@z
@x [39.1020] l.28871
    @<Transform |mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@y
    @<Transform \9{m}|mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@z

@x [39.1021] l.28900
@<Transform |mp_pen_p(qq)|, making sure...@>=
@y
@<Transform \9{m}|mp_pen_p(qq)|, making sure...@>=
@z

@x [39.1023] l.28938
@<Declare subroutines needed by |big_trans|@>
@y
@<Declare subroutines needed by |big_trans|@>@;
@z

@x [39.1023] l.28945
      @<Transform an unknown big node and |return|@>;
@y
      @<Transform \9{a}an unknown big node and |return|@>;
@z
@x [39.1023] l.28954
      @<Transform an unknown big node and |return|@>;
@y
      @<Transform \9{a}an unknown big node and |return|@>;
@z
@x [39.1023] l.28957
  @<Transform a known big node@>;
@y
  @<Transform \9{a}a known big node@>;
@z

@x [39.1024] l.28961
@ @<Transform an unknown big node and |return|@>=
@y
@ @<Transform \9{a}an unknown big node and |return|@>=
@z

@x [39.1025] l.28979
and let |q| point to a another value field. The |bilin1| procedure
@y
and let |q| point to another value field. The |bilin1| procedure
@z

@x [39.1026] l.29046
@ @<Transform a known big node@>=
@y
@ @<Transform \9{a}a known big node@>=
@z
@x [39.1026] l.29049
  @<Transform known by known@>@;
@y
  @<Transform \9{k}known by known@>@;
@z

@x [39.1029] l.29134
@ @<Transform known by known@>=
@y
@ @<Transform \9{k}known by known@>=
@z

@x [40.1040] l.29813
@<Declare the procedure called |make_eq|@>
@y
@<Declare the procedure called |make_eq|@>@;
@z

@x [41.1135] l.32360
      /* Setting |p:=NULL| causes the $\langle$with list$\rangle$ to be ignored;
         setting |e:=NULL| prevents anything from being added to |lhe|. */
@y
      /* Setting |p=NULL| causes the $\langle$with list$\rangle$ to be ignored;
         setting |e=NULL| prevents anything from being added to |lhe|. */
@z
@x [41.1135] l.32386
      /* In this case |add_type<>also_code| so setting |p:=NULL| suppresses future
@y
      /* In this case |add_type!=also_code| so setting |p=NULL| suppresses future
@z

@x [41.1136] l.32458
@<Declare the \ps\ output procedures@>
@y
@<Declare the \ps\ output procedures@>@;
@z

@x [41.1137] l.32470
    @<Complain that it's not a known picture@>;
@y
    @<Complain that \9{i}it's not a known picture@>;
@z

@x [41.1138] l.32483
@ @<Complain that it's not a known picture@>=
@y
@ @<Complain that \9{i}it's not a known picture@>=
@z

@x [41.1140] l.32500
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [41.1143] l.32549
@<Declare a procedure called |no_string_err|@>
@y
@<Declare a procedure called |no_string_err|@>@;
@z

@x [41.1149] l.32630
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [41.1153] l.32700
  @<Find |n| where |wr_fname[n]=cur_exp| and call |open_write_file| if
@y
  @<Find \9{n}|n| where |wr_fname[n]==cur_exp| and call |open_write_file| if
@z

@x [41.1154] l.32714
@ @<Find |n| where |wr_fname[n]=cur_exp| and call |open_write_file| if...@>=
@y
@ @<Find \9{n}|n| where |wr_fname[n]==cur_exp| and call |open_write_file| if...@>=
@z

@x [42.1168] l.33102
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [42.1172] l.33180
@ Now let's consider \MP's special \.{TFM}-oriented commands.


@
@y
@ Now let's consider \MP's special \.{TFM}-oriented commands.

@z

@x [42.1199] l.33794
by changing values if necessary. It also sets |indep_value(p):=k| if |value(p)|
@y
by changing values if necessary. It also sets |indep_value(p)=k| if |value(p)|
@z

@x [42.1202] l.33900
  mp_tfm_warning (mp, mp_char_wd)
@y
  mp_tfm_warning (mp, mp_char_wd)@;
@z

@x [43.1230] l.34470
@<Set initial...@>=
@y
@<Set \9{i}initial...@>=
@z

@x [43.1239] l.34615
    @<Adjust |p|'s bounding box to contain |str_pool[k]|; advance |k|@>@;
@y
    @<Adjust \9{p}|p|'s bounding box to contain |str_pool[k]|; advance |k|@>@;
@z

@x [43.1240] l.34623
@ @<Adjust |p|'s bounding box to contain |str_pool[k]|; advance |k|@>=
@y
@ @<Adjust \9{p}|p|'s bounding box to contain |str_pool[k]|; advance |k|@>=
@z

@x [43.1246] l.34702
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [44.1249] l.34755
      @<Use |c| to compute the file extension |s|@>@;
@y
      @<Use \9{c}|c| to compute the file extension |s|@>@;
@z

@x [44.1250] l.34934
@<Use |c| to compute the file extension |s|@>=
@y
@<Use \9{c}|c| to compute the file extension |s|@>=
@z

@x [44.1254] l.34975
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [46.1283] l.35514
@<Declare the basic parsing subroutines@>
@<Declare miscellaneous procedures that were declared |forward|@>
@y
@<Declare the \9{b}basic parsing subroutines@>@;
@<Declare miscellaneous procedures that were declared |forward|@>@;
@z

@x [46.1284] l.35523
might lead to an infinite loop.
@^system dependencies@>

@ @c
@y
might lead to an infinite loop.
@^system dependencies@>

@c
@z
