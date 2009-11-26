use inc::Module::Install;
name 'Net-Backtype';
all_from 'lib/Net/Backtype.pm';

requires 'Moose';
requires 'MooseX::Net::API';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
