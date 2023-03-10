`timescale 1ns / 1ps

module convolution_point_testbench ();

    //module for convolution operation
    parameter bitwidth_tb=4;

    wire [bitwidth_tb-1:0] map_block_tb [4:0][4:0];
    wire [bitwidth_tb-1:0] kernel_tb [4:0][4:0];
    wire [bitwidth_tb-1:0] value;


    convolution_point #(bitwidth_tb,2) convolution_point_instance(map_block_tb,kernel_tb,value);
    
    genvar i,j;
    generate
		for (i=0;i<5;i=i+1) begin: initialization1
            for (j=0;j<5;j=j+1) begin : initialization2

                assign kernel_tb[i][j] = 1;
                assign map_block_tb[i][j] = -1;
            end
        end
    endgenerate

endmodule