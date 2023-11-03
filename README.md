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
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/583e15eb-8225-4f84-9622-3782bda5ec2f" alt="Image" width="900">
</p>


```
read_verilog vedic8x8.v vedic4x4.v vedic2x2.v ripple_adder_12bit.v ripple_adder_8bit.v ripple_adder_6bit.v ripple_adder_4bit.v full_adder.v half_adder.v
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/ae4dbbd9-ee20-4bc1-a73c-47363145d360" alt="Image" width="900">
</p>

```
synth -top vedic8x8
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/a980079c-a78d-4d31-a438-6c85f4f8bd7e" alt="Image" width="900">
</p>

```
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/a461c035-065a-49b0-820b-d654f81580f8" alt="Image" width="900">
</p>

```
flatten
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/a202aeb7-537a-4433-b3c9-ba056a10ce78" alt="Image" width="900">
</p>

```
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


# Physical design using OpenLane 

Follow the instructions for the installation of Openlane using the original Documentation.[OpenLane Installation](https://openlane.readthedocs.io/en/latest/getting_started/installation/installation_ubuntu.html)

All the design variables needed for the physical design are mentioned in this documentation [Flow Configuration Variables](https://openlane.readthedocs.io/en/latest/reference/configuration.html). Most of the issues and errors at any time/stage during the flow can be fixed by looking at the erros.log and corresponding log files. Additionally, having an overall understanding of the global necessary variable is crucial.


### Create a design folder in Openlane

To create a design folder with a default config.json file, use command :

```
cd
cd OpenLane
make mount
./flow.tcl -design <DESIGN_NAME> -init_design_config
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/2f0736f4-fb31-47ef-a2cd-9b65680da157" alt="Image" width="900">
</p>


### Adding your verilog file 

A new directory "openlane" will be created where your design will be housed.

In a new tab, [don't unmount the Openlane process], use these to source your design verilog files.

```
cd ~/OpenLane/openlane/<YOUR_DESIGN>
mkdir src
cd src

```

moves all your Verilog codes in this src directory.





<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/9dd3e441-c269-44bf-894d-e937b01a8f09" alt="Image" width="900">
</p>




Add the path to the Verilog files in the field VERILOG_FILES in the default config.json 
```
dir::src/pes_vedic_mul.v
```

Looking the Flow variables and through prior knowledge, I have inserted a few parameters that the tool can use during different stages


<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/8656aebe-f760-4b7d-b80c-ba01cb6da1c0" alt="Image" width="900">
</p>

with we are ready to experiment with our design variables.


## OpenLane Automated flow

- With the design variables, run an automated flow to check for any errors. After each run check the log files and fix the errors by adjusting or adding the design parameter in the config.json file
- Looking out for warnings, this will help us to declare a few more design parameters

to run automated flow use the command in the openlane make mount session:
```
./flow.tcl -design openlane/pes_vedic_mul -tag run_1

```

- After 3 unsuccessful runs and fixing the error at each run, I was finally successful on the 4th run. 

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/a67719b5-7db0-4b92-8470-8ed75495648e" alt="Image" width="900">
</p>

## Results:


### Synthesis :
all the designs are meeting setup and hold requirements 


<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/2196cfda-454d-41b5-9dbf-2c7a4272882f" alt="Image" width="900">
</p>

### Floorplan:

### Placements:

### CTS:

### Routing:

### Physical verification:

### final GDS file :

```
klayout -e -nn $PDK_ROOT/sky130A/libs.tech/klayout/tech/sky130A.lyt    -l $PDK_ROOT/sky130A/libs.tech/klayout/tech/sky130A.lyp    ./openlane/pes_vedic_mul/runs/run_4/results/final/gds/pes_vedic_mul.gds
```

<p align="center">
  <img src="https://github.com/VardhanSuroshi/pes_vedic_mul/assets/132068498/0e47cc84-e496-402f-a22f-610d69238301" alt="Image" width="900">
</p>



