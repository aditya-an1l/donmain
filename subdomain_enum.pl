#!/usr/bin/perl
use strict;
use warnings;
use Net::DNS;

if (@ARGV != 2) {
    print "Usage: $0 <domain> <wordlist>\n";
    exit 1;
}

my ($domain, $wordlist) = @ARGV;

open(my $fh, '<', $wordlist) or die "Could not open file '$wordlist' $!";

# Initialize the DNS resolver
my $resolver = Net::DNS::Resolver->new;

while (my $subdomain = <$fh>) {
    chomp($subdomain);
    
    my $full_domain = "$subdomain.$domain";
    
    # Perform DNS query
    my $query = $resolver->query($full_domain, 'A');
    
    if ($query) {
      print "-" x 50 . "\n";
        print " [+] Found:\t\t $full_domain\n";
      print "-" x 50 . "\n";
    } else {
        print "Not found:\t $full_domain\n";
    }
}

close($fh);
