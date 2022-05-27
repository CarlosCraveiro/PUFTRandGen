module ringOsc(w6, enable);
    input enable;
    output w6;
    wire w1, w2, w3, w4, w5;

    and (w1, enable, w6);
    not #2(w2, w1);
    xor (w3, w2, enable);
    not #3(w4, w3);
    xor (w5, w4, enable);
    not #1(w6, w5);
endmodule
