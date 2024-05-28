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
  \ifacrohint\def\digits{\pdflink{\the\countA}\scan}
  \else\def\digits{{\the\countA}\scan}\fi
  \def\scan##1{\begingroup
    \ifx!##1% exit on exclamation point
    \else\ifx,##1,\space\aftergroup\scan %insert,\space}\scan ...
    \else\ifx\[##1\aftergroup##1%{% insert }\[...
    \else\ifx\*##1\aftergroup\lapstar\aftergroup\scan %insert }\lapstar\scan ...
    \else\ifnum`##1>`9##1\aftergroup\scan %{% insert #1}\scan ...
    \else\ifnum`##1<`0##1\aftergroup\scan %{% insert #1}\scan ...
    \else
      \afterassignment\digits
      \aftergroup\countA
      \aftergroup##1%{% insert }\entry=#1...\digits ...
    \fi\fi\fi\fi\fi \fi
    \endgroup
  }
  \rm \rightskip0pt plus 2.5em \tolerance 10000 %XXX \let\*=\lapstar
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

@x [21.535] l.13100
      @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@y
  @/  @t\4@>@<Other cases for updating the bounding box based on the type of object |p|@>@;
@z

@x [34.836] l.21257
@ @<Scan the loop text...@>=
@y
@<Scan the loop text...@>=
@z

@x [35.857] l.21725
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@ @c
@y
@d append_to_name(A) { mp->name_of_file[k++]=(char)xchr(xord((ASCII_code)(A))); }

@c
@z

@x [42.1172] l.33141
@ Now let's consider \MP's special \.{TFM}-oriented commands.


@
@y
@ Now let's consider \MP's special \.{TFM}-oriented commands.

@z

@x [42.1202] l.33861
  mp_tfm_warning (mp, mp_char_wd)
@y
  mp_tfm_warning (mp, mp_char_wd)@;
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
