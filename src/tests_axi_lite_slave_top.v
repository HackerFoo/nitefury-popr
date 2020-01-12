`timescale 1ns / 1ps

/* ------------------------------------------------------ *
     ARRAY BUS
 * ------------------------------------------------------ *
     addr:  address
     we:    write enable
     di:    data in
     do:    data out
     valid: address is valid
     ready: ready for a new address

     NOTES:
      -> do is assumed valid once the address
         has been transmitted (ready & valid)
      -> all inputs to the bus must be low
         if valid is low, allowing the bus to be OR'ed
 * ------------------------------------------------------ */

// master

// slave

// make sure all labels are declared
// `default_nettype none

module __primitive_eq #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 == in1;
endmodule

module __primitive_neq #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 != in1;
endmodule

module __primitive_mod #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 % in1;
endmodule

module __primitive_div #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 / in1;
endmodule

module __primitive_not #(
  parameter in0N = 1,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  output wire [out0N-1:0] out0
);
    assign out0 = ! in0;
endmodule

module __primitive_mul #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 * in1;
endmodule

module __primitive_add #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 + in1;
endmodule

module __primitive_sub #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 - in1;
endmodule

module __primitive_shiftl #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 << in1;
endmodule

module __primitive_shiftr #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 >> in1;
endmodule

module __primitive_gt #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 > in1;
endmodule

module __primitive_gte #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 >= in1;
endmodule

module __primitive_lt #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 < in1;
endmodule

module __primitive_lte #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 1
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 <= in1;
endmodule

module __primitive_complement #(
  parameter in0N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  output wire [out0N-1:0] out0
);
    assign out0 = ~ in0;
endmodule

module __primitive_bitand #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 & in1;
endmodule

module __primitive_bitor #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 | in1;
endmodule

module __primitive_bitxor #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0
);
    assign out0 = in0 ^ in1;
endmodule

module __primitive_ap01 #(
  parameter in0N = 32,
  parameter out1N = 32,
  parameter out0N = 0
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,
  input wire [in0N-1:0] in0, input wire in0_valid, output wire in0_ready,
  output wire [out0N-1:0] out0, output wire out0_valid, input wire out0_ready,
  output wire [out1N-1:0] out1
);
    assign out0 = in0 >> out1N;
    assign out1 = in0;
    assign out0_valid = in0_valid;
    assign out_valid = in0_valid && (! (& out1));
    assign in0_ready = out0_ready & out_ready;
    assign in_ready = 1'b1;

endmodule

module __primitive_ap02 #(
  parameter in0N = 32,
  parameter out1N = 32,
  parameter out2N = 32,
  parameter out0N = 0
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,
  input wire [in0N-1:0] in0, input wire in0_valid, output wire in0_ready,
  output wire [out0N-1:0] out0, output wire out0_valid, input wire out0_ready,
  output wire [out1N-1:0] out1,
  output wire [out2N-1:0] out2
);
    assign out0 = in0 >> (out1N + out2N);
    assign out1 = in0 >> out2N;
    assign out2 = in0;
    assign out0_valid = in0_valid;
    assign out_valid = in0_valid && (! (& out1)) && (! (& out2));
    assign in0_ready = out0_ready & out_ready;
    assign in_ready = 1'b1;

endmodule

/* ------------------------------------------------------ *
     NOTE ON READY/VALID DEPENDENCIES
 * ------------------------------------------------------ *

   `in_ready` can depend on `in_valid` asynchronously,
   but `out_valid` cannot depend on `out_ready`.

   This is to prevent loops, so that the
   flow is from source to sink and back.

 * ------------------------------------------------------ */

module __primitive_ap20 #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter in2N = 32,
  parameter out0N = in0N + in1N + in2N
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,
  input wire [in0N-1:0] in0,
  input wire [in1N-1:0] in1,
  input wire [in2N-1:0] in2, input wire in2_valid, output wire in2_ready,
  output wire [out0N-1:0] out0, output wire out0_valid, input wire out0_ready
);
    assign out0 = { in0, in1, in2 };
    assign out0_valid = in_valid & in2_valid;
    assign in2_ready = out0_ready;
    assign in_ready = in_valid & out0_ready;
    assign out_valid = 1'b1;

endmodule

module __primitive_pushr1 #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter out0N = 32
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,
  input wire [in0N-1:0] in0, input wire in0_valid, output wire in0_ready,
  input wire [in1N-1:0] in1,
  output wire [out0N-1:0] out0, output wire out0_valid, input wire out0_ready
);
    assign out0 = { in0, in1 };
    assign out0_valid = in_valid & in0_valid;
    assign in0_ready = out0_ready;
    assign in_ready = in_valid & out0_ready;
    assign out_valid = 1'b1;

endmodule

module __primitive_pushr2 #(
  parameter in0N = 32,
  parameter in1N = 32,
  parameter in2N = 32,
  parameter out0N = in0N + in1N + in2N
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,
  input wire [in0N-1:0] in0, input wire in0_valid, output wire in0_ready,
  input wire [in1N-1:0] in1,
  input wire [in2N-1:0] in2,
  output wire [out0N-1:0] out0, output wire out0_valid, input wire out0_ready
);
    assign out0 = { in0, in1, in2 };
    assign out0_valid = in_valid & in0_valid;
    assign in0_ready = out0_ready;
    assign in_ready = in_valid & out0_ready;
    assign out_valid = 1'b1;

endmodule

module transparent_buffer #(
  parameter N = 32
)(
  input wire clk,
  input wire nrst,
  input wire [N-1:0] in0, input wire in0_valid, output wire in0_ready,
  output wire [N-1:0] out0, output wire out0_valid, input wire out0_ready
);
    reg [N-1:0] data;
    reg         data_valid;

    assign in0_ready = !data_valid | out0_ready;
    assign out0_valid = data_valid | in0_valid;
    assign out0 = in0_valid ? in0 : data;

    always @(posedge clk) begin
        if(!nrst) begin
            data_valid <= 1'b0;
        end
        else if(in0_ready) begin
            if(in0_valid) data <= in0;
            if(!(in0_valid & out0_ready)) data_valid <= in0_valid;
        end
    end
endmodule

module __primitive_read_array #(
  parameter in0AN = 9,
  parameter in0DN = 32,
  parameter in1N = 32,
  parameter out1N = 32,
  parameter out0AN = 9,
  parameter out0DN = 32
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(in0AN)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(in0DN)-1:0] in0_di,
  input  wire [(in0DN)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,
  input wire [in1N-1:0] in1,

  input  wire [(out0AN)-1:0] out0_addr,
  input  wire               out0_we,
  input  wire [(out0DN)-1:0] out0_di,
  output wire [(out0DN)-1:0] out0_do,
  input  wire               out0_valid,
  output wire               out0_ready,
  output wire [out1N-1:0] out1
);
    assign in0_addr = in_valid ? in1 : out0_addr;
    assign in0_we = !in_valid & out0_we;
    assign in0_di = out0_di;
    assign out0_do = in0_do;
    assign in0_valid = in_valid | out0_valid;
    assign out0_ready = !in_valid & in0_ready;

    wire buf_ready;
    transparent_buffer #(.N(out1N))
      buffer(.clk(clk),
             .nrst(nrst),
             .in0(in0_do),
             .in0_valid(in_valid & in0_ready),
             .in0_ready(buf_ready),
             .out0(out1),
             .out0_valid(out_valid),
             .out0_ready(out_ready));
    assign in_ready = buf_ready & in0_ready;

endmodule

module __primitive_write_array #(
  parameter in0AN = 9,
  parameter in0DN = 32,
  parameter in1N = 32,
  parameter in2N = 32,
  parameter out0AN = 9,
  parameter out0DN = 32
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(in0AN)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(in0DN)-1:0] in0_di,
  input  wire [(in0DN)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,
  input wire [in1N-1:0] in1,
  input wire [in2N-1:0] in2,

  input  wire [(out0AN)-1:0] out0_addr,
  input  wire               out0_we,
  input  wire [(out0DN)-1:0] out0_di,
  output wire [(out0DN)-1:0] out0_do,
  input  wire               out0_valid,
  output wire               out0_ready
);
    reg valid;
    wire beat = in_valid & in_ready;

    assign in_ready = in0_ready & (!valid | out_ready);
    assign in0_addr = in_valid ? in1 : out0_addr;
    assign in0_we = in_valid | out0_we;
    assign in0_di = in_valid ? in2 : out0_di;
    assign out0_do = in0_do;
    assign in0_valid = in_valid | out0_valid;
    assign out0_ready = !in_valid & in0_ready;
    assign out_valid = valid | beat;

    always @(posedge clk) begin
        if(!nrst) valid <= 1'b0;
        else if(beat | out_ready) valid <= beat;
    end

endmodule

// arbitrates two masters out0 and out1 to slave in0
// out0 has priority
module __primitive_dup_array #(
  parameter in0AN = 9,
  parameter in0DN = 32,
  parameter out0AN = 9,
  parameter out0DN = 32,
  parameter out1AN = 9,
  parameter out1DN = 32
)(

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(in0AN)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(in0DN)-1:0] in0_di,
  input  wire [(in0DN)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,

  input  wire [(out0AN)-1:0] out0_addr,
  input  wire               out0_we,
  input  wire [(out0DN)-1:0] out0_di,
  output wire [(out0DN)-1:0] out0_do,
  input  wire               out0_valid,
  output wire               out0_ready,

  input  wire [(out1AN)-1:0] out1_addr,
  input  wire               out1_we,
  input  wire [(out1DN)-1:0] out1_di,
  output wire [(out1DN)-1:0] out1_do,
  input  wire               out1_valid,
  output wire               out1_ready
);
    reg last_active;
    wire active0 = !out1_valid | last_active == 1;
    wire active1 = !out0_valid | last_active == 0;
    wire select0 = active0 & out0_valid;

    assign in0_addr   = select0 ? out0_addr  : out1_addr;
    assign in0_we     = select0 ? out0_we    : out1_we;
    assign in0_di     = select0 ? out0_di    : out1_di;
    assign out0_do    = in0_do;
    assign out1_do    = in0_do;
    assign in0_valid  = out0_valid | out1_valid;
    assign out0_ready = in0_ready & active0;
    assign out1_ready = in0_ready & active1;
    assign in_ready   = 1'b1;
    assign out_valid  = 1'b1;

    always @(posedge clk) begin
        if(!nrst) last_active <= 1'b0;
        else if(in0_ready) begin
            last_active <= out1_valid & active1;
        end
    end
endmodule
module tests_axi_lite_slave (

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(32)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(32)-1:0] in0_di,
  input  wire [(32)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,
  input wire [32-1:0] in1, input wire in1_valid, output wire in1_ready,
  input wire [32-1:0] in2, input wire in2_valid, output wire in2_ready,
  input wire [32-1:0] in3, input wire in3_valid, output wire in3_ready,
  output wire [32-1:0] out0, output wire out0_valid, input wire out0_ready,
  output wire out1_valid, input wire out1_ready
);

  wire [32-1:0] lst1 = in3;
  wire lst1_valid = in3_valid; wire lst1_ready;
  assign in3_ready = lst1_ready;

  wire [32-1:0] lst2 = in2;
  wire lst2_valid = in2_valid; wire lst2_ready;
  assign in2_ready = lst2_ready;

  wire [32-1:0] lst3 = in1;
  wire lst3_valid = in1_valid; wire lst3_ready;
  assign in1_ready = lst3_ready;

  wire [(32)-1:0] intf4_addr;
  assign in0_addr = intf4_addr;
  wire               intf4_we;
  assign in0_we = intf4_we;
  wire [(32)-1:0] intf4_di;
  assign in0_di = intf4_di;
  wire [(32)-1:0] intf4_do = in0_do;
  wire intf4_valid;
  assign in0_valid = intf4_valid;
  wire intf4_ready = in0_ready;
  wire inst5_in_ready;

  wire [(32)-1:0] intf5_addr;
  wire               intf5_we;
  wire [(32)-1:0] intf5_di;
  wire [(32)-1:0] intf5_do;
  wire               intf5_valid;
  wire               intf5_ready;

  wire [(32)-1:0] intf6_addr;
  wire               intf6_we;
  wire [(32)-1:0] intf6_di;
  wire [(32)-1:0] intf6_do;
  wire               intf6_valid;
  wire               intf6_ready;
  wire inst7_in_ready;
  wire lst7_valid; wire lst7_ready;
  wire inst8_in_ready;
  wire [32-1:0] lst8; wire lst8_valid; wire lst8_ready;

  assign in_ready = inst5_in_ready;

  wire inst5_out_valid;
  __primitive_dup_array #(.in0AN(32), .in0DN(32), .out0AN(32), .out0DN(32), .out1AN(32), .out1DN(32)) __primitive_dup_array_inst5(

      .clk(clk),
      .nrst(nrst),
      .in_valid(in_valid),
      .out_valid(inst5_out_valid),
      .in_ready(inst5_in_ready),
      .out_ready(inst7_in_ready & inst8_in_ready),

      .in0_addr(intf4_addr),
      .in0_we(intf4_we),
      .in0_di(intf4_di),
      .in0_do(intf4_do),
      .in0_valid(intf4_valid),
      .in0_ready(intf4_ready),

      .out0_addr(intf5_addr),
      .out0_we(intf5_we),
      .out0_di(intf5_di),
      .out0_do(intf5_do),
      .out0_valid(intf5_valid),
      .out0_ready(intf5_ready),

      .out1_addr(intf6_addr),
      .out1_we(intf6_we),
      .out1_di(intf6_di),
      .out1_do(intf6_do),
      .out1_valid(intf6_valid),
      .out1_ready(intf6_ready)
    );

  wire inst7_out_valid;
  io_stream_write_array_r0 #() io_stream_write_array_r0_inst7(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst5_out_valid),
      .out_valid(inst7_out_valid),
      .in_ready(inst7_in_ready),
      .out_ready(out_ready),

      .in0_addr(intf5_addr),
      .in0_we(intf5_we),
      .in0_di(intf5_di),
      .in0_do(intf5_do),
      .in0_valid(intf5_valid),
      .in0_ready(intf5_ready),
      .in1(lst2), .in1_valid(lst2_valid), .in1_ready(lst2_ready),
      .in2(lst1), .in2_valid(lst1_valid), .in2_ready(lst1_ready),
      .out0_valid(lst7_valid), .out0_ready(lst7_ready)
    );

  wire inst8_out_valid;
  io_stream_read_array_r0 #() io_stream_read_array_r0_inst8(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst5_out_valid),
      .out_valid(inst8_out_valid),
      .in_ready(inst8_in_ready),
      .out_ready(out_ready),

      .in0_addr(intf6_addr),
      .in0_we(intf6_we),
      .in0_di(intf6_di),
      .in0_do(intf6_do),
      .in0_valid(intf6_valid),
      .in0_ready(intf6_ready),
      .in1(lst3), .in1_valid(lst3_valid), .in1_ready(lst3_ready),
      .out0(lst8), .out0_valid(lst8_valid), .out0_ready(lst8_ready)
    );
    wire block1_valid = inst7_out_valid & inst8_out_valid;

  wire valid = block1_valid;
  assign out_valid = valid;

  assign out0 = lst8;
  assign out0_valid = lst8_valid;
  assign lst8_ready = out0_ready;
  assign out1_valid = lst7_valid;
  assign lst7_ready = out1_ready;

endmodule

module io_stream_write_array_r0 (

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(32)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(32)-1:0] in0_di,
  input  wire [(32)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,
  input wire [32-1:0] in1, input wire in1_valid, output wire in1_ready,
  input wire [32-1:0] in2, input wire in2_valid, output wire in2_ready,
  output wire out0_valid, input wire out0_ready
);

  wire [32-1:0] lst1 = in2;
  reg lst1_valid_reg;
  wire lst1_valid = in2_valid;
  wire lst1_ready; assign in2_ready = lst1_ready;

  wire [32-1:0] lst2 = in1;
  reg lst2_valid_reg;
  wire lst2_valid = in1_valid;
  wire lst2_ready; assign in1_ready = lst2_ready;

  wire [(32)-1:0] intf3_addr;
  assign in0_addr = intf3_addr;
  wire               intf3_we;
  assign in0_we = intf3_we;
  wire [(32)-1:0] intf3_di;
  assign in0_di = intf3_di;
  wire [(32)-1:0] intf3_do = in0_do;
  wire intf3_valid;
  assign in0_valid = intf3_valid;
  wire intf3_ready = in0_ready;
  wire inst4_in_ready;
  wire lst4_valid; wire lst4_ready;
  wire [32-1:0] int5;
  wire inst6_in_ready;
  wire lst6_valid; wire lst6_ready;
  wire [32-1:0] int7;
  wire inst8_in_ready;

  wire [(32)-1:0] intf8_addr;
  wire               intf8_we;
  wire [(32)-1:0] intf8_di;
  wire [(32)-1:0] intf8_do;
  wire               intf8_valid;
  wire               intf8_ready;
  localparam lst10_valid = 1'b1; wire lst10_ready;
  wire inst11_in_ready;
  wire lst11_valid; wire lst11_ready;
  localparam [1-1:0] sym12 = 1;

  reg active = 1'b0;
  assign in_ready = ~active & inst4_in_ready & inst6_in_ready;

  wire inst4_out_valid;
  __primitive_ap01 #(.in0N(32), .out0N(0), .out1N(32)) __primitive_ap01_inst4(

      .clk(clk),
      .nrst(nrst),
      .in_valid(active),
      .out_valid(inst4_out_valid),
      .in_ready(inst4_in_ready),
      .out_ready(inst8_in_ready),
      .in0(lst2), .in0_valid(lst2_valid), .in0_ready(lst2_ready),
      .out0_valid(lst4_valid), .out0_ready(lst4_ready),
      .out1(int5)
    );

  wire inst6_out_valid;
  __primitive_ap01 #(.in0N(32), .out0N(0), .out1N(32)) __primitive_ap01_inst6(

      .clk(clk),
      .nrst(nrst),
      .in_valid(active),
      .out_valid(inst6_out_valid),
      .in_ready(inst6_in_ready),
      .out_ready(inst8_in_ready),
      .in0(lst1), .in0_valid(lst1_valid), .in0_ready(lst1_ready),
      .out0_valid(lst6_valid), .out0_ready(lst6_ready),
      .out1(int7)
    );

  wire inst8_out_valid;
  __primitive_write_array #(.in0AN(32), .in0DN(32), .in1N(32), .in2N(32), .out0AN(32), .out0DN(32)) __primitive_write_array_inst8(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst4_out_valid & inst6_out_valid),
      .out_valid(inst8_out_valid),
      .in_ready(inst8_in_ready),
      .out_ready(1'b1),

      .in0_addr(intf3_addr),
      .in0_we(intf3_we),
      .in0_di(intf3_di),
      .in0_do(intf3_do),
      .in0_valid(intf3_valid),
      .in0_ready(intf3_ready),
      .in1(int5),
      .in2(int7),

      .out0_addr(intf8_addr),
      .out0_we(intf8_we),
      .out0_di(intf8_di),
      .out0_do(intf8_do),
      .out0_valid(intf8_valid),
      .out0_ready(intf8_ready)
    );
    assign {intf8_addr, intf8_we, intf8_di, intf8_valid} = 0;
    assign lst4_ready = 1'b1;
    assign lst6_ready = 1'b1;

  wire inst11_out_valid;
  __primitive_pushr1 #(.in0N(0), .in1N(1), .out0N(0)) __primitive_pushr1_inst11(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst8_out_valid),
      .out_valid(inst11_out_valid),
      .in_ready(inst11_in_ready),
      .out_ready(1'b1),
      .in0_valid(lst10_valid), .in0_ready(lst10_ready),
      .in1(sym12),
      .out0_valid(lst11_valid), .out0_ready(lst11_ready)
    );
    wire block1_valid = inst11_out_valid;

  wire valid = 1'b0;
  assign out_valid = active & valid;

  always @(posedge clk) begin
    if(!nrst) begin
      active <= 1'b0;
    end
    else if(in_valid & ~active) begin
      active <= 1'b1;
    end
    else if(valid) begin
       if(out_ready) active <= 1'b0;
    end
    else begin
      if(block1_valid) begin
      end
    end
  end

  assign out0_valid = lst11_valid;
  assign lst11_ready = out0_ready;

endmodule

module io_stream_read_array_r0 (

  input wire clk, input wire nrst,
  input wire in_valid, output wire in_ready,
  output wire out_valid, input wire out_ready,

  output wire [(32)-1:0] in0_addr,
  output wire               in0_we,
  output wire [(32)-1:0] in0_di,
  input  wire [(32)-1:0] in0_do,
  output wire               in0_valid,
  input  wire               in0_ready,
  input wire [32-1:0] in1, input wire in1_valid, output wire in1_ready,
  output wire [32-1:0] out0, output wire out0_valid, input wire out0_ready
);

  wire [32-1:0] lst1 = in1;
  reg lst1_valid_reg;
  wire lst1_valid = in1_valid;
  wire lst1_ready; assign in1_ready = lst1_ready;

  wire [(32)-1:0] intf2_addr;
  assign in0_addr = intf2_addr;
  wire               intf2_we;
  assign in0_we = intf2_we;
  wire [(32)-1:0] intf2_di;
  assign in0_di = intf2_di;
  wire [(32)-1:0] intf2_do = in0_do;
  wire intf2_valid;
  assign in0_valid = intf2_valid;
  wire intf2_ready = in0_ready;
  wire inst3_in_ready;
  wire lst3_valid; wire lst3_ready;
  wire [32-1:0] int4;
  wire inst5_in_ready;

  wire [(32)-1:0] intf5_addr;
  wire               intf5_we;
  wire [(32)-1:0] intf5_di;
  wire [(32)-1:0] intf5_do;
  wire               intf5_valid;
  wire               intf5_ready;
  localparam lst6_valid = 1'b1; wire lst6_ready;
  wire [32-1:0] int7;
  wire inst8_in_ready;
  wire [32-1:0] lst8; wire lst8_valid; wire lst8_ready;

  reg active = 1'b0;
  assign in_ready = ~active & inst3_in_ready;

  wire inst3_out_valid;
  __primitive_ap01 #(.in0N(32), .out0N(0), .out1N(32)) __primitive_ap01_inst3(

      .clk(clk),
      .nrst(nrst),
      .in_valid(active),
      .out_valid(inst3_out_valid),
      .in_ready(inst3_in_ready),
      .out_ready(inst5_in_ready),
      .in0(lst1), .in0_valid(lst1_valid), .in0_ready(lst1_ready),
      .out0_valid(lst3_valid), .out0_ready(lst3_ready),
      .out1(int4)
    );

  wire inst5_out_valid;
  __primitive_read_array #(.in0AN(32), .in0DN(32), .in1N(32), .out0AN(32), .out0DN(32), .out1N(32)) __primitive_read_array_inst5(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst3_out_valid),
      .out_valid(inst5_out_valid),
      .in_ready(inst5_in_ready),
      .out_ready(inst8_in_ready),

      .in0_addr(intf2_addr),
      .in0_we(intf2_we),
      .in0_di(intf2_di),
      .in0_do(intf2_do),
      .in0_valid(intf2_valid),
      .in0_ready(intf2_ready),
      .in1(int4),

      .out0_addr(intf5_addr),
      .out0_we(intf5_we),
      .out0_di(intf5_di),
      .out0_do(intf5_do),
      .out0_valid(intf5_valid),
      .out0_ready(intf5_ready),
      .out1(int7)
    );
    assign {intf5_addr, intf5_we, intf5_di, intf5_valid} = 0;
    assign lst3_ready = 1'b1;

  wire inst8_out_valid;
  __primitive_pushr1 #(.in0N(0), .in1N(32), .out0N(32)) __primitive_pushr1_inst8(

      .clk(clk),
      .nrst(nrst),
      .in_valid(inst5_out_valid),
      .out_valid(inst8_out_valid),
      .in_ready(inst8_in_ready),
      .out_ready(1'b1),
      .in0_valid(lst6_valid), .in0_ready(lst6_ready),
      .in1(int7),
      .out0(lst8), .out0_valid(lst8_valid), .out0_ready(lst8_ready)
    );
    wire block1_valid = inst8_out_valid;

  wire valid = 1'b0;
  assign out_valid = active & valid;

  always @(posedge clk) begin
    if(!nrst) begin
      active <= 1'b0;
    end
    else if(in_valid & ~active) begin
      active <= 1'b1;
    end
    else if(valid) begin
       if(out_ready) active <= 1'b0;
    end
    else begin
      if(block1_valid) begin
      end
    end
  end

  assign out0 = lst8;
  assign out0_valid = lst8_valid;
  assign lst8_ready = out0_ready;

endmodule
module array (
  input wire clk,

  input  wire [(9)-1:0] out0_addr,
  input  wire               out0_we,
  input  wire [(9)-1:0] out0_di,
  output wire [(9)-1:0] out0_do,
  input  wire               out0_valid,
  output wire               out0_ready
);
    parameter N = 16;

    reg              [32-1:0] data[0:N-1];

    integer          i;
    initial begin
        for(i = 0; i < N; i = i + 1) begin
            data[i] = i;
        end
    end

    assign out0_ready = 1'b1;

    // async read
    assign out0_do = data[out0_addr];

    // sync write
    always @(posedge clk) begin
        if(out0_valid && out0_we) begin
            data[out0_addr] <= out0_di;
        end
    end
endmodule

module tests_axi_lite_slave_top
(
 input  wire        s_axi_aclk,
 input  wire        s_axi_aresetn,
 input  wire [8:0]  s_axi_awaddr,
 input  wire        s_axi_awvalid,
 output wire        s_axi_awready,
 input  wire [31:0] s_axi_wdata,
 input  wire [3:0]  s_axi_wstrb,
 input  wire        s_axi_wvalid,
 output wire        s_axi_wready,
 output wire [1:0]  s_axi_bresp,
 output wire        s_axi_bvalid,
 input  wire        s_axi_bready,
 input  wire [8:0]  s_axi_araddr,
 input  wire        s_axi_arvalid,
 output wire        s_axi_arready,
 output wire [31:0] s_axi_rdata,
 output wire [1:0]  s_axi_rresp,
 output wire        s_axi_rvalid,
 input  wire        s_axi_rready
);

    wire       clk = s_axi_aclk;
    wire       nrst = s_axi_aresetn;

  wire [(9)-1:0] arr_addr;
  wire               arr_we;
  wire [(32)-1:0] arr_di;
  wire [(32)-1:0] arr_do;
  wire               arr_valid;
  wire               arr_ready;

    array #(.N(64))
      arr(.clk(clk),

      .out0_addr(arr_addr),
      .out0_we(arr_we),
      .out0_di(arr_di),
      .out0_do(arr_do),
      .out0_valid(arr_valid),
      .out0_ready(arr_ready));

    wire [9-1:0] ar; wire ar_valid; wire ar_ready;
    wire [9-1:0] aw; wire aw_valid; wire aw_ready;
    wire [32-1:0] w; wire w_valid; wire w_ready;
    wire [32-1:0] r; wire r_valid; wire r_ready;
    wire b_valid; wire b_ready;

    wire inst_in_ready;

  wire inst_out_valid;
  tests_axi_lite_slave #() tests_axi_lite_slave_inst(

      .clk(clk),
      .nrst(nrst),
      .in_valid(1'b1),
      .out_valid(inst_out_valid),
      .in_ready(inst_in_ready),
      .out_ready(1'b1),

      .in0_addr(arr_addr),
      .in0_we(arr_we),
      .in0_di(arr_di),
      .in0_do(arr_do),
      .in0_valid(arr_valid),
      .in0_ready(arr_ready),
      .in1(ar), .in1_valid(ar_valid), .in1_ready(ar_ready),
      .in2(aw), .in2_valid(aw_valid), .in2_ready(aw_ready),
      .in3(w), .in3_valid(w_valid), .in3_ready(w_ready),
      .out0(r), .out0_valid(r_valid), .out0_ready(r_ready),
      .out1_valid(b_valid), .out1_ready(b_ready));

    assign ar = s_axi_araddr >> 2;

    assign ar_valid = s_axi_arvalid;
    assign s_axi_arready = ar_ready;

    assign aw = s_axi_awaddr >> 2;

    assign aw_valid = s_axi_awvalid;
    assign s_axi_awready = aw_ready;

    assign w = s_axi_wdata >> 0;

    assign w_valid = s_axi_wvalid;
    assign s_axi_wready = w_ready;

    assign s_axi_rdata = r;

    assign s_axi_rvalid = r_valid;
    assign r_ready = s_axi_rready;

    assign s_axi_bvalid = b_valid;
    assign b_ready = s_axi_bready;

    assign s_axi_wstrb = 4'b1111;
    assign s_axi_bresp = 2'b00; // OKAY
    assign s_axi_rresp = 2'b00; // OKAY

endmodule // tests_axi_lite_slave_top
