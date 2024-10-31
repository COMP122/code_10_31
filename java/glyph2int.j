public static int glyph2int(int radix) {

    int input;
    int digit;

    mips.read_c();
    input = mips.retval();


    if ('0' <= input && input <= '9') {
      digit = input - '0';
    }
    else if ('A' <= input && input <= 'Z') {
      digit = input - 'A';
      digit = digit + 10;
    }
    else if('a' <= input && input <= 'z') {
      digit = input - 'a';
      digit = digit + 10;
    }
    else {
      digit = -1;
    }

    if (digit >= radix) {
      digit = -1;
    }

    return digit;
}
