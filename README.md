# FPGA-Based Traffic Light Controller

> FPGA/VLSI Academic Project implemented using Verilog HDL and Xilinx Vivado.

## Project Overview

This project implements a Finite State Machine (FSM) based Traffic Light Controller using Verilog HDL and Xilinx Vivado. The design controls traffic flow between North-South (NS) and East-West (EW) directions through a four-state traffic signal sequence.

The project demonstrates fundamental FPGA design concepts including RTL design, FSM implementation, simulation, synthesis, timing analysis, and implementation using the Xilinx Vivado design flow.

---

## Objectives

* Design a Traffic Light Controller using Verilog HDL
* Implement a Moore Finite State Machine (FSM)
* Verify functionality through simulation and waveform analysis
* Perform synthesis and implementation using Xilinx Vivado
* Analyze resource utilization and timing reports
* Create a GitHub-ready FPGA project with complete documentation

---

## Tools and Technologies

| Category           | Tool                             |
| ------------------ | -------------------------------- |
| HDL                | Verilog                          |
| Design Suite       | Xilinx Vivado ML Standard 2025.2 |
| FPGA Family        | Artix-7                          |
| Target Device      | xc7a35tcsg324-1L                 |
| Verification       | Testbench Simulation             |
| Design Methodology | Finite State Machine (FSM)       |

---

## FSM Description

The controller operates using four states:

| State | North-South | East-West | Duration       |
| ----- | ----------- | --------- | -------------- |
| S0    | Green       | Red       | 9 Clock Cycles |
| S1    | Yellow      | Red       | 2 Clock Cycles |
| S2    | Red         | Green     | 9 Clock Cycles |
| S3    | Red         | Yellow    | 2 Clock Cycles |

### State Sequence

```text
S0 → S1 → S2 → S3 → S0
```

---

## State Transition Table

| Current State | NS Light | EW Light | Timer Condition | Next State |
| ------------- | -------- | -------- | --------------- | ---------- |
| S0            | Green    | Red      | timer == 9      | S1         |
| S1            | Yellow   | Red      | timer == 2      | S2         |
| S2            | Red      | Green    | timer == 9      | S3         |
| S3            | Red      | Yellow   | timer == 2      | S0         |

---

## Project Structure

```text
FPGA-Traffic-Light-Controller/

├── RTL/
│   └── traffic_light_controller.v
│
├── Testbench/
│   └── traffic_light_controller_tb.v
│
├── Documentation/
│   ├── FSM_Diagram.png
│   └── State_Transition_Table.png
│
├── Screenshots/
│   ├── 01_vivado_project_created.png
│   ├── 02_rtl_file_created.png
│   ├── 03_fsm_logic.png
│   ├── 04_fsm_diagram.png
│   ├── 05_testbench_file_created.png
│   ├── 06_testbench_code.png
│   ├── 07_simulation_running.png
│   ├── 08_waveform_output.png
│   ├── 09_state_transition_table.png
│   ├── 10_synthesis_report.png
│   ├── 11_rtl_schematic.png
│   ├── 12_implementation_report.png
│   ├── 13_utilization_report.png
│   ├── 14_timing_summary.png
│
├── Report/
│   └── Traffic_Light_Controller_Report.pdf
│
├── LICENSE
│
└── README.md
```

---

## Design Flow

1. Verilog RTL Design
2. FSM Development
3. Testbench Creation
4. Behavioral Simulation
5. Waveform Verification
6. Synthesis
7. RTL Schematic Generation
8. Implementation
9. Utilization Analysis
10. Timing Verification
11. Documentation and GitHub Deployment

---

## Simulation Results

Behavioral simulation successfully verified:

* Correct FSM state transitions
* Proper traffic light sequencing
* Timer-based state control
* Continuous cyclic operation

Waveforms confirmed that the controller transitions through all states as expected.

---

## Synthesis Results

Synthesis completed successfully in Vivado.

### Key Observations

* RTL generated successfully
* FSM inferred correctly
* No synthesis errors
* Resource utilization within limits
* Design suitable for FPGA implementation

---

## Timing Analysis

Timing Summary Results:

| Parameter         | Result   |
| ----------------- | -------- |
| WNS               | Infinite |
| TNS               | 0        |
| Failing Endpoints | 0        |

The project contains no user-defined timing constraints, which is acceptable for this academic implementation.

---

## FPGA Implementation

Implementation completed successfully using the Artix-7 target device.

Generated Reports:

* Utilization Report
* Timing Summary
* Implemented Design

The design is implementation-ready and can be deployed on compatible Artix-7 FPGA hardware.

---

## Learning Outcomes

This project demonstrates practical knowledge of:

* Verilog HDL
* Finite State Machines (FSM)
* FPGA Design Flow
* Digital Logic Design
* Simulation and Verification
* Xilinx Vivado
* Timing Analysis
* Hardware Design Documentation
* GitHub Project Management

---

## Future Enhancements

Potential improvements include:

* Pedestrian Crossing Request System
* Emergency Vehicle Override
* Traffic Density Sensor Integration
* Adaptive Signal Timing
* Parameterized State Durations
* SystemVerilog Implementation
* Hardware Deployment on FPGA Board
* Smart City Traffic Management Integration

---

## Skills Demonstrated

* FPGA Design
* Verilog Programming
* FSM Design
* RTL Development
* Functional Verification
* Simulation Debugging
* Timing Analysis
* Hardware Implementation
* Technical Documentation
* GitHub Version Control

---

## Author

**Dharshini R**

FPGA/VLSI Academic Project

Developed using Verilog HDL and Xilinx Vivado ML Standard 2025.2.

GitHub Portfolio Project demonstrating:

* Verilog HDL Design
* Finite State Machine (FSM) Implementation
* FPGA Design Flow
* Simulation and Verification
* Synthesis and Timing Analysis
* Technical Documentation

