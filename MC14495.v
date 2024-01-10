module MyMC14495(
    input D0, D1, D2, D3,
    input LE,
    input point,
    output reg p,
    output reg a, b, c, d, e, f, g
);
always @(*) 
begin
    case(LE)
        1'b1:begin
            a = 1'b1;
            b = 1'b1;
            c = 1'b1;
            d = 1'b1;
            e = 1'b1;
            f = 1'b1;
            g = 1'b1;
            p = 1'b1;
        end

        1'b0:begin
            a = (~D3 & ~D2 & ~D1 & D0) |
                    (~D3 & D2 & ~D1 & ~D0) |
                    (D3 & ~D2 & D1 & D0) |
                    (D3 & D2 & ~D1 & D0);
            b = (~D3 & D2 & ~D1 & D0) |
                    (~D3 & D2 & D1 & ~D0) |
                    (D3 & ~D2 & D1 & D0) |
                    (D3 & D2 & ~D1 & ~D0) |
                    (D3 & D2 & D1 & ~D0) |
                    (D3 & D2 & D1 & D0);
            c = (~D3 & ~D2 & D1 & ~D0) |
                    (D3 & D2 & ~D1 & ~D0) |
                    (D3 & D2 & D1 & ~D0) |
                    (D3 & D2 & D1 & D0);
            d = (~D3 & ~D2 & ~D1 & D0) |
                    (~D3 & D2 & ~D1 & ~D0) |
                    (~D3 & D2 & D1 & D0) |
                    (D3 & ~D2 & D1 & ~D0) |
                    (D3 & D2 & D1 & D0);
            e = (~D3 & ~D2 & ~D1 & D0) |
                    (~D3 & ~D2 & D1 & D0) |
                    (~D3 & D2 & ~D1 & ~D0) |
                    (~D3 & D2 & ~D1 & D0) |
                    (~D3 & D2 & D1 & D0) |
                    (D3 & ~D2 & ~D1 & D0);
            f = (~D3 & ~D2 & ~D1 & D0) |
                    (~D3 & ~D2 & D1 & ~D0) |
                    (~D3 & ~D2 & D1 & D0) |
                    (~D3 & D2 & D1 & D0) |
                    (D3 & D2 & ~D1 & D0);
            g = (~D3 & ~D2 & ~D1 & ~D0) |
                    (~D3 & ~D2 & ~D1 & D0) |
                    (~D3 & D2 & D1 & D0) |
                    (D3 & D2 & ~D1 & ~D0);
            p = ~point;
        end
    endcase
end
endmodule