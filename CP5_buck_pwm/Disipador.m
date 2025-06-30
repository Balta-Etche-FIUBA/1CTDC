
%%

fsw = 120e3;       
Vdrv = 11;         
Qgate = 43e-9;     
% Qgate = Cgate * Vdrv;  
Vds = 30;         
Id = 1.5;           
Rds_on = 17.5e-3;     
D = 0.316;           
tsw = 60e-9 + 45e-9;     


Pgate = fsw * Qgate * Vdrv
Pcond = Id^2 * Rds_on * D
Psw = 0.5 * Vds * Id * fsw * tsw 

Ploss = Psw + Pcond + Pgate



Tj = 125;       
Ta = 25;        
Pc_max = Pgate + Psw;    

theta_jc = 1.5; 
theta_cs = 0.5; 


theta_sa = (Tj - Ta) / Pc_max - theta_jc - theta_cs
