#!/usr/bin/perl
$latex = 'platex -synctex=1 %O %S';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex -U %O -o %D %S';
$pdf_mode = 3;