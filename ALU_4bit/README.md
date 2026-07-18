# 4-bit ALU

## Description
This project implements a **4-bit Arithmetic Logic Unit (ALU)** using Verilog HDL.

The ALU performs four operations based on the select input:
- Addition
- Subtraction
- AND
- OR

## Inputs and Outputs

| Signal | Type | Description |
|--------|------|-------------|
| A | Input | 4-bit input A |
| B | Input | 4-bit input B |
| Sel | Input | 2-bit select line |
| Y | Output | 4-bit result output |

## Operations

| Select | Operation   |
|--------|-------------|
| 00     | Addition    |
| 01     | Subtraction |
| 10     | AND         |
| 11     | OR          |

## Files

- `alu_4bit.v` – Verilog design module
- `alu_4bit_tb.v` – Testbench for simulation
- `waveform.png` – Simulation waveform screenshot

## Tools Used

- Verilog HDL
- Quartus Prime
- ModelSim

## Simulation
The design was simulated in ModelSim using the testbench.  
Different values of A, B, and Sel were applied to verify all ALU operations.

## Waveform

![ALU 4-bit Waveform](waveform.png)
