/// Testing Pegged modifications.
module pegged.dev.test;

//import std.algorithm;
//import std.array;
//import std.conv;
import std.datetime;
//import std.functional;
//import std.range;
import std.stdio;
//import std.typecons;
//import std.typetuple;

import pegged.grammar;

mixin(grammar("
Test:
    Start <- Until('a')
    Until(T) <- (!(T/eoi) .)*
"));

void main()
{
    writeln(Test("bcdefgabcde"));

}

