# @start 1
# AC_PROG_CC_G
# ------------
AC_DEFUN(AC_PROG_CC_G,
[AC_CACHE_CHECK(whether ${CC-cc} accepts -g, ac_cv_prog_cc_g,
[echo 'void f(){}' > conftest.c
if test -z "`${CC-cc} -g -c conftest.c 2>&1`"; then
  ac_cv_prog_cc_g=yes
else
  ac_cv_prog_cc_g=no
fi
rm -f conftest*
])]) # AC_PROG_CC_G
# @end 1
