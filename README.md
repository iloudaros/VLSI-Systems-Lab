# VLSI Systems Lab

A collection of Verilog designs, testbenches, synthesis scripts, and reports spanning five lab modules. The repo covers combinational/sequential design, testbenching, FSMs, pipelining/retiming, and ASIC-style synthesis, timing, and power analysis using Synopsys DC/PT and VCS with the ASAP7 7nm library.

## Contents

| Lab | Focus | Highlights |
|:---|:---|:---|
| Lab 1 | RTL basics + testbenches | Ripple-carry adder (RCA), MAC, counters, decoder; VCS simulation; Python checkers |
| Lab 2 | Parameterized blocks | Decoder, shift register, accumulator, ALU; randomized/self-checking TBs |
| Lab 3 | FSM design | Vending machine (vmcoffee), digital lock (dlock+lockcomp); waveforms (VCD) |
| Lab 4 | Synthesis and reports | Synopsys DC “compile/compile_ultra”, SDC constraints, area/timing/power reports; pipelined RCA; GCD datapath+FSM |
| Lab 5 | Post-synthesis flow | Gate-level timing sim (SDF), switching activity dump, PT power; GCD, vmcoffee; ML-themed IP stubs (ineuron, iclassifier) |

## Prerequisites

-  Verilog (VCS/vlogan) and make
-  Synopsys Design Compiler (dc_shell) and PrimeTime (pt_shell)
-  ASAP7 liberty and Verilog libs available in your environment (paths referenced in scripts/Makefiles)
-  Python 3 for checkers
-  Optional: DVE/GTKWave for waveforms

## Quick Start

You can easily explore each lab exercise by visiting the corresponding folder and exploring its makefile.

## Notable Designs

-  RCA and variants
  - src/given/rca.v with full-adder cells
  - Pipelined RCA (Lab 4/src/2_2/rca_pipelined.v) and intermediate adder irca.v
  - Registered RCA wrapper (Lab 4/src/2_1/rca_w_regs.v)
-  Arithmetic blocks
  - Accumulator with parallel-load and shift-accumulate (Lab 4/src/3/accumulator.v)
  - MAC, ALU, shift registers (Labs 1–2)
-  FSMs
  - Vending machine (vmcoffee), keypad door lock (dlock/lockcomp)
  - GCD: FSM + dataflow with handshake (Lab 4/src/4)

## Tooling and Scripts

-  Makefiles per lab drive common flows (compile, run, check, clean)
-  Synopsys DC TCL:
  - scripts/my_scripts/ex_* for RCA variants and retiming
  - scripts/my_scripts/gcd_clock.sdc and rca_clock.sdc define clock and IO constraints
-  Power analysis (Lab 5):
  - Synthesize → gate-level simulation with SDF back-annotation → activity dump → PrimeTime power
  - Example scripts under scripts/example, scripts/vmcoffee, scripts/gcd

## Validation

-  Python checkers:
  - Lab 1: test_mac_results.py
  - Lab 2: test_alu_results.py
  - Lab 4: test_gcd_results.py
-  Self-checking TBs with randomized stimuli (zer_* testbenches in Lab 2)
-  Waveforms: .vcd files included for key designs (Lab 3) and generated in other labs
