clear 
clc
load('alfa_noise.mat')
alfa0=15*pi/180;  % Throttle plate closing angle
Pa=1.013;         % ambient pressure in bar
Vi=3*564e-6;      % intake manifold and port passage volume m^3
R=0.00287;        % gas global constant kj kg/k
Ta=293;           % ambient temperture k
Ti=308;           % intake manifold temperature k
mat1=5.9403;      % a parameter in finding m_at
mpTa=mat1*Pa/sqrt(Ta); % a parameter in finding m_at
mat0=0;           % a parameter in finding m_at
Vd=1.275;         % engine displacement liter
Ncyl=4;           % number of cylinders 
k=1.4; % 
Pc=.4125;         % a parameter (2/(k+1))^(k/(k-1));
si=.961;          % slope in volumetric efficiency 
yi=-0.07;         % bias in volumetric efficiency 
etaif2 = -0.015;
Lth=14.67;        % Stoichiometric AFR 
Hu=43000;         % Fuel heating value for gasoline kj/kg
Iac = 0.48;       % Moment of Inertia of engine
I = Iac*(2.0*pi/60)^2*1000;
kb2 = 0.470;
eta_var=.00010000;


