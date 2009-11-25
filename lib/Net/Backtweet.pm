package Net::Backtweet;

use Moose;
use MooseX::Net::API;
extends 'Net::Backtype';

has format => ( is => 'ro', isa => 'Str', default => 'json', );
has '+api_base_url'   => ( default => 'http://backtweets.com' );
format_query 'format' => ( mode    => 'append' );

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

=head1 DESCRIPTION

Net::Backtype is a client for the backtweet API

=head2 METHODS 

=over 4

=item B<backtweet_search>

See L<http://backtweets.com/api>.

=back

=head1 AUTHOR

franck cuny E<lt>franck.cuny@rtgi.frE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
