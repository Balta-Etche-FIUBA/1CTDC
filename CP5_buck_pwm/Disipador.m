
%%

fsw = 120e3;       % Frecuencia de conmutación [Hz]
Vdrv = 11;         % Voltaje del driver [V]
Cgate = 43e-9;      % Capacidad de gate [F]
% Qgate = Cgate * Vdrv;  % Carga de gate [C] (opcional)
Vds = 30;         % Tensión drenaje-fuente [V]
Id = 1.5;           % Corriente del drain [A]
Rds_on = 17.5e-3;     % R_DS(on) del transistor [Ohm]
D = 0.7;           % Ciclo de trabajo (duty cycle)
tsw = 60e-9 + 45e-9;      % Tiempo de conmutación [s]

% Cálculos
Pgate = fsw * Cgate * Vdrv^2
Pcond = Id^2 * Rds_on * D
Psw = 0.5 * Vds * Id * fsw * tsw 

Ploss = Psw + Pcond + Pgate

%%Disipador

Tj = 125;       
Ta = 25;        
Pc_max = Ploss;    

theta_jc = 1.5; 
theta_cs = 0.5; 


theta_sa = (Tj - Ta) / Pc_max - theta_jc - theta_cs
