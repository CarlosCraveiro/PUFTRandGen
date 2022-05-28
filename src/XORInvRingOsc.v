module xorIvRO
#(parameter N=2)
    ( output f,
      input enable  );

    wire w[(2*N - 1):0];

    and (w[0], enable, f);
    
    genvar i;
    generate
      for (i = 1; i < N; i = i + 1) begin
        xor (w[2*i - 1], w[2*i - 2], enable);
        not #(i) (w[2*i], w[2*i - 1]);
      end
      xor (w[2*N - 1], w[2*N - 2], enable);
      not (f, w[2*N - 1]);
    endgenerate
endmodule
