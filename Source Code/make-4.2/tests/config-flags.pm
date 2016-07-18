# This is a -*-perl-*- script
#
# Set variables that were defined by configure, in case we need them
# during the tests.

%CONFIG_FLAGS = (
    AM_LDFLAGS   => '-rdynamic',
    AR           => 'ar',
    CC           => 'gcc',
    CFLAGS       => '-m32 -march=i686 -mtune=i686 -static',
    CPP          => 'gcc -E',
    CPPFLAGS     => '',
    GUILE_CFLAGS => '',
    GUILE_LIBS   => '',
    LDFLAGS      => '',
    LIBS         => '-ldl '
);

1;
