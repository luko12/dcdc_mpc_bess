%% DAB BESS System Parameters (From Paper 3)
% Hardware Constants
Fs = 20e3;          % Switching Frequency (20 kHz)
Ts = 1/Fs;          % Sampling Period
Lr = 10e-6;         % Leakage Inductance (Estimated/Typical)
n  = 1;             % Transformer Turns Ratio (1:1)
Co = 470e-6;        % Output Capacitance

% Battery Ratings (Section II)
V_nom = 50;         % Nominal Voltage (50V)
Cap_Ah = 40;        % Battery Capacity (40 Ah)

% MPC Control Parameters (Section III)
delta_phi = 0.005;  % Smallest phase shift step (Delta_f)
Vm = 2;             % Max voltage variation allowed (V_m)
gamma = 0.5;        % Adaptive step tuning coefficient

% Cost Function Weights
lambda1 = 1.0;      % Voltage tracking weight
lambda2 = 0.5;      % SoC balancing weight