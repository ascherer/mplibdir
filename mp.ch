@x [0.0] l.26
\pdfoutput=1 \sanitizecommand\MP{MetaPost}
\pageno=3
@y
\def\topofcontents{\centerline{\titlefont\title}%\vskip.7in
  \vfill} % this material will start the table of contents page
\ifpdf
\sanitizecommand\MP{MetaPost}
\sanitizecommand\theta{theta}
\sanitizecommand\psi{psi}
\sanitizecommand\alpha{alpha}
\sanitizecommand\beta{beta}
\sanitizecommand\preceq{<=}
\sanitizecommand\prec{<}
\fi
\def\contentspagenumber{2}
\pageno=\contentspagenumber \advance \pageno by 1
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
