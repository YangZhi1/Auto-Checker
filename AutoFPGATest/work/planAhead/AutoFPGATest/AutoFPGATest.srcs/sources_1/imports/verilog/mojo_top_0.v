/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    input sum,
    input carryout,
    output reg aa,
    output reg bb,
    output reg carryin
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_fsmauto_aa;
  wire [1-1:0] M_fsmauto_bb;
  wire [1-1:0] M_fsmauto_carryin;
  wire [1-1:0] M_fsmauto_wrongInput;
  reg [1-1:0] M_fsmauto_sum;
  reg [1-1:0] M_fsmauto_carryout;
  fsmauto_2 fsmauto (
    .clk(clk),
    .rst(rst),
    .sum(M_fsmauto_sum),
    .carryout(M_fsmauto_carryout),
    .aa(M_fsmauto_aa),
    .bb(M_fsmauto_bb),
    .carryin(M_fsmauto_carryin),
    .wrongInput(M_fsmauto_wrongInput)
  );
  
  always @* begin
    aa = 1'h0;
    bb = 1'h0;
    carryin = 1'h0;
    if (M_fsmauto_wrongInput == 1'h0) begin
      aa = M_fsmauto_aa;
      bb = M_fsmauto_bb;
      carryin = M_fsmauto_carryin;
    end
    M_fsmauto_sum = sum;
    M_fsmauto_carryout = carryout;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    io_led = 24'h000000;
    io_led[0+7-:8] = {4'h8{M_fsmauto_aa}};
    io_led[8+7-:8] = {4'h8{M_fsmauto_bb}};
    io_led[16+7-:8] = {4'h8{M_fsmauto_carryin}};
    aa = M_fsmauto_aa;
    bb = M_fsmauto_bb;
    carryin = M_fsmauto_carryin;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_seg = 8'hff;
    io_sel = 4'hf;
  end
endmodule