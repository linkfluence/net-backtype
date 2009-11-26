package Net::Backtweet;

use Moose;
use MooseX::Net::API;
extends 'Net::Backtype';

net_api_declare backtweet => (
    base_url    => 'http://backtweets.com',
    format      => 'json',
    format_mode => 'append',
);

net_api_method backtweet_search => (
    path     => '/search',
    method   => 'GET',
    params   => [qw/q since key/],
    required => [qw/q key/],
);

1;
__END__

=head1 NAME

Net::Backtweet - client for the backtweet API

=head1 SYNOPSIS

  use Net::Backtweet;
  my $client = Net::Backtweet->new();
  my $res = $client->backtweet_search(q => 'http://lumberjaph.net', key => $mykey);

=head1 DESCRIPTION

Net::Backtype is a client for the backtweet API.

=head2 METHODS 

=over 4

=item B<backtweet_search>

See L<http://backtweets.com/api>.

=back

=head1 AUTHOR

franck cuny E<lt>franck@lumberjaph.netE<gt>

=head1 SEE ALSO

=head1 LICENSE

Copyright 2009 by Linkfluence

http://linkfluence.net

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
