EXTRA_DIST	= openmode.m4 rpl_fopen.c ltdl-loader.c ltdl-module.c \
		simple-loader.c simple-module.c
noinst_DATA	= configure_1.texi openmode.texi rpl_fopen.texi \
		  cc-g.texi reexec.texi \
		  ltdl-loader.texi ltdl-module.texi \
		  simple-loader.texi simple-module.texi \
		  convenience/Makefile.texi convenience/configure.texi \
		  convenience/error.texi convenience/error_h.texi \
		  convenience/main.texi convenience/lib/Makefile.texi \
		  convenience/lib/source.texi \
		  convenience/lib/source_h.texi \
		  convenience/replace/Makefile.texi \
		  convenience/replace/basename.texi \
		  foonly/Makefile.texi foonly/configure.texi \
		  hello/hello.texi hello/main.texi \
		  intro-hello/hello.texi intro-hello/main.texi \
		  intro-hello/trim.texi \
		  sic-small/bootstrap.texi \
		  sic-small/m4/readline.texi \
		  sic-small/m4/sys_errlist.texi \
		  sic-small/replace/Makefile.texi \
		  sic-small/replace/strcspn_1.texi \
		  sic-small/sic/common_h_1.texi sic-small/sic/common_h_2.texi \
		  sic-small/sic/common_h_3.texi sic-small/sic/common_h_4.texi \
		  sic-small/sic/builtin_h_1.texi \
		  sic-small/sic/error_h_1.texi \
		  sic-small/sic/eval_h_1.texi \
		  sic-small/sic/error_1.texi sic-small/sic/error_2.texi \
		  sic-small/sic/list_h_1.texi sic-small/sic/list_1.texi \
		  sic-small/sic/sic_h_1.texi \
		  sic-small/sic/syntax_h_1.texi \
		  sic-small/sic/xmalloc_1.texi \
		  sic-small/src/sic_builtin_1.texi \
		  sic-small/src/sic_repl_1.texi \
		  sic-small/src/sic_1.texi sic-small/src/sic_h_1.texi \
		  sic-small/src/sic_syntax_1.texi \
		  sic-large/Makefile_1.texi sic-large/Makefile_2.texi \
		  sic-large/bootstrap.texi \
		  sic-large/configure_1.texi \
		  sic-large/configure_2.texi \
		  sic-large/configure_3.texi \
		  sic-large/configure_4.texi \
		  sic-large/configure_5.texi \
		  sic-large/doc/Makefile_1.texi sic-large/doc/Makefile_2.texi \
		  sic-large/doc/sic_1.texi \
		  sic-large/replace/Makefile_1.texi \
		  sic-large/sic/Makefile_1.texi sic-large/sic/Makefile_2.texi \
		  sic-large/sic/error_h_1.texi sic-large/sic/error_1.texi \
		  sic-large/tests/Makefile_1.texi \
		  sic-large/tests/defs.texi \
		  sic-large/tests/incomplete_1.texi \
		  sic-complex/modules/Makefile_1.texi \
		  sic-complex/modules/Makefile_2.texi \
		  sic-complex/modules/unknown_1.texi \
		  sic-complex/sic/Makefile_1.texi \
		  sic-complex/sic/common-h.texi \
		  sic-complex/sic/module_1.texi sic-complex/sic/module_2.texi \
		  sic-complex/sic/module_3.texi sic-complex/sic/module_4.texi \
		  sic-complex/sic/module_5.texi \
		  sic-complex/sic/module_h_1.texi \
		  sic-complex/src/sic_builtin_1.texi \
		  sic-complex/src/sic_builtin_2.texi \
		  sic-complex/src/sic_1.texi sic-complex/src/sic_2.texi \
		  sic-complex/src/sic_repl_1.texi

CLEANFILES	= $(noinst_DATA)
MAINTAINERCLEANFILES = Makefile.in simple-loader simple-module.o \
		simple-module.so

SUFFIXES	= .am .ac .m4 .test .texi .c .h _h.texi .l _l.texi \
		  _1.texi _2.texi _3.texi _4.texi _5.texi _6.texi \
		  _h_1.texi _h_2.texi _h_3.texi _h_4.texi


sedexp		= "s/[{}@]/@&/g;s/	/        /g"

.m4.texi:
	sed "/^# @start 1/,/# @end 1/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.texi_1.texi:
	sed "/^@c @start 1/,/@c @end 1/p;d" $< | grep -v '@c @' | sed $(sedexp) >$@

.test_1.texi:
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

.c.texi:
	sed $(sedexp) $< > $@

.l_l.texi:
	sed $(sedexp) $< > $@

.c_1.texi:
	sed "/^\/\*\* @start 1 /,/\/\*\* @end 1 /p;d" $< | grep -v '/** @' | sed $(sedexp) >$@

.c_2.texi:
	sed '/^\/\*\* @start 2 /,/\/\*\* @end 2 /p;d' $< | grep -v '/** @'| sed $(sedexp) >$@

.c_3.texi:
	sed '/^\/\*\* @start 3 /,/\/\*\* @end 3 /p;d' $< | grep -v '/** @' | sed $(sedexp) >$@

.c_4.texi:
	sed '/^\/\*\* @start 4 /,/\/\*\* @end 4 /p;d' $< | grep -v '/** @' | sed $(sedexp) >$@

.c_5.texi:
	sed '/^\/\*\* @start 5 /,/\/\*\* @end 5 /p;d' $< | grep -v '/** @' | sed $(sedexp) >$@

.c_6.texi:
	sed '/^\/\*\* @start 6 /,/\/\*\* @end 6 /p;d' $< | grep -v '/** @' | sed $(sedexp) >$@

.h_h.texi:
	sed $(sedexp) $< > $@

.h_h_1.texi:
	sed "/^\/\*\* @start 1 /,/\/\*\* @end 1 /p;d" $< | grep -v '/** @' | sed $(sedexp) >$@

.h_h_2.texi:
	sed '/^\/\*\* @start 2 /,/\/\*\* @end 2 /p;d' $< | grep -v '/** @'| sed $(sedexp) >$@

.h_h_3.texi:
	sed '/^\/\*\* @start 3 /,/\/\*\* @end 3 /p;d' $< | grep -v '/** @'| sed $(sedexp) >$@

.h_h_4.texi:
	sed '/^\/\*\* @start 4 /,/\/\*\* @end 4 /p;d' $< | grep -v '/** @'| sed $(sedexp) >$@

.ac.texi:
	sed $(sedexp) $< > $@

.ac_1.texi:
	sed "/^# @start 1/,/# @end 1/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.ac_2.texi:
	sed "/^# @start 2/,/# @end 2/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.ac_3.texi:
	sed "/^# @start 3/,/# @end 3/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.ac_4.texi:
	sed "/^# @start 4/,/# @end 4/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.ac_5.texi:
	sed "/^# @start 5/,/# @end 5/p;d" $< | grep -v '# @' | sed $(sedexp) >$@

.am.texi:
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

.am_1.texi:
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

.am_2.texi:
	sed "/^## @start 2/,/## @end 2/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

.am_3.texi:
	sed "/^## @start 3/,/## @end 3/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

sic-small/bootstrap.texi: sic-small/bootstrap
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

sic-large/bootstrap.texi: sic-large/bootstrap
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

sic-large/tests/defs.texi: sic-large/tests/defs
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

sic-complex/sic/common-h.texi: sic-complex/sic/common-h.in
	sed "/^## @start 1/,/## @end 1/p;d" $< | grep -v '## @' | sed $(sedexp) >$@

reexec.texi: reexec.sh
	sed $(sedexp) $< > $@
