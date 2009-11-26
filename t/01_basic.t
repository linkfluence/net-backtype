use strict;
use warnings;
use Test::More;
use Net::Backtype;
use Net::Backtweet;
use YAML::Syck;

BEGIN {
    plan skip_all => 'set $ENV{BACKTYPE_KEY} for this test'
        unless $ENV{BACKTYPE_KEY};
}

my $obj = Net::Backtweet->new;
ok $obj, '... object created';
my $method = $obj->meta->find_method_by_name('user_comments');
ok $method->meta->has_attribute('method'), '... got method as attribute';
is $method->method, 'GET', '... method is GET';

my $res = $obj->backtweet_search(
    key => $ENV{BACKTYPE_KEY},
    q   => 'http://lumberjaph.net'
);

cmp_ok scalar @{ $res->{tweets} }, '>=', 1, '... got more than one result';
done_testing;
