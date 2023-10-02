close all;
clear;
clc

[A,B,qe,ue] = ss_model();
if (rank(ctrb(A,B)) == size(A,2))
    disp("controllable.");
else
    disp("uncontrollable.");
end

Q_lqr = diag([1e2,1e2,1e2,1,1,1]);
R_lqr = diag([1]);

K_lqr = lqr(A,B,Q_lqr,R_lqr);

disp("eigenvalues of (A - B + K) are");
disp(real(eig(A - B * K_lqr))')