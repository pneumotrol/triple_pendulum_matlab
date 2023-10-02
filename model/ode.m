function dxdt = ode(q1,q2,q3,dq1,dq2,dq3,tau1,tau2,tau3,g,m1,m2,m3,J1,J2,J3,lg1,lg2,lg3,l1,l2,l3,d1,d2,d3)
%ODE
%    DXDT = ODE(Q1,Q2,Q3,DQ1,DQ2,DQ3,TAU1,TAU2,TAU3,G,M1,M2,M3,J1,J2,J3,LG1,LG2,LG3,L1,L2,L3,D1,D2,D3)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    02-Oct-2023 18:15:23

t2 = cos(q2);
t3 = cos(q3);
t4 = sin(q1);
t5 = sin(q2);
t6 = sin(q3);
t7 = q1+q2;
t8 = q2+q3;
t9 = dq1.^2;
t10 = dq2.^2;
t11 = dq3.^2;
t12 = q2.*2.0;
t13 = q3.*2.0;
t21 = -q1;
t22 = -q2;
t23 = -q3;
t51 = tau1.*2.946946415254026e-2;
t60 = dq1.*6.335934792796157e-3;
t14 = cos(t12);
t15 = cos(t13);
t16 = sin(t12);
t17 = sin(t13);
t18 = cos(t8);
t19 = sin(t7);
t20 = sin(t8);
t24 = -t13;
t25 = q2+t7;
t26 = q1+t13;
t27 = q3+t8;
t28 = q2+t8;
t31 = t7+t13;
t36 = q1+t22;
t38 = q2+t23;
t39 = t8.*2.0;
t52 = t2.*tau1.*2.469225090388689e-2;
t53 = t2.*tau2.*2.469225090388689e-2;
t54 = t2.*tau3.*2.469225090388689e-2;
t56 = dq2.*t2.*4.938450180777378e-5;
t57 = dq3.*t2.*4.938450180777378e-5;
t67 = -t60;
t71 = dq1.*t2.*5.308833944335681e-3;
t91 = t4.*1.262556414664538e-1;
t99 = dq1.*dq2.*t5.*7.61682647325307e-3;
t104 = dq1.*dq3.*t6.*2.541158091578123e-3;
t105 = dq2.*dq3.*t6.*2.541158091578123e-3;
t110 = t6.*t11.*1.270579045789061e-3;
t115 = t5.*t10.*3.808413236626535e-3;
t29 = cos(t27);
t30 = cos(t28);
t32 = sin(t25);
t33 = sin(t26);
t34 = sin(t27);
t35 = sin(t28);
t37 = q1+t24;
t40 = cos(t38);
t41 = sin(t36);
t43 = sin(t38);
t44 = sin(t31);
t45 = cos(t39);
t46 = t7+t27;
t47 = sin(t39);
t48 = t21+t27;
t55 = -t53;
t58 = t15.*tau1.*5.484350248943048e-3;
t59 = t15.*tau2.*5.484350248943048e-3;
t61 = t18.*tau3.*1.413776905788719e-2;
t62 = -t57;
t72 = dq2.*t15.*1.09687004978861e-5;
t73 = dq1.*t15.*1.179135303522755e-3;
t76 = -t71;
t77 = dq3.*t18.*2.827553811577438e-5;
t90 = t15.*2.427557924719446e-4;
t96 = t19.*6.782723253097108e-2;
t113 = -t104;
t114 = -t105;
t116 = dq1.*dq2.*t20.*8.648197128626401e-4;
t117 = dq1.*dq3.*t20.*8.648197128626401e-4;
t118 = dq2.*dq3.*t20.*8.648197128626401e-4;
t119 = -t110;
t121 = t14.*7.998603436434861e-4;
t122 = dq1.*dq2.*t16.*3.199441374573945e-3;
t123 = t9.*t20.*4.324098564313201e-4;
t124 = t10.*t20.*4.324098564313201e-4;
t125 = t11.*t20.*4.324098564313201e-4;
t130 = t9.*t16.*1.599720687286972e-3;
t131 = t10.*t16.*1.599720687286972e-3;
t42 = sin(t37);
t49 = sin(t46);
t50 = sin(t48);
t63 = -t58;
t64 = t29.*tau1.*4.227792674006216e-3;
t65 = t29.*tau2.*4.227792674006216e-3;
t66 = t29.*tau3.*4.227792674006216e-3;
t68 = -t61;
t74 = dq2.*t29.*8.455585348012432e-6;
t75 = dq3.*t29.*8.455585348012432e-6;
t78 = t40.*tau3.*1.637387588380799e-2;
t79 = -t72;
t80 = t45.*tau2.*3.259133731990472e-3;
t81 = t45.*tau3.*3.259133731990472e-3;
t84 = dq1.*t29.*9.089754249113364e-4;
t85 = dq2.*t45.*6.518267463980944e-6;
t86 = dq3.*t45.*6.518267463980944e-6;
t87 = dq3.*t40.*3.274775176761598e-5;
t92 = t33.*7.97608748008118e-3;
t97 = t44.*5.20701020616681e-3;
t100 = -t96;
t101 = dq1.*dq2.*t34.*1.170954825748806e-4;
t102 = t32.*4.853641713749947e-2;
t103 = t45.*2.256673083036183e-5;
t109 = t41.*7.332672856979699e-2;
t111 = t10.*t34.*5.854774128744028e-5;
t126 = t9.*t47.*4.513346166072365e-5;
t127 = dq1.*dq3.*t35.*8.261070805912506e-4;
t128 = dq2.*dq3.*t35.*8.261070805912506e-4;
t132 = dq1.*dq2.*t43.*1.071637358414037e-3;
t133 = dq1.*dq3.*t43.*1.071637358414037e-3;
t134 = dq2.*dq3.*t43.*1.071637358414037e-3;
t135 = t11.*t35.*4.130535402956253e-4;
t136 = t9.*t43.*5.358186792070186e-4;
t137 = t10.*t43.*5.358186792070186e-4;
t138 = t11.*t43.*5.358186792070186e-4;
t69 = -t64;
t70 = -t66;
t82 = -t74;
t83 = -t81;
t88 = -t85;
t89 = -t87;
t93 = t49.*1.369374378560656e-3;
t94 = t42.*7.97608748008118e-3;
t95 = -t92;
t106 = -t101;
t107 = t50.*6.148630682735612e-3;
t108 = -t102;
t112 = -t103;
t120 = -t111;
t129 = -t126;
t98 = -t94;
t139 = t90+t112+t121-1.972477896005356e-3;
t140 = 1.0./t139;
dxdt = [t140.*(dq2.*5.893892830508053e-5+t51+t54+t55+t56+t59+t62+t63+t65+t67+t68+t70+t73+t75+t77+t78+t79+t82+t89+t91+t93+t95+t98+t99+t106+t108+t115+t116+t117+t118+t120+t123+t124+t125+t129+t130+t132+t133+t134+t136+t137+t138-tau2.*2.946946415254026e-2+t5.*t9.*3.808413236626535e-3-t9.*t34.*5.854774128744028e-5).*(-1.0./2.0);(t140.*(dq2.*1.297599721922107e-4-dq3.*7.082104388713019e-5+t51+t52+t54+t59+t62+t63+t67+t68+t69+t70+t73+t75+t76+t77+t78+t79+t80+t83+t84+t86+t88+t89+t91+t93+t95+t97+t98+t99+t100+t106+t107+t108+t109+t113+t114+t115+t116+t117+t118+t119+t120+t122+t123+t124+t125+t127+t128+t129+t131+t132+t133+t134+t135+t136+t137+t138-tau2.*6.487998609610536e-2+tau3.*3.54105219435651e-2+dq2.*t2.*9.876900361554755e-5-dq3.*t3.*6.233085780842519e-5-dq2.*t29.*1.691117069602486e-5+dq3.*t30.*2.524468692348439e-5+t5.*t9.*8.460732566784503e-3-t6.*t9.*1.270579045789061e-3-t6.*t10.*1.270579045789061e-3+t9.*t16.*3.199441374573945e-3-t9.*t17.*4.855115849438893e-4-t10.*t17.*4.855115849438893e-4-t9.*t34.*4.328203950747344e-4+t9.*t35.*4.130535402956253e-4+t10.*t35.*4.130535402956253e-4-t2.*tau2.*4.938450180777378e-2+t3.*tau3.*3.11654289042126e-2+t29.*tau2.*8.455585348012432e-3-t30.*tau3.*1.26223434617422e-2-dq1.*dq2.*t6.*2.541158091578123e-3-dq1.*dq2.*t17.*9.710231698877785e-4+dq1.*dq2.*t35.*8.261070805912506e-4))./2.0;t140.*(dq2.*7.082104388713019e-5-dq3.*2.890634374841497e-4+t52+t55+t56+t65+t69+t76+t80+t82+t83+t84+t86+t88+t97+t100+t107+t109+t113+t114+t119+t122+t126+t127+t128+t130+t131+t135-tau2.*3.54105219435651e-2+tau3.*1.445317187420749e-1+sin(q3+t7).*1.33239253640049e-2+sin(q3+t36).*2.381311559421526e-2+sin(t8+t21).*1.647271099858823e-2-sin(t7+t23).*2.016630081358891e-2+dq2.*t3.*6.233085780842519e-5-dq3.*t3.*1.246617156168504e-4+dq3.*t14.*9.777049214171476e-5+dq1.*t18.*3.039620347445745e-3-dq2.*t18.*2.827553811577438e-5-dq2.*t30.*2.524468692348439e-5+dq3.*t30.*5.048937384696878e-5-dq1.*t40.*3.520383315018717e-3+dq2.*t40.*3.274775176761598e-5+t5.*t9.*4.652319330157968e-3-t6.*t9.*4.599679709117293e-3-t6.*t10.*4.599679709117293e-3-t9.*t17.*9.710231698877785e-4-t10.*t17.*9.710231698877785e-4-t11.*t17.*4.855115849438893e-4-t9.*t20.*9.820728107262839e-4-t9.*t34.*3.742726537872941e-4+t9.*t35.*5.878515392568698e-4+t10.*t35.*5.878515392568698e-4+t9.*t43.*1.449525663236811e-3+t10.*t47.*4.513346166072365e-5+t11.*t47.*4.513346166072365e-5-t3.*tau2.*3.11654289042126e-2+t3.*tau3.*6.233085780842519e-2-t14.*tau3.*4.888524607085738e-2-t18.*tau1.*1.413776905788719e-2+t18.*tau2.*1.413776905788719e-2+t30.*tau2.*1.26223434617422e-2-t30.*tau3.*2.524468692348439e-2+t40.*tau1.*1.637387588380799e-2-t40.*tau2.*1.637387588380799e-2-dq1.*dq2.*t6.*9.199359418234585e-3-dq1.*dq2.*t17.*1.942046339775557e-3-dq1.*dq3.*t17.*9.710231698877785e-4-dq2.*dq3.*t17.*9.710231698877785e-4+dq1.*dq2.*t35.*1.17570307851374e-3+dq1.*dq2.*t47.*9.026692332144731e-5+dq1.*dq3.*t47.*9.026692332144731e-5+dq2.*dq3.*t47.*9.026692332144731e-5).*(-1.0./2.0)];