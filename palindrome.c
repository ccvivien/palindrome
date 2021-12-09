#include "ruby.h"
#include <stdio.h>

extern int is_palindrome(char*, long);

static VALUE rb_palindrome(VALUE self)
{
    long len = RSTRING_LEN(self);
    char* s = RSTRING_PTR(self);

    if (is_palindrome(s, len))
        return Qtrue;

    return Qfalse;
}

void Init_palindrome()
{
    rb_define_method(rb_cString, "palindrome?", rb_palindrome, 0);
}
