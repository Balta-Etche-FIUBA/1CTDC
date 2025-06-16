clear all;close all;clc

R10 = 5.6e3;


Vout = 9.5;
Vref = 2.5;

Rel = (Vout-Vref)/Vref;
R9 = R10*Rel;
