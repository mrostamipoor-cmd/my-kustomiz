#!/usr/bin/perl
use strict;
use warnings;
use HTTP::Tiny;
use URI::Escape qw(uri_escape);

my $var = "hello";
my $url = "http://http-capture.mrostamipoor.svc.cluster.local:4444/?q=" . uri_escape($var);

my $res = HTTP::Tiny->new->get($url);
print $res->{success} ? $res->{content} : "Error $res->{status}: $res->{reason}\n";