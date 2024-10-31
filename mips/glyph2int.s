public static int glyph2int(int radix) {


            boolean t0;
            boolean t1;
            boolean c0;
            boolean c1;
            boolean c2;
            int input;
            int digit;

            mips.read_c();
            input = mips.retval();




c_init:     ;

            // '0' <= input && input <= '9'
            t0 = input >= '0';                 // '0' <= input;
            t1 = input <= '9';
            c0 = t0 && t1;

            // 'A' <= input && input <= 'Z'
            t0 = input >= 'A';                // '0' <= input;
            t1 = input <= 'Z';
            c1 = t0 && t1;
           
            // 'a' <= input && input <= 'z'
            t0 = input >= 'a';                 // '0' <= input;
            t1 = input <= 'z';
            c2 = t0 && t1;


comp:       if (c0 == true) {
c_next_0:     ;
              digit = input - '0';
            }
            else 
c_next_1:   if (c1 == true) {
              digit = input - 'A';
              digit = digit + 10;
            }
            else 
c_next_2:   if(c2 == true) {
              digit = input - 'a';
              digit = digit + 10;
            }
            else {
c_next_3:     ;
              digit = -1;
            }
c_next_4:   ;
c_done:     ;            

r_init:
radix:      if (digit >= radix) {
r_next_0:     ;  
              digit = -1;
            }
r_next_1:   ;
done:       ;            

            return digit;
}






