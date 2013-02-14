use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Log::Dispatch::Email::Sendmail',
    AUTHOR              => q{Nigel Horne <njh@bandsman.co.uk>},
    VERSION_FROM        => 'lib/Log/Dispatch/Email/Sendmail.pm',
    ABSTRACT_FROM        => 'lib/Log/Dispatch/Email/Sendmail.pm',
    ((defined($ExtUtils::MakeMaker::VERSION) &&
     ($ExtUtils::MakeMaker::VERSION >= 6.3002))
      ? ('LICENSE'=> 'GPL')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0.82,	# Needs new_ok
	'Test::NoWarnings' => 0,
	'Log::Dispatch' => 0,
	'Sys::Hostname' => 0,
	'Test::Requires' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Log-Dispatch-Email-Sendmail-*' },
);
