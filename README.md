# Sliding Mode Control of Internal Combustion Engines

## Introduction  
Spark Ignition Internal Combustion Engines are a significant source of urban air pollution. 
Catalytic converters can significantly reduce emissions if the air-to-fuel ratio (lambda) is controlled within ±1% of the stoichiometric value (1). 
Traditionally, the automotive industry uses Proportional-Integral (PI) controllers for this task, but PI controllers struggle with nonlinearities.

In this project, we provide a sliding mode control to regulate lambda at the stoichiometric value. 
Therefore, we define the sliding surface as the difference between the lambda from the oxygen sensor and the desired value. 
The equivalent control can be defined by equating the sliding surface and the time derivative of the sliding surface to zero. 

I want to point out that interested readers are referred to the following paper for more details. 
https://link.springer.com/article/10.1016/j.acme.2013.05.003.


## **Dynamics of the Engine** 
This repository includes one **Simulink** file, one **MATLAB** m-file, and one matrix. 

1. The simulink file, "sliding_mode_controller_2014b.mdl", includes the Mean Value Engine Model (MVEM) that models the dynamics of 4 subsystems in the engine: 
- Subsystem 1: fuel film deposited in the intake manifold 
- Subsystem 2: crankshaft
- Subsystem 3: intake manifold airflow 
- Subsystem 4: oxygen sensor
This file is saved as Simulink 8.4 MATLAB 2014b, so you **MUST** have at least MATLAB 2014b installed on your machine to run it.
 
Interested readers are referred to the following papers/books: 
- https://link.springer.com/article/10.1016/j.acme.2013.05.003.

2. The m-file, "engine_initials_smc.m," includes all the parameters in the engine model. You **MUST** run this file first. Otherwise, the simulink file will not work.
3. The matrix file "alfa_noise.mat" includes a noise signal for the throttle plate angle. 
 
## Summary    
### States 
The system's states are fuel film mass flow rate (subsystem 1), crankshaft rotational speed (subsystem 2), intake manifold air pressure (subsystem 3), and oxygen sensor lambda (subsystem 4). 
### Control Signals
The engine's overall inputs are three in general: ignition advance, injected fuel mass flow rate, and throttle plate angle. For control purposes, the code considers a fixed ignition advance and includes throttle plate angle as a noise. 
Therefore, the only control signal is the injected fuel mass flow rate. 

A sliding mode control (SMC) system is established to generate the controls.

### Control Goal 
The control goal is keeping lambda inside the window of ± 1% of the stoichiometric value of 1. 

### **How to Run the Code** 
The Simulink model is exported as a MATLAB 2014b version, so you must have at least a 2014b version of MATLAB installed on your machine. 
- First run "engine_initials_smc.m"
- Then, run the Simulink model, "sliding_mode_controller_2014b.mdl".
- Sit back and enjoy the resutls. 
