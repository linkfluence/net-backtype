package Net::Backtype;

use Moose;
use MooseX::Net::API;

our $VERSION = '0.01';

has api_base_url => (
    isa     => 'Str',
    is      => 'rw',
    default => 'http://api.backtype.com'
);
has format => ( is => 'ro', isa => 'Str', default => 'json', );

format_query 'format' => ( mode => 'append' );

net_api_method user_comments => (
    path     => '/user/$user/comments',
    method   => 'GET',
    params   => [qw/key user/],
    required => [qw/key user/],
);

net_api_method user_followers => (
    path     => '/user/$user/followers',
    method   => 'GET',
    params   => [qw/key user/],
    required => [qw/key user/],
);

net_api_method user_following => (
    path     => '/user/$user/following',
    method   => 'GET',
    params   => [qw/key user/],
    required => [qw/key user/],
);

net_api_method user_home => (
    path     => '/user/$user/home/comments',
    method   => 'GET',
    params   => [qw/key user/],
    required => [qw/key user/],
);

net_api_method user_profile => (
    path     => '/user/$user/profile',
    method   => 'GET',
    params   => [qw/key user/],
    required => [qw/key user/],
);

net_api_method comments_search => (
    path     => '/comments/search',
    method   => 'GET',
    params   => [qw/key q start end/],
    required => [qw/key q/],
);

net_api_method comments_connect => (
    path     => '/comments/connects',
    method   => 'GET',
    params   => [qw/key url sources sort/],
    required => [qw/url key/],
);

net_api_method comments_connect_stats => (
    path     => '/comments/connect/stats/',
    method   => 'GET',
    params   => [qw/key url/],
    required => [qw/url key/],
);

net_api_method comments_author => (
    path     => '/url/$url/comments',
    method   => 'GET',
    params   => [qw/key url/],
    required => [qw/key url/],
);

net_api_method comments_page => (
    path     => '/post/comments',
    method   => 'GET',
    params   => [qw/url key/],
    required => [qw/key url/],
);

net_api_method comments_page_stats => (
    path     => '/post/stats',
    method   => 'GET',
    params   => [qw/url key/],
    required => [qw/key url/],
);

1;
__END__

=head1 NAME

Net::Backtype - client for the backtype API

=head1 SYNOPSIS

  use Net::Backtype;
  my $client = Net::Backtype->new(format => 'json', api_key => 'foo');

=head1 DESCRIPTION

Net::Backtype is a client for the backtype API

=head1 AUTHOR

franck cuny E<lt>franck.cuny@rtgi.frE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
