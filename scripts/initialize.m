%% Initialize variables for Simulink model

% Clear Command Window and Workspace
clc;
clear;

% TODO: Decide on variables needed and initialize them here

% reaction wheel directions, reference is counter-clockwise 
topRight = [1, -1, 1]
topLeft = [-1, -1, 1]
bottomLeft = [-1, -1, -1]
bottomRight = [1, -1, -1]

% moments of intertia taken at the center of mass and aligned with the output coordinate system

Lxx = 11517370.83	
Lxy = 300172.98	
Lxz = 193460.01
	
Lyx = 300172.98	
Lyy = 2693428.56	
Lyz = 81195.22
	
Lzx = 193460.01	
Lzy = 81195.22	
Lzz = 11394934.85

I = [Lxx, Lxy, Lxz; Lyz, Lyy, Lyz; Lzx, Lzy, Lzz] % measured in g*mm^2

% gains (currently untuned)
Kp = 1 % proportional gain
Kd = 1 % deriviitve gain 

% Define transfer function variables
K = 0.373 % back-EMF constant [mV/min-1]
J = 0.69 % rotor moment of inertia [g*cm^2]
b = 1 % TBD
L = 570 % inductance [uH] 
R = 22 % armature resistance [ohm]

disp("Initialization complete.");

% Orbital Mechanics Variables