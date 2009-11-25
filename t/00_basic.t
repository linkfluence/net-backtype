use strict;
use warnings;
use Test::More;
use Net::Backtype;
use Net::Backtweet;
use YAML::Syck;

sum_methods( 'Net::Backtype',  11 );
sum_methods( 'Net::Backtweet', 12 );

my $obj = Net::Backtweet->new;
ok $obj, '... object created';
my $method = $obj->meta->find_method_by_name('user_comments');
ok $method->meta->has_attribute('method'), '... got method as attribute';
is $method->method, 'GET', '... method is GET';


done_testing;

sub sum_methods {
    my $module = shift;
    my $expect = shift;
    my $obj = $module->new();
    my @methods = $obj->meta->get_all_methods();
    my $total = 0;
    foreach my $m (@methods) {
        ++$total if $m->meta->has_attribute('description');
    }
    is $total, $expect, "... got $expect methods in our client";
}
