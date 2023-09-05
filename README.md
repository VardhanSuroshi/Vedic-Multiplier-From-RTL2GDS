# Design: 8-bit Vedic Multiplier 

## About the repository
Welcome to my GitHub repository dedicated to VLSI Physical Design for ASICs using open-source tools! Here, we embark on a journey that starts with specifications and build it from scratch, taking them through the entire RTL to GDS process that meets various Performance, Power, Area ( PPA ) and manufacturability requirements. The best part? We're doing it all with open-source tools, including the RISC-V toolchain, OpenLane and many more.

## 8-bit Vedic Multiplier  
Multiplication is one of the primary arithmetic operations every application demands. A large number of multiplier designs have been developed to enhance their speed. Active research over decades has led to the emergence of Vedic Multipliers as one of the fastest and low power multipliers over traditional array and booth multipliers. Vedic Multiplier deals with a total of sixteen sutras or algorithms for predominantly logical operations. A large number of them have been proposed using Urdhava Tiryakbhyam sutra rendering them most efficient in terms of speed. 


### 8-bit Vedic Multiplier  
<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/1cd0215a-7733-42e9-bac4-5390567700df" alt="Image" width="500">
</p>


### RTL simulation :

```
iverilog  vedic8x8.v vedic4x4.v vedic2x2.v ripple_adder_12bit.v ripple_adder_8bit.v ripple_adder_6bit.v ripple_adder_4bit.v full_adder.v half_adder.v test.v -o vedic.out

```
<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/db9ee35b-2ad8-444a-b611-b956b482d7b1" alt="Image" width="900">
</p>



### RTL Synthesis :
```
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib  
read_verilog vedic8x8.v vedic4x4.v vedic2x2.v ripple_adder_12bit.v ripple_adder_8bit.v ripple_adder_6bit.v ripple_adder_4bit.v full_adder.v half_adder.v
synth -top vedic8x8
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
flatten
show 
write_verilog -noattr pes_vedic.v
```
<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/54cc24da-3d53-4390-b4b0-9e8cb0f3a12a" alt="Image" width="900">
</p>





### GLS Simulation:

```
 iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v pes_vedic.v test_copy.v -o vedic_rtl.out

```
<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/e66472fc-fc71-4297-ba01-4229609f0c83" alt="Image" width="900">
</p>

