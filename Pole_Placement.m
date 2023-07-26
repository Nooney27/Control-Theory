clc

%% Pole Placement - Full State Feedback

% Define state matrices:
A = [0 1; 2 -1];
B = [1; 0];
C = [1 0];
D = 0;

% Create state space open loop object
sys = ss(A, B, C, D);

% Stability check: open loop eigv
E = eig(A) %unstable, positiv eigv

% Pole placement: desired closed loop eigv
P = [-2, -1];

% Solve for K with pole placement
K = place(A, B, P)

% Closed loop eigv
Acl = A - B*K;
Ecl = eig(Acl) %stable

% Closed loop system:
syscl = ss(Acl, B, C, D);

% Step reponse 
figure;
step(sys)
title('Step Response of Open Loop System');

figure;
step(syscl) % step response asymptote around 0.5
title('Step Response of Closed Loop System (No Scaling)');
% Scaling term k_r 

Kdc = dcgain(syscl)
Kr = 1/Kdc

% Scaled input closed loop system
syscl_scaled = ss(Acl, B*Kr, C, D);
figure;
step(syscl_scaled)
title('Step Response of Scaled Closed Loop System');

