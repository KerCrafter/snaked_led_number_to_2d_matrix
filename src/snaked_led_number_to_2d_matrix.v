`default_nettype none

module snaked_led_number_to_2d_matrix (
  input wire [7:0] n,
  output reg [3:0] x,
  output reg [3:0] y
);

  always @(*) begin
    if(n[4]) begin
      x <= n[3:0];
    end else begin
      x <= 4'd15 - n[3:0];
    end

    y <= n[7:4];
  end

endmodule
