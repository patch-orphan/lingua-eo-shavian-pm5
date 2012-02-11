package Lingua::EO::Shavian;

use strict;
use warnings;
use utf8;
use parent 'Exporter';

our @EXPORT = qw( to_shavian from_shavian );

sub to_shavian {
    my ($text) = @_;

    $text =~ tr/ABCĈDEFGĜHĤIJĴKLMNOPRSŜTUŬVZ/𐑨𐑚𐑔𐑗𐑛𐑧𐑓𐑜𐑡𐑣𐑙𐑦𐑢𐑠𐑒𐑤𐑫𐑵𐑩𐑐𐑮𐑕𐑖𐑑𐑪𐑘𐑝𐑟/;
    $text =~ tr/abcĉdefgĝhĥijĵklmnoprsŝtuŭvz/𐑨𐑚𐑔𐑗𐑛𐑧𐑓𐑜𐑡𐑣𐑙𐑦𐑢𐑠𐑒𐑤𐑫𐑵𐑩𐑐𐑮𐑕𐑖𐑑𐑪𐑘𐑝𐑟/;

    return $text;
}

sub from_shavian {
    my ($text) = @_;

    $text =~ tr/𐑨𐑚𐑔𐑗𐑛𐑧𐑓𐑜𐑡𐑣𐑙𐑦𐑢𐑠𐑒𐑤𐑫𐑵𐑩𐑐𐑮𐑕𐑖𐑑𐑪𐑘𐑝𐑟/abcĉdefgĝhĥijĵklmnoprsŝtuŭvz/;

    return $text;
}

1;
