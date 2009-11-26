package Net::Backtype;

use Moose;
use MooseX::Net::API;

our $VERSION = '0.01';

net_api_declare backtype => (
    base_url    => 'http://api.backtype.com',
    format      => 'json',
    format_mode => 'append',
);

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
  my $client = Net::Backtype->new();
  my $res = $client->comments_page(url => 'http://...', key => $mykey);

=head1 DESCRIPTION

Net::Backtype is a client for the backtype API

=head2 METHODS 

=over 4

=item B<user_comment>

See L<http://www.backtype.com/developers/user-comments>.

=item B<user_followers>

See L<http://www.backtype.com/developers/user-followers>.

=item B<user_following>

See L<http://www.backtype.com/developers/user-following>.

=item B<user_home>

See L<http://www.backtype.com/developers/user-home-feed>.

=item B<user_profile>

See L<http://www.backtype.com/developers/user-profile>.

=item B<comments_search>

See L<http://www.backtype.com/developers/comments-search>.

=item B<comments_connect>

See L<http://www.backtype.com/developers/comments-connect>.

=item B<comments_connect_stats>

See L<http://www.backtype.com/developers/comments-connect-stats>.

=item B<comments_author>

See L<http://www.backtype.com/developers/url-comments>.

=item B<comments_page>

See L<http://www.backtype.com/developers/page-comments>.

=item B<comments_page_stats>

See L<http://www.backtype.com/developers/page-comments-stats>.

=back

=head1 AUTHOR

franck cuny E<lt>franckcuny@lumberjaph.netE<gt>

=head1 SEE ALSO

=head1 LICENSE

Copyright 2009 by Linkfluence

http://linkfluence.net

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
