@x [0] l.15
\pdfoutput=1
@y

\ifpdf \sanitizecommand\MP{MetaPost} \fi

@s tm int
@z

@x [2] l.57
@= /*@@null@@*/ @> static char *mpost_tex_program = NULL;
@y
@= /*@@null@@*/ @> @;@+ static char *mpost_tex_program = NULL;
@z

@x [3] l.75
@d mpost_xfree(A) do { if (A!=NULL) free(A); A=NULL; } while (0)
@y
@d mpost_xfree(A) do { if (A!=NULL) free(A); A=NULL; } while (0)@;
@z
@x [3] l.78
@= /*@@only@@*/ /*@@out@@*/ @> static void  *mpost_xmalloc (size_t bytes) {
@y
@= /*@@only@@*/ /*@@out@@*/ @> @;@+ static void  *mpost_xmalloc (size_t bytes) {
@z
@x [3] l.86
@= /*@@only@@*/ @> static char *mpost_xstrdup(const char *s) {
@y
@= /*@@only@@*/ @> @;@+ static char *mpost_xstrdup(const char *s) {
@z

@x [5] l.249
@
@<Register the callback routines@>=
@y
@ @<Register the callback routines@>=
@z

@x [6] l.253
@
@c
@y
@ @c
@z

@x [9] l.316
@= /*@@null@@*/ @> static char *makempx_find_file (MPX mpx, const char *nam,
@y
@= /*@@null@@*/ @> @;@+ static char *makempx_find_file (MPX mpx, @/
 const char *nam,
@z

@x [10] l.347
@d TROFF   "soelim | eqn -Tps -d$$ | troff -Tps"
@y
@d TROFF   "soelim | eqn -Tps -d$$ | troff -Tps"
@#
@d mstat s@&t@&a@&t /* this is a \.{CWEB} coding trick: */
@f mstat int /* `\&{mstat}' will be equivalent to `\&{struct stat}' */
@f stat x /* but function `|stat|' will not be treated as a reserved word */
@z

@x [10] l.388
        struct stat source_stat, target_stat;
@y
        struct mstat source_stat, target_stat;
@z

@x [10] l.476
static int mpost_run_dvitomp (char *dviname, char *mpxname) {
@y
@ @c
static int mpost_run_dvitomp (char *dviname, char *mpxname) {
@z

@x [11] l.539
@
@<Register the callback routines@>=
@y
@ @<Register the callback routines@>=
@z

@x [12] l.552
#elif defined (HAVE_FTIME)
@y
#elif defined (HAVE_FTIME)
@+@t}\6{@>
@z

@x [12] l.556
#else
@y
#else
@+@t}\6{@>
@z

@x [15] l.625
          struct stat source_stat, target_stat;
@y
          struct mstat source_stat, target_stat;
@z

@x [16] l.693
@  @<Register the callback routines@>=
@y
@ @<Register the callback routines@>=
@z

@x [24] l.816
@  @<Register the callback routines@>=
@y
@ @<Register the callback routines@>=
@z

@x [25] l.842
      { "file-line-error",           0, 0, 0 },
@y
      { "file-line-error",           0, 0, 0 }, @|
@z

@x [26] l.859
@<Read and set command line options@>=
@y
@<Read and set \9{c}command line options@>=
@z

@x [28] l.984
@
@<Read and set \.{dvitomp} command line options@>=
@y
@ @<Read and set \9{d}\.{dvitomp} command line options@>=
@z

@x [29] l.1012
@
@<Show help...@>=
@y
@ @<Show help...@>=
@z
@x [29] l.1022
"\n"
"Usage: mpost [OPTION] [&MPNAME] [MPNAME[.mp]] [COMMANDS]\n"
"       mpost --dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n"
"\n"
"  Run MetaPost on MPNAME, usually creating MPNAME.NNN (and perhaps\n"
"  MPNAME.tfm), where NNN are the character numbers generated.\n"
"  Any remaining COMMANDS are processed as MetaPost input,\n"
"  after MPNAME is read.\n\n"
"  With a --dvitomp argument, MetaPost acts as DVI-to-MPX converter only.\n"
@y
"\nUsage: mpost [OPTION] [&MPNAME] [MPNAME[.mp]] [COMMANDS]\n" @|
"       mpost --dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n\n" @|
"  Run MetaPost on MPNAME, usually creating MPNAME.NNN (and perhaps\n" @|
"  MPNAME.tfm), where NNN are the character numbers generated.\n" @|
"  Any remaining COMMANDS are processed as MetaPost input,\n" @|
"  after MPNAME is read.\n\n" @|
"  With a --dvitomp argument, MetaPost acts as DVI-to-MPX converter only.\n" @|
@z
@x [29] l.1033
"MetaPost options:\n"
"  -debug                    print debugging info and leave temporary files\n"
"                            in place\n"
"  -mem=STRING               Use STRING for the name of the file that contains\n"
"                            macros to be preloaded (same as &MPNAME)\n"
"  -numbersystem=STRING      set number system mode\n"
"                            (STRING=scaled/double/binary/interval/decimal)\n"
"  -restricted               be secure: disable tex, makempx and editor commands\n"
"  -tex=TEXPROGRAM           use TEXPROGRAM for text labels\n"
"  -troff                    set prologues:=1 and assume TEXPROGRAM is\n"
"                            really troff\n"
"  -T                        same as -troff\n"
"  -s INTERNAL=\"STRING\"      set internal INTERNAL to the string value STRING\n"
@y
"MetaPost options:\n" @|
"  -debug                    print debugging info and leave temporary files\n" @|
"                            in place\n" @|
"  -mem=STRING               Use STRING for the name of the file that contains\n" @|
"                            macros to be preloaded (same as &MPNAME)\n"  @|
"  -numbersystem=STRING      set number system mode\n" @|
"                            (STRING=scaled/double/binary/interval/decimal)\n" @|
"  -restricted               be secure: disable tex, makempx and editor commands\n" @|
"  -tex=TEXPROGRAM           use TEXPROGRAM for text labels\n" @|
"  -troff                    set prologues:=1 and assume TEXPROGRAM is\n" @|
"                            really troff\n" @|
"  -T                        same as -troff\n" @|
"  -s INTERNAL=\"STRING\"      set internal INTERNAL to the string value STRING\n" @|
@z
@x [29] l.1049
"\n"
"Common options:\n"
"  [-no]-file-line-error     disable/enable file:line:error style messages\n"
"  -halt-on-error            stop processing at the first error\n"
"  -help                     display this help and exit\n"
"  -ini                      do not load any preload file\n"
"  -interaction=STRING       set interaction mode (STRING=batchmode/nonstopmode/\n"
"                            scrollmode/errorstopmode)\n"
"  -jobname=STRING           set the job name to STRING\n"
"  -kpathsea-debug=NUMBER    set path searching debugging flags according to\n"
"                            the bits of NUMBER\n"
"  -no-kpathsea              Do not use the kpathsea program to find files.\n"
"                            All files have to be in the current directory\n"
"                            or specified via a full path.\n"
"  -output-directory=DIR     use existing DIR as the directory\n"
"                            to write files in\n"
"  -progname=STRING          set program (and mem) name to STRING\n"
"  -recorder                 enable filename recorder\n"
@y
"\nCommon options:\n" @|
"  [-no]-file-line-error     disable/enable file:line:error style messages\n" @|
"  -halt-on-error            stop processing at the first error\n" @|
"  -help                     display this help and exit\n" @|
"  -ini                      do not load any preload file\n" @|
"  -interaction=STRING       set interaction mode (STRING=batchmode/nonstopmode/\n" @|
"                            scrollmode/errorstopmode)\n" @|
"  -jobname=STRING           set the job name to STRING\n" @|
"  -kpathsea-debug=NUMBER    set path searching debugging flags according to\n" @|
"                            the bits of NUMBER\n" @|
"  -no-kpathsea              Do not use the kpathsea program to find files.\n" @|
"                            All files have to be in the current directory\n" @|
"                            or specified via a full path.\n" @|
"  -output-directory=DIR     use existing DIR as the directory\n" @|
"                            to write files in\n" @|
"  -progname=STRING          set program (and mem) name to STRING\n" @|
"  -recorder                 enable filename recorder\n" @|
@z
@x [29] l.1070
"\n"
"Email bug reports to mp-implementors@@tug.org.\n"
"\n");
@y
"\nEmail bug reports to mp-implementors@@tug.org.\n\n");
@z

@x [30] l.1076
@
@<Show short help...@>=
@y
@ @<Show short help...@>=
@z
@x [30] l.1086
"\n"
"Usage: dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n"
"       mpost --dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n"
"\n"
@y
"\nUsage: dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n" @|
"       mpost --dvitomp DVINAME[.dvi] [MPXNAME[.mpx]]\n\n" @|
@z
@x [30] l.1092
"  -progname=STRING          set program name to STRING\n"
"  -kpathsea-debug=NUMBER    set path searching debugging flags according to\n"
"                            the bits of NUMBER\n"
"  -help                     display this help and exit\n"
"  -version                  output version information and exit\n"
"\n"
"Email bug reports to mp-implementors@@tug.org.\n"
"\n");
@y
"  -progname=STRING          set program name to STRING\n" @|
"  -kpathsea-debug=NUMBER    set path searching debugging flags according to\n" @|
"                            the bits of NUMBER\n" @|
"  -help                     display this help and exit\n" @|
"  -version                  output version information and exit\n\n" @|
"Email bug reports to mp-implementors@@tug.org.\n\n");
@z

@x [31] l.1103
@
@<Show version...@>=
@y
@ @<Show version...@>=
@z
@x [31] l.1112
"The MetaPost source code in the public domain.\n"
"MetaPost also uses code available under the\n"
"GNU Lesser General Public License (version 3 or later);\n"
"therefore MetaPost executables are covered by the LGPL.\n"
"There is NO warranty.\n"
"For more information about these matters, see the file\n"
"COPYING.LESSER or <http://gnu.org/licenses/lgpl.html>.\n"
"Original author of MetaPost: John Hobby.\n"
"Author of the CWEB MetaPost: Taco Hoekwater.\n"
@y
"The MetaPost source code in the public domain.\n" @|
"MetaPost also uses code available under the\n" @|
"GNU Lesser General Public License (version 3 or later);\n" @|
"therefore MetaPost executables are covered by the LGPL.\n" @|
"There is NO warranty.\n" @|
"For more information about these matters, see the file\n" @|
"COPYING.LESSER or <http://gnu.org/licenses/lgpl.html>.\n" @|
"Original author of MetaPost: John Hobby.\n" @|
"Author of the CWEB MetaPost: Taco Hoekwater.\n" @|
@z

@x [38] l.1443
    @<Read and set \.{dvitomp} command line options@>;
@y
    @<Read and set \9{d}\.{dvitomp} command line options@>;
@z

@x [38] l.1445
    @<Read and set command line options@>;
@y
    @<Read and set \9{c}command line options@>;
@z
