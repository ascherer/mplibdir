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

@x [1.5] l.191
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
@y
#include <png.h>                /* for |PNG_LIBPNG_VER_STRING|, |png_libpng_ver| */
/*|
#include <pixman.h>| */             /* for |PIXMAN_VERSION_STRING|, |pixman_version_string()| */
/*|
#include <cairo.h>| */              /* for |CAIRO_VERSION_STRING|, |cairo_version_string()| */
/*|
#include <gmp.h>| */                /* for |gmp_version| */
/*|
#include <mpfr.h>| */               /* for |MPFR_VERSION_STRING|, |mpfr_get_version()| */
@z

@x [1.17] l.415
  @<Set initial values of key variables@>;
@y
  @<Set \9{i}initial values of key variables@>;
@z

@x [1.20] l.680
  @<Find and load preload file, if required@>;
@y
  @<Find \9{a}and load preload file, if required@>;
@z

@x [2.42] l.912
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [2.43] l.924
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [3.70] l.1273
returns |false| and sets |last:=first|.  In general, the |ASCII_code|
@y
returns |false| and sets |last=first|.  In general, the |ASCII_code|
@z

@x [11.203] l.4241
@ @<Set initial ...@>=
@y
@ @<Set \9{i}initial ...@>=
@z

@x [11.215] l.4589
@<Set initial ...@>=
@y
@<Set \9{i}initial ...@>=
@z

@x [15.298] l.7008
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [16.307] l.7295
one knot from another, we will set |originator(p):=mp_metapost_user| when
@y
one knot from another, we will set |originator(p)=mp_metapost_user| when
@z
@x [16.307] l.7297
|originator(p):=mp_program_code| in all other cases.
@y
|originator(p)=mp_program_code| in all other cases.
@z

@x [17.334] l.7797
  @<If consecutive knots are equal, join them explicitly@>;
@y
  @<If \9{c}consecutive knots are equal, join them explicitly@>;
@z

@x [17.337] l.7831
@<If consecutive knots are equal, join them explicitly@>=
@y
@<If \9{c}consecutive knots are equal, join them explicitly@>=
@z

@x [17.345] l.8017
@<Remove |open| types at the breakpoints@>;
@y
@<Remove \9{o}|open| types at the breakpoints@>;
@z

@x [17.350] l.8117
@<Remove |open| types at the breakpoints@>=
@y
@<Remove \9{o}|open| types at the breakpoints@>=
@z

@x [18.392] l.9454
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
  @<Check the control points against the bounding box and set |wavy:=true|
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
  @<Check the control points against the bounding box and set |wavy=true|
@z

@x [18.393] l.9489
@ @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>=
@y
@ @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>=
@z

@x [18.396] l.9556
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@z

@x [18.397] l.9585
  @<Adjust |bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@y
  @<Adjust \9{b}|bbmin[c]| and |bbmax[c]| to accommodate |x|@>;
@z

@x [18.402] l.9754
  @<Set |a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is as
@y
  @<Set \9{a}|a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is as
@z

@x [18.403] l.9807
@ @<Set |a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is...@>=
@y
@ @<Set \9{a}|a_new| and |a_aux| so their sum is |2*a_goal| and |a_new| is...@>=
@z

@x [19.420] l.10418
    @<Make sure |h| isn't confused with an elliptical pen@>;
@y
    @<Make sure \9{h}|h| isn't confused with an elliptical pen@>;
@z

@x [19.422] l.10455
@<Make sure |h| isn't confused with an elliptical pen@>=
@y
@<Make sure \9{h}|h| isn't confused with an elliptical pen@>=
@z

@x [19.431] l.10587
    @<Initialize |p| as the |k|th knot of a circle of unit diameter,
@y
    @<Initialize \9{p}|p| as the |k|th knot of a circle of unit diameter,
@z

@x [19.434] l.10622
@<Initialize |p| as the |k|th knot of a circle of unit diameter,...@>=
@y
@<Initialize \9{p}|p| as the |k|th knot of a circle of unit diameter,...@>=
@z

@x [19.436] l.10668
@<Set init...@>=
@y
@<Set \9{i}init...@>=
@z

@x [19.439] l.10718
    @<Set |l| to the leftmost knot in polygon~|h|@>;
    @<Set |r| to the rightmost knot in polygon~|h|@>;
@y
    @<Set \9{l}|l| to the leftmost knot in polygon~|h|@>;
    @<Set \9{r}|r| to the rightmost knot in polygon~|h|@>;
@z
@x [19.439] l.10722
      @<Find any knots on the path from |l| to |r| above the |l|-|r| line and
@y
      @<Find \9{a}any knots on the path from |l| to |r| above the |l|-|r| line and
@z
@x [19.439] l.10724
      @<Find any knots on the path from |s| to |l| below the |l|-|r| line and
@y
      @<Find \9{a}any knots on the path from |s| to |l| below the |l|-|r| line and
@z

@x [19.440] l.10741
@<Set |l| to the leftmost knot in polygon~|h|@>=
@y
@<Set \9{l}|l| to the leftmost knot in polygon~|h|@>=
@z

@x [19.441] l.10753
@ @<Set |r| to the rightmost knot in polygon~|h|@>=
@y
@ @<Set \9{r}|r| to the rightmost knot in polygon~|h|@>=
@z

@x [19.442] l.10765
@ @<Find any knots on the path from |l| to |r| above the |l|-|r| line...@>=
@y
@ @<Find \9{a}any knots on the path from |l| to |r| above the |l|-|r| line...@>=
@z

@x [19.445] l.10808
@ @<Find any knots on the path from |s| to |l| below the |l|-|r| line...@>=
@y
@ @<Find \9{a}any knots on the path from |s| to |l| below the |l|-|r| line...@>=
@z

@x [19.448] l.10902
        @<Remove knot |p| and back up |p| and |q| but don't go past |l|@>@;
@y
        @<Remove \9{k}knot |p| and back up |p| and |q| but don't go past |l|@>@;
@z

@x [19.449] l.10911
@ @<Remove knot |p| and back up |p| and |q| but don't go past |l|@>=
@y
@ @<Remove \9{k}knot |p| and back up |p| and |q| but don't go past |l|@>=
@z

@x [21.495] l.12116
    @<Make |mp_link(pp)| point to a copy of object |p|,
@y
    @<Make \9{m}|mp_link(pp)| point to a copy of object |p|,
@z

@x [21.496] l.12124
@ @<Make |mp_link(pp)| point to a copy of object |p|, and update |p| and |pp|@>=
@y
@ @<Make \9{m}|mp_link(pp)| point to a copy of object |p|, and update |p| and |pp|@>=
@z

@x [21.513] l.12581
    @<Make |d| point to a new dash node created from stroke |p| and path |pp|
@y
    @<Make \9{d}|d| point to a new dash node created from stroke |p| and path |pp|
@z
@x [21.513] l.12588
  @<Scan |dash_list(h)| and deal with any dashes that are themselves dashed@>;
  @<Set |dash_y(h)| and merge the first and last dashes if necessary@>;
@y
  @<Scan \9{d}|dash_list(h)| and deal with any dashes that are themselves dashed@>;
  @<Set \9{d}|dash_y(h)| and merge the first and last dashes if necessary@>;
@z
@x [21.513] l.12594
  @<Flush the dash list, recycle |h| and return |NULL|@>;
@y
  @<Flush the \9{d}dash list, recycle |h| and return |NULL|@>;
@z

@x [21.517] l.12633
@<Make |d| point to a new dash node created from stroke |p| and path...@>=
@<Make sure |p| and |p0| are the same color and |goto not_found| if there is
@y
@<Make \9{d}|d| point to a new dash node created from stroke |p| and path...@>=
@<Make sure \9{p}|p| and |p0| are the same color and |goto not_found| if there is
@z

@x [21.519] l.12719
@ @<Make sure |p| and |p0| are the same color and |goto not_found|...@>=
@y
@ @<Make sure \9{p}|p| and |p0| are the same color and |goto not_found|...@>=
@z

@x [21.521] l.12749
@ @<Set |dash_y(h)| and merge the first and last dashes if necessary@>=
@y
@ @<Set \9{d}|dash_y(h)| and merge the first and last dashes if necessary@>=
@z

@x [21.522] l.12774
@<Flush the dash list, recycle |h| and return |NULL|@>=
@y
@<Flush the \9{d}dash list, recycle |h| and return |NULL|@>=
@z

@x [21.523] l.12783
@<Scan |dash_list(h)| and deal with any dashes that are themselves dashed@>=
@y
@<Scan \9{d}|dash_list(h)| and deal with any dashes that are themselves dashed@>=
@z
@x [21.523] l.12797
@:this can't happen dash0}{\quad dash1@>
@y
@:this can't happen dash1}{\quad dash1@>
@z
@x [21.523] l.12805
@:this can't happen dash0}{\quad dash1@>
@y
@:this can't happen dash1}{\quad dash1@>
@z

@x [21.525] l.12844
    @<If |dd| has `fallen off the end', back up to the beginning and fix |xoff|@>;
@y
    @<If \9{d}|dd| has `fallen off the end', back up to the beginning and fix |xoff|@>;
@z

@x [21.527] l.12878
@ @<If |dd| has `fallen off the end', back up to the beginning and fix...@>=
@y
@ @<If \9{d}|dd| has `fallen off the end', back up to the beginning and fix...@>=
@z

@x [21.530] l.12956
      @<Make |(dx,dy)| the final direction for the path segment from
@y
      @<Make \9{e}|(dx,dy)| the final direction for the path segment from
@z
@x [21.530] l.12962
          @<Use |(dx,dy)| to generate a vertex of the square end cap and
@y
          @<Use \9{d}|(dx,dy)| to generate a vertex of the square end cap and
@z

@x [21.531] l.12984
@ @<Make |(dx,dy)| the final direction for the path segment from...@>=
@y
@ @<Make \9{e}|(dx,dy)| the final direction for the path segment from...@>=
@z

@x [21.533] l.13022
@ @<Use |(dx,dy)| to generate a vertex of the square end cap and...@>=
@y
@ @<Use \9{d}|(dx,dy)| to generate a vertex of the square end cap and...@>=
@z

@x [21.535] l.13100
      @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@y
  @/  @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@z

@x [22.549] l.13522
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [22.573] l.14337
  |t:=fraction_one+1|@>;
@y
  |t=fraction_one+1|@>;
@z

@x [22.577] l.14522
@<Make |ss| negative if and only if the total change in direction is
@y
@<Make \9{s}|ss| negative if and only if the total change in direction is
@z

@x [22.579] l.14582
@<Make |ss| negative if and only if the total change in direction is...@>=
@y
@<Make \9{s}|ss| negative if and only if the total change in direction is...@>=
@z

@x [22.583] l.14742
round joins; and square end caps are achieved by setting |join_type:=3|.
@y
round joins; and square end caps are achieved by setting |join_type=3|.
@z
@x [22.583] l.14746
approach that is achieved by setting |join_type:=2|.
@y
approach that is achieved by setting |join_type=2|.
@z
@x [22.583] l.14769
  @<Use |offset_prep| to compute the envelope spec then walk |h| around to
@y
  @<Use \9{o}|offset_prep| to compute the envelope spec then walk |h| around to
@z
@x [22.583] l.14782
      @<Set |join_type| to indicate how to handle offset changes at~|q|@>@;
@y
      @<Set \9{j}|join_type| to indicate how to handle offset changes at~|q|@>@;
@z
@x [22.583] l.14785
      @<Step |w| and move |k| one step closer to |zero_off|@>;
@y
      @<Step \9{w}|w| and move |k| one step closer to |zero_off|@>;
@z
@x [22.583] l.14798
      @<Set |p=mp_link(p)| and add knots between |p| and |q| as
@y
      @<Set \9{p}|p=mp_link(p)| and add knots between |p| and |q| as
@z

@x [22.584] l.14814
@ @<Use |offset_prep| to compute the envelope spec then walk |h| around to...@>=
@y
@ @<Use \9{o}|offset_prep| to compute the envelope spec then walk |h| around to...@>=
@z

@x [22.585] l.14824
degenerate cubic.  Setting |join_type:=2| in this case makes the computed
@y
degenerate cubic.  Setting |join_type=2| in this case makes the computed
@z
@x [22.585] l.14827
@<Set |join_type| to indicate how to handle offset changes at~|q|@>=
@y
@<Set \9{j}|join_type| to indicate how to handle offset changes at~|q|@>=
@z
@x [22.585] l.14840
        degeneracy set |join_type:=2|@>;
@y
        degeneracy set |join_type=2|@>;
@z
@x [22.585] l.14843
          then set |join_type:=2|@>@;
@y
          then set |join_type=2|@>@;
@z

@x [22.589] l.14888
@ @<Step |w| and move |k| one step closer to |zero_off|@>=
@y
@ @<Step \9{w}|w| and move |k| one step closer to |zero_off|@>=
@z

@x [22.592] l.14927
@ After setting |p:=mp_link(p)|, either |join_type=1| or |q=mp_link(p)|.
@y
@ After setting |p=mp_link(p)|, either |join_type==1| or |q==mp_link(p)|.
@z
@x [22.592] l.14929
@<Set |p=mp_link(p)| and add knots between |p| and |q| as...@>=
@y
@<Set \9{p}|p=mp_link(p)| and add knots between |p| and |q| as...@>=
@z
@x [22.592] l.14936
      @<Make |r| the last of two knots inserted between |p| and |q| to form a
@y
      @<Make \9{r}|r| the last of two knots inserted between |p| and |q| to form a
@z

@x [22.593] l.14947
problems, so we just set |r:=NULL| in that case.
@y
problems, so we just set |r=NULL| in that case.
@z

@x [22.594] l.14997
@ @<Make |r| the last of two knots inserted between |p| and |q| to form a...@>=
@y
@ @<Make \9{r}|r| the last of two knots inserted between |p| and |q| to form a...@>=
@z

@x [22.598] l.15126
    @<Make |c| look like a cycle of length one@>@;
@y
    @<Make \9{c}|c| look like a cycle of length one@>@;
@z

@x [22.599] l.15129
@ @<Make |c| look like a cycle of length one@>=
@y
@ @<Make \9{c}|c| look like a cycle of length one@>=
@z

@x [23.616] l.15899
  @<Initialize for intersections at level zero@>;
@y
  @<Initialize \9{f}for intersections at level zero@>;
@z

@x [23.620] l.16038
@<Initialize for intersections at level zero@>=
@y
@<Initialize \9{f}for intersections at level zero@>=
@z

@x [24.638] l.16449
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [27.701] l.18081
|tally:=0| and |trick_count:=1000000|; then when we reach the
@y
|tally=0| and |trick_count=1000000|; then when we reach the
@z
@x [27.701] l.18083
set |first_count:=tally| and |trick_count:=@tmax@>(error_line,
@y
set |first_count=tally| and |trick_count=@tmax@>(error_line,
@z
@x [27.701] l.18094
descriptive information on line~1, and set |n:=l+k|; here |n| is the
length of line~1. If $l+k>h$, some cropping is necessary, so we set |n:=h|
@y
descriptive information on line~1, and set |n=l+k|; here |n| is the
length of line~1. If $l+k>h$, some cropping is necessary, so we set |n=h|
@z

@x [29.735] l.18925
            |cur_sym:=mp->frozen_mpx_break| and |goto common_ending| */
@y
            |cur_sym=mp->frozen_mpx_break| and |goto common_ending| */
@z

@x [30.742] l.19099
            @<Complain that \.{MPX} files cannot contain \TeX\ material@>@;
@y
            @<Complain that \9{m}\.{MPX} files cannot contain \TeX\ material@>@;
@z

@x [30.744] l.19134
@ @<Complain that \.{MPX} files cannot contain \TeX\ material@>=
@y
@ @<Complain that \9{m}\.{MPX} files cannot contain \TeX\ material@>=
@z

@x [31.751] l.19294
        @<Adjust the balance; |break| if it's zero@>@;
@y
        @<Adjust the balance\9{1}; |break| if it's zero@>@;
@z

@x [31.755] l.19357
@ @<Adjust the balance; |break| if it's zero@>=
@y
@ @<Adjust the balance\9{1}; |break| if it's zero@>=
@z

@x [32.770] l.19776
@<Set initial...@>=
@y
@<Set \9{i}initial...@>=
@z

@x [32.804] l.20618
      @<Adjust the balance for an undelimited argument; |break| if done@>@;
@y
      @<Adjust the balance\9{3} for an undelimited argument; |break| if done@>@;
@z
@x [32.804] l.20620
      @<Adjust the balance for a delimited argument; |break| if done@>@;
@y
      @<Adjust the balance\9{2} for a delimited argument; |break| if done@>@;
@z

@x [32.805] l.20630
@ @<Adjust the balance for a delimited argument...@>=
@y
@ @<Adjust the balance\9{2} for a delimited argument...@>=
@z

@x [32.806] l.20644
@ @<Adjust the balance for an undelimited...@>=
@y
@ @<Adjust the balance\9{3} for an undelimited...@>=
@z

@x [32.807] l.20681
    @<Scan an expression followed by `\&{of} $\langle$primary$\rangle$'@>;
@y
    @<Scan \9{a}an expression followed by `\&{of} $\langle$primary$\rangle$'@>;
@z
@x [32.807] l.20684
    @<Scan a suffix with optional delimiters@>;
@y
    @<Scan \9{a}a suffix with optional delimiters@>;
@z

@x [32.808] l.20695
@ @<Scan an expression followed by `\&{of} $\langle$primary$\rangle$'@>=
@y
@ @<Scan \9{a}an expression followed by `\&{of} $\langle$primary$\rangle$'@>=
@z

@x [32.809] l.20732
@ @<Scan a suffix with optional delimiters@>=
@y
@ @<Scan \9{a}a suffix with optional delimiters@>=
@z

@x [33.815] l.20847
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [33.820] l.20921
@ When we begin to process a new \&{if}, we set |if_limit:=if_code|; then
@y
@ When we begin to process a new \&{if}, we set |if_limit=if_code|; then
@z

@x [34.830] l.21142
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [34.836] l.21257
@ @<Scan the loop text...@>=
@y
@<Scan the loop text...@>=
@z

@x [34.838] l.21330
    @<Make |q| a capsule containing the next picture component from
@y
    @<Make \9{q}|q| a capsule containing the next picture component from
@z

@x [34.841] l.21363
@ @<Make |q| a capsule containing the next picture component
@y
@ @<Make \9{q}|q| a capsule containing the next picture component
@z

@x [35.849] l.21593
@<Set init...@>=
@y
@<Set \9{i}init...@>=
@z

@x [35.857] l.21725
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@ @c
@y
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@c
@z

@x [35.861] l.21766
@<Find and load preload file, if required@>=
@y
@<Find \9{a}and load preload file, if required@>=
@z

@x [35.886] l.22227
  @<Flush |name| and replace it with |cur_name| if it won't be needed@>;
@y
  @<Flush \9{n}|name| and replace it with |cur_name| if it won't be needed@>;
@z

@x [35.887] l.22237
@<Flush |name| and replace it with |cur_name| if it won't be needed@>=
@y
@<Flush \9{n}|name| and replace it with |cur_name| if it won't be needed@>=
@z

@x [36.906] l.22517
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [36.934] l.23473
|var_flag:=0|. In this way each of the scanning routines ``knows''
@y
|var_flag=0|. In this way each of the scanning routines ``knows''
@z

@x [36.935] l.23486
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [37.936] l.23516
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z
@x [37.936] l.23882
    @<Scan a variable primary; |goto restart| if it turns out to be a macro@>;
@y
    @<Scan \9{a}a variable primary; |goto restart| if it turns out to be a macro@>;
@z

@x [37.937] l.23898
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [37.940] l.24035
@<Scan a variable primary...@>=
@y
@<Scan \9{a}a variable primary...@>=
@z

@x [37.947] l.24425
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z
@x [37.947] l.24433
      /* Scan a bracketed subscript and set |cur_cmd:=numeric_token| */
@y
      /* Scan a bracketed subscript and set |cur_cmd=numeric_token| */
@z

@x [38.948] l.24484
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.950] l.24540
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.951] l.24584
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.952] l.24650
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [38.957] l.25142
@<Declare the basic parsing subroutines@>=
@y
@<Declare the \9{b}basic parsing subroutines@>=
@z

@x [39.991] l.27256
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [39.992] l.27406
      mp_add_or_subtract (mp, p, NULL, mp_minus);      /* |cur_exp:=(p)-cur_exp| */
@y
      mp_add_or_subtract (mp, p, NULL, mp_minus);      /* |cur_exp=(p)-cur_exp| */
@z

@x [39.1013] l.28688
    @<Transform graphical object |q|@>;
@y
    @<Transform \9{g}graphical object |q|@>;
@z

@x [39.1020] l.28819
@<Transform graphical object |q|@>=
@y
@<Transform \9{g}graphical object |q|@>=
@z
@x [39.1020] l.28825
    @<Transform |mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@y
    @<Transform \9{m}|mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@z
@x [39.1020] l.28832
    @<Transform |mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@y
    @<Transform \9{m}|mp_pen_p(qq)|, making sure polygonal pens stay counter-clockwise@>;
@z

@x [39.1021] l.28861
@<Transform |mp_pen_p(qq)|, making sure...@>=
@y
@<Transform \9{m}|mp_pen_p(qq)|, making sure...@>=
@z

@x [39.1023] l.28906
      @<Transform an unknown big node and |return|@>;
@y
      @<Transform \9{a}an unknown big node and |return|@>;
@z
@x [39.1023] l.28915
      @<Transform an unknown big node and |return|@>;
@y
      @<Transform \9{a}an unknown big node and |return|@>;
@z
@x [39.1023] l.28918
  @<Transform a known big node@>;
@y
  @<Transform \9{a}a known big node@>;
@z

@x [39.1024] l.28922
@ @<Transform an unknown big node and |return|@>=
@y
@ @<Transform \9{a}an unknown big node and |return|@>=
@z

@x [39.1025] l.28940
and let |q| point to a another value field. The |bilin1| procedure
@y
and let |q| point to another value field. The |bilin1| procedure
@z

@x [39.1026] l.29007
@ @<Transform a known big node@>=
@y
@ @<Transform \9{a}a known big node@>=
@z
@x [39.1026] l.29010
  @<Transform known by known@>@;
@y
  @<Transform \9{k}known by known@>@;
@z

@x [39.1029] l.29095
@ @<Transform known by known@>=
@y
@ @<Transform \9{k}known by known@>=
@z

@x [41.1135] l.32321
      /* Setting |p:=NULL| causes the $\langle$with list$\rangle$ to be ignored;
         setting |e:=NULL| prevents anything from being added to |lhe|. */
@y
      /* Setting |p=NULL| causes the $\langle$with list$\rangle$ to be ignored;
         setting |e=NULL| prevents anything from being added to |lhe|. */
@z
@x [41.1135] l.32347
      /* In this case |add_type<>also_code| so setting |p:=NULL| suppresses future
@y
      /* In this case |add_type<>also_code| so setting |p=NULL| suppresses future
@z

@x [41.1137] l.32431
    @<Complain that it's not a known picture@>;
@y
    @<Complain that \9{i}it's not a known picture@>;
@z

@x [41.1138] l.32444
@ @<Complain that it's not a known picture@>=
@y
@ @<Complain that \9{i}it's not a known picture@>=
@z

@x [41.1140] l.32461
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [41.1149] l.32591
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [41.1153] l.32661
  @<Find |n| where |wr_fname[n]=cur_exp| and call |open_write_file| if
@y
  @<Find \9{n}|n| where |wr_fname[n]==cur_exp| and call |open_write_file| if
@z

@x [41.1154] l.32675
@ @<Find |n| where |wr_fname[n]=cur_exp| and call |open_write_file| if...@>=
@y
@ @<Find \9{n}|n| where |wr_fname[n]==cur_exp| and call |open_write_file| if...@>=
@z

@x [42.1168] l.33063
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [42.1172] l.33141
@ Now let's consider \MP's special \.{TFM}-oriented commands.


@
@y
@ Now let's consider \MP's special \.{TFM}-oriented commands.

@z

@x [42.1199] l.33755
by changing values if necessary. It also sets |indep_value(p):=k| if |value(p)|
@y
by changing values if necessary. It also sets |indep_value(p)=k| if |value(p)|
@z

@x [42.1202] l.33861
  mp_tfm_warning (mp, mp_char_wd)
@y
  mp_tfm_warning (mp, mp_char_wd)@;
@z

@x [43.1230] l.34431
@<Set initial...@>=
@y
@<Set \9{i}initial...@>=
@z

@x [43.1239] l.34576
    @<Adjust |p|'s bounding box to contain |str_pool[k]|; advance |k|@>@;
@y
    @<Adjust \9{p}|p|'s bounding box to contain |str_pool[k]|; advance |k|@>@;
@z

@x [43.1240] l.34584
@ @<Adjust |p|'s bounding box to contain |str_pool[k]|; advance |k|@>=
@y
@ @<Adjust \9{p}|p|'s bounding box to contain |str_pool[k]|; advance |k|@>=
@z

@x [43.1246] l.34663
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [44.1249] l.34716
      @<Use |c| to compute the file extension |s|@>@;
@y
      @<Use \9{c}|c| to compute the file extension |s|@>@;
@z

@x [44.1250] l.34895
@<Use |c| to compute the file extension |s|@>=
@y
@<Use \9{c}|c| to compute the file extension |s|@>=
@z

@x [44.1254] l.34936
@ @<Set init...@>=
@y
@ @<Set \9{i}init...@>=
@z

@x [46.1283] l.35475
@<Declare the basic parsing subroutines@>;
@y
@<Declare the \9{b}basic parsing subroutines@>;
@z

@x [46.1284] l.35484
might lead to an infinite loop.
@^system dependencies@>

@ @c
@y
might lead to an infinite loop.
@^system dependencies@>

@c
@z
