# VLSI Systems Lab

A collection of Verilog designs, testbenches, synthesis scripts, and reports spanning five lab modules. The repo covers combinational/sequential design, testbenching, FSMs, pipelining/retiming, and ASIC-style synthesis, timing, and power analysis using Synopsys DC/PT and VCS with the ASAP7 7nm library.

This material is part of the VLSI Systems course of the Computer Engineering and Informatics department of the University of Patras.

## Contents

| Lab | Focus | Highlights |
|:---|:---|:---|
| Lab 1 | RTL basics + testbenches | Ripple-carry adder (RCA), MAC, counters, decoder; VCS simulation; Python checkers |
| Lab 2 | Parameterized blocks | Decoder, shift register, accumulator, ALU; randomized/self-checking TBs |
| Lab 3 | FSM design | Vending machine (vmcoffee), digital lock (dlock+lockcomp); waveforms (VCD) |
| Lab 4 | Synthesis and reports | Synopsys DC “compile/compile_ultra”, SDC constraints, area/timing/power reports; pipelined RCA; GCD datapath+FSM |
| Lab 5 | Post-synthesis flow | Gate-level timing sim (SDF), switching activity dump, PT power; GCD, vmcoffee; ML-themed IP stubs (ineuron, iclassifier) |

## Repository Structure

```
iloudaros-vlsi-systems-lab/
├── Lab 1/                #  RTL basics + testbenches
│   ├── src/
│   └── Makefile
├── Lab 2/                # Parameterized blocks
│   ├── src/
│   └── Makefile
├── Lab 3/                # Finite State Machines
│   ├── src/
│   ├── Waveforms/
│   └── Makefile
├── Lab 4/                # Synthesis & Optimization
│   ├── src/
│   ├── results_*/
│   ├── scripts/
│   └── Makefile
├── Lab 5/                # Post-Synthesis & Power Analysis
│   ├── src/
│   ├── results/
│   ├── scripts/
│   └── Makefile
├── LICENSE
└── README.md
```


## Core Concepts Covered
*   **RTL Design:** Writing synthesizable Verilog for combinational and sequential circuits.
*   **Verification:** Creating robust testbenches and self-checking Python scripts.
*   **Finite State Machines (FSMs):** Designing and implementing complex control logic.
*   **Synthesis:** Using Synopsys Design Compiler to transform RTL into a gate-level netlist.
*   **Timing Analysis:** Applying SDC constraints and analyzing timing reports.
*   **Power Analysis:** Estimating power consumption with Synopsys PrimeTime using post-synthesis simulation data.
*   **Pipelining & Retiming:** Optimizing designs for higher performance.

## Tools and Environment

This project relies on a standard set of EDA tools for digital design and verification.

| Tool | Usage |
| :--- | :--- |
| **Synopsys VCS** | Compiling and simulating Verilog designs. |
| **Synopsys Design Compiler (DC)** | Synthesizing RTL into gate-level netlists. |
| **Synopsys PrimeTime (PT)** | Performing static timing and power analysis. |
| **Python 3** | Running self-checking scripts to validate simulation outputs. |
| **Make** | Automating the simulation, synthesis, and cleaning workflows. |
| **GTKWave / DVE** | (Optional) Visualizing simulation waveforms (`.vcd` files). |

### Technology Library
All synthesis and analysis are performed using the **ASAP7 7nm PDK**. Ensure that the paths to the library `.db` and `.v` files are correctly set in your environment.

## Notable Designs

-   **Ripple-Carry Adder (RCA):** A foundational arithmetic block explored in multiple labs, including registered (`rca_w_regs`) and pipelined (`rca_pipelined`) versions for performance optimization.
-   **Arithmetic Logic Unit (ALU):** A parameterized ALU from Lab 2 capable of performing a variety of arithmetic and logical operations.
-   **Vending Machine (vmcoffee):** An FSM-based design from Lab 3 that models a coffee vending machine, handling states for payment and dispensing.
-   **Greatest Common Divisor (GCD) Unit:** A complete system from Lab 4 featuring a datapath and an FSM controller that work together to calculate the GCD of two numbers.
-   **ML IP Stubs:** Lab 5 introduces stubs for machine learning components like an `ineuron` and `iclassifier`, demonstrating how to integrate and analyze complex IP.

## Getting Started

Each lab is self-contained in its respective directory. To run any exercise, navigate to the lab's folder and use the provided `Makefile`.

 **Explore the Makefile:**
    Open the `Makefile` to see the available commands. Common targets include:
    *   `make <design>`: To compile and run a specific design and its testbench.
    *   `make clean`: To remove all generated files.

 **Run an exercise:**
    For example, to run the MAC (Multiply-Accumulate) unit simulation in Lab 1:
    ```bash
    make zitoumeno2
    ```
    This will compile the Verilog files, run the simulation, and then use the Python script `test_mac_results.py` to verify the output.
















