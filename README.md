# FPGA-Based Arithmetic Logic Unit (ALU) in Verilog

## Overview
This project implements an **Arithmetic Logic Unit (ALU)** on an **FPGA** using **Verilog HDL**.  
The ALU is a core component of digital systems, capable of performing a variety of arithmetic and logic operations.  
The design is synthesizable and verified through simulation and hardware testing on an FPGA development board.

## Features
- **Supported Operations**:
  - Addition
  - Subtraction
  - Multiplication
  - Division
  - Bitwise AND, OR, XOR
  - Logical Shift Left / Shift Right
  - Comparison (Equal, Greater Than, Less Than)
- Parameterized design for scalability
- Fully synthesizable for FPGA implementation
- Tested using simulation (Verilog testbench)
- Hardware-verified on FPGA

## Hardware & Tools
- **HDL Language**: Verilog
- **FPGA Board**: [ Xilinx Artix-7 / Spartan]
- **Synthesis Tool**: Xilinx Vivado / Intel Quartus Prime
- **Simulation Tool**:  Vivado Simulator

## Project Structure
```bash
fpga-alu-verilog/
├── src/
│   ├── alu.v
│   └── top.v
├── tb/
│   └── alu_tb.v
├── constraints/
│   └── top.xdc
├── docs/
│   └── design_overview.md
├── LICENSE
└── README.md
```

