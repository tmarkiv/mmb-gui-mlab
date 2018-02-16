%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'US_DNGS15';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_DNGS15.log');
M_.exo_names = 'psi_b';
M_.exo_names_tex = 'psi\_b';
M_.exo_names_long = 'psi_b';
M_.exo_names = char(M_.exo_names, 'psi_mu');
M_.exo_names_tex = char(M_.exo_names_tex, 'psi\_mu');
M_.exo_names_long = char(M_.exo_names_long, 'psi_mu');
M_.exo_names = char(M_.exo_names, 'psi_z');
M_.exo_names_tex = char(M_.exo_names_tex, 'psi\_z');
M_.exo_names_long = char(M_.exo_names_long, 'psi_z');
M_.exo_names = char(M_.exo_names, 'psi_laf');
M_.exo_names_tex = char(M_.exo_names_tex, 'psi\_laf');
M_.exo_names_long = char(M_.exo_names_long, 'psi_laf');
M_.exo_names = char(M_.exo_names, 'psi_law');
M_.exo_names_tex = char(M_.exo_names_tex, 'psi\_law');
M_.exo_names_long = char(M_.exo_names_long, 'psi_law');
M_.exo_names = char(M_.exo_names, 'psi_sigw');
M_.exo_names_tex = char(M_.exo_names_tex, 'psi\_sigw');
M_.exo_names_long = char(M_.exo_names_long, 'psi_sigw');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'c';
M_.endo_names_tex = 'c';
M_.endo_names_long = 'c';
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, '\pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'L');
M_.endo_names_tex = char(M_.endo_names_tex, 'L');
M_.endo_names_long = char(M_.endo_names_long, 'L');
M_.endo_names = char(M_.endo_names, 'qk');
M_.endo_names_tex = char(M_.endo_names_tex, 'q^k');
M_.endo_names_long = char(M_.endo_names_long, 'qk');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'Rktil');
M_.endo_names_tex = char(M_.endo_names_tex, '\tilde{R}^k');
M_.endo_names_long = char(M_.endo_names_long, 'Rktil');
M_.endo_names = char(M_.endo_names, 'rk');
M_.endo_names_tex = char(M_.endo_names_tex, 'r^k');
M_.endo_names_long = char(M_.endo_names_long, 'rk');
M_.endo_names = char(M_.endo_names, 'kbar');
M_.endo_names_tex = char(M_.endo_names_tex, '\bar{k}');
M_.endo_names_long = char(M_.endo_names_long, 'kbar');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, 'n');
M_.endo_names_long = char(M_.endo_names_long, 'n');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, 'u');
M_.endo_names_long = char(M_.endo_names_long, 'u');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'wh');
M_.endo_names_tex = char(M_.endo_names_tex, 'wh');
M_.endo_names_long = char(M_.endo_names_long, 'wh');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'ztil');
M_.endo_names_tex = char(M_.endo_names_tex, 'ztil');
M_.endo_names_long = char(M_.endo_names_long, 'ztil');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu');
M_.endo_names_long = char(M_.endo_names_long, 'mu');
M_.endo_names = char(M_.endo_names, 'sigw');
M_.endo_names_tex = char(M_.endo_names_tex, 'sigw');
M_.endo_names_long = char(M_.endo_names_long, 'sigw');
M_.endo_names = char(M_.endo_names, 'laf');
M_.endo_names_tex = char(M_.endo_names_tex, 'laf');
M_.endo_names_long = char(M_.endo_names_long, 'laf');
M_.endo_names = char(M_.endo_names, 'law');
M_.endo_names_tex = char(M_.endo_names_tex, 'law');
M_.endo_names_long = char(M_.endo_names_long, 'law');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, 'b');
M_.endo_names_long = char(M_.endo_names_long, 'b');
M_.endo_names = char(M_.endo_names, 'c_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'c\_f');
M_.endo_names_long = char(M_.endo_names_long, 'c_f');
M_.endo_names = char(M_.endo_names, 'r_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'r\_f');
M_.endo_names_long = char(M_.endo_names_long, 'r_f');
M_.endo_names = char(M_.endo_names, 'L_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'L\_f');
M_.endo_names_long = char(M_.endo_names_long, 'L_f');
M_.endo_names = char(M_.endo_names, 'qk_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'qk\_f');
M_.endo_names_long = char(M_.endo_names_long, 'qk_f');
M_.endo_names = char(M_.endo_names, 'i_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_f');
M_.endo_names_long = char(M_.endo_names_long, 'i_f');
M_.endo_names = char(M_.endo_names, 'rk_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'rk\_f');
M_.endo_names_long = char(M_.endo_names_long, 'rk_f');
M_.endo_names = char(M_.endo_names, 'y_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'y\_f');
M_.endo_names_long = char(M_.endo_names_long, 'y_f');
M_.endo_names = char(M_.endo_names, 'k_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'k\_f');
M_.endo_names_long = char(M_.endo_names_long, 'k_f');
M_.endo_names = char(M_.endo_names, 'u_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'u\_f');
M_.endo_names_long = char(M_.endo_names_long, 'u_f');
M_.endo_names = char(M_.endo_names, 'kbar_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'kbar\_f');
M_.endo_names_long = char(M_.endo_names_long, 'kbar_f');
M_.endo_names = char(M_.endo_names, 'w_f');
M_.endo_names_tex = char(M_.endo_names_tex, 'w\_f');
M_.endo_names_long = char(M_.endo_names_long, 'w_f');
M_.endo_names = char(M_.endo_names, 'psi_g');
M_.endo_names_tex = char(M_.endo_names_tex, 'psi\_g');
M_.endo_names_long = char(M_.endo_names_long, 'psi_g');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names_long = char(M_.endo_names_long, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_78');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_78');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_78');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_82');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_82');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_82');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_86');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_86');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_86');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_113');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_113');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_113');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_117');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_117');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_117');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_121');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_121');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_121');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_148');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_148');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_148');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_152');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_152');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_152');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_156');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_156');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_156');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_2_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_2\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_2_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_2_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_2\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_2_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_40_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_40\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_40_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_40_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_40\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_40_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_40_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_40\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_40_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_39_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_39\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_39_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_39_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_39\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_39_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_39_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_39\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_39_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_36_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_36\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_36_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_38_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_38\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_38_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_38_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_38\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_38_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_38_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_38\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_38_3');
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'alp');
M_.param_names_tex = char(M_.param_names_tex, '\alpha');
M_.param_names_long = char(M_.param_names_long, 'alp');
M_.param_names = char(M_.param_names, 'zeta_p');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_p');
M_.param_names_long = char(M_.param_names_long, 'zeta_p');
M_.param_names = char(M_.param_names, 'iota_p');
M_.param_names_tex = char(M_.param_names_tex, '\iota_p');
M_.param_names_long = char(M_.param_names_long, 'iota_p');
M_.param_names = char(M_.param_names, 'del');
M_.param_names_tex = char(M_.param_names_tex, '\delta');
M_.param_names_long = char(M_.param_names_long, 'del');
M_.param_names = char(M_.param_names, 'Bigphi');
M_.param_names_tex = char(M_.param_names_tex, '\Phi');
M_.param_names_long = char(M_.param_names_long, 'Bigphi');
M_.param_names = char(M_.param_names, 's2');
M_.param_names_tex = char(M_.param_names_tex, 's2');
M_.param_names_long = char(M_.param_names_long, 's2');
M_.param_names = char(M_.param_names, 'h');
M_.param_names_tex = char(M_.param_names_tex, 'h');
M_.param_names_long = char(M_.param_names_long, 'h');
M_.param_names = char(M_.param_names, 'ppsi');
M_.param_names_tex = char(M_.param_names_tex, '\psi');
M_.param_names_long = char(M_.param_names_long, 'ppsi');
M_.param_names = char(M_.param_names, 'nu_l');
M_.param_names_tex = char(M_.param_names_tex, '\nu_l');
M_.param_names_long = char(M_.param_names_long, 'nu_l');
M_.param_names = char(M_.param_names, 'zeta_w');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_w');
M_.param_names_long = char(M_.param_names_long, 'zeta_w');
M_.param_names = char(M_.param_names, 'iota_w');
M_.param_names_tex = char(M_.param_names_tex, '\iota_w');
M_.param_names_long = char(M_.param_names_long, 'iota_w');
M_.param_names = char(M_.param_names, 'bet');
M_.param_names_tex = char(M_.param_names_tex, '\beta');
M_.param_names_long = char(M_.param_names_long, 'bet');
M_.param_names = char(M_.param_names, 'psi1');
M_.param_names_tex = char(M_.param_names_tex, '\psi_1');
M_.param_names_long = char(M_.param_names_long, 'psi1');
M_.param_names = char(M_.param_names, 'psi2');
M_.param_names_tex = char(M_.param_names_tex, '\psi_2');
M_.param_names_long = char(M_.param_names_long, 'psi2');
M_.param_names = char(M_.param_names, 'psi3');
M_.param_names_tex = char(M_.param_names_tex, '\psi_3');
M_.param_names_long = char(M_.param_names_long, 'psi3');
M_.param_names = char(M_.param_names, 'sigmac');
M_.param_names_tex = char(M_.param_names_tex, '\sigma_c');
M_.param_names_long = char(M_.param_names_long, 'sigmac');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, '\rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.param_names = char(M_.param_names, 'epsp');
M_.param_names_tex = char(M_.param_names_tex, 'epsp');
M_.param_names_long = char(M_.param_names_long, 'epsp');
M_.param_names = char(M_.param_names, 'epsw');
M_.param_names_tex = char(M_.param_names_tex, 'epsw');
M_.param_names_long = char(M_.param_names_long, 'epsw');
M_.param_names = char(M_.param_names, 'star');
M_.param_names_tex = char(M_.param_names_tex, 'g');
M_.param_names_long = char(M_.param_names_long, 'star');
M_.param_names = char(M_.param_names, 'rho_g');
M_.param_names_tex = char(M_.param_names_tex, '\rho_g');
M_.param_names_long = char(M_.param_names_long, 'rho_g');
M_.param_names = char(M_.param_names, 'rho_b');
M_.param_names_tex = char(M_.param_names_tex, '\rho_b');
M_.param_names_long = char(M_.param_names_long, 'rho_b');
M_.param_names = char(M_.param_names, 'rho_mu');
M_.param_names_tex = char(M_.param_names_tex, '\rho_\mu');
M_.param_names_long = char(M_.param_names_long, 'rho_mu');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '\rho_z');
M_.param_names_long = char(M_.param_names_long, 'rho_z');
M_.param_names = char(M_.param_names, 'rho_laf');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\lambda_f}');
M_.param_names_long = char(M_.param_names_long, 'rho_laf');
M_.param_names = char(M_.param_names, 'rho_law');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\lambda_w}');
M_.param_names_long = char(M_.param_names_long, 'rho_law');
M_.param_names = char(M_.param_names, 'rho_rm');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{r^m}');
M_.param_names_long = char(M_.param_names_long, 'rho_rm');
M_.param_names = char(M_.param_names, 'rho_sigw');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\sigma_w}');
M_.param_names_long = char(M_.param_names_long, 'rho_sigw');
M_.param_names = char(M_.param_names, 'rho_pist');
M_.param_names_tex = char(M_.param_names_tex, '\rho_{\pi^*}');
M_.param_names_long = char(M_.param_names_long, 'rho_pist');
M_.param_names = char(M_.param_names, 'eta_gz');
M_.param_names_tex = char(M_.param_names_tex, 'eta\_gz');
M_.param_names_long = char(M_.param_names_long, 'eta_gz');
M_.param_names = char(M_.param_names, 'eta_laf');
M_.param_names_tex = char(M_.param_names_tex, 'eta\_laf');
M_.param_names_long = char(M_.param_names_long, 'eta_laf');
M_.param_names = char(M_.param_names, 'eta_law');
M_.param_names_tex = char(M_.param_names_tex, 'eta\_law');
M_.param_names_long = char(M_.param_names_long, 'eta_law');
M_.param_names = char(M_.param_names, 'zstar');
M_.param_names_tex = char(M_.param_names_tex, '\gamma');
M_.param_names_long = char(M_.param_names_long, 'zstar');
M_.param_names = char(M_.param_names, 'rkstar');
M_.param_names_tex = char(M_.param_names_tex, 'r^k');
M_.param_names_long = char(M_.param_names_long, 'rkstar');
M_.param_names = char(M_.param_names, 'wl_c');
M_.param_names_tex = char(M_.param_names_tex, '\frac{wl}{c}');
M_.param_names_long = char(M_.param_names_long, 'wl_c');
M_.param_names = char(M_.param_names, 'cstar');
M_.param_names_tex = char(M_.param_names_tex, 'c');
M_.param_names_long = char(M_.param_names_long, 'cstar');
M_.param_names = char(M_.param_names, 'wstar');
M_.param_names_tex = char(M_.param_names_tex, 'w');
M_.param_names_long = char(M_.param_names_long, 'wstar');
M_.param_names = char(M_.param_names, 'Lstar');
M_.param_names_tex = char(M_.param_names_tex, 'L');
M_.param_names_long = char(M_.param_names_long, 'Lstar');
M_.param_names = char(M_.param_names, 'kstar');
M_.param_names_tex = char(M_.param_names_tex, 'k');
M_.param_names_long = char(M_.param_names_long, 'kstar');
M_.param_names = char(M_.param_names, 'kbarstar');
M_.param_names_tex = char(M_.param_names_tex, '\bar{k}');
M_.param_names_long = char(M_.param_names_long, 'kbarstar');
M_.param_names = char(M_.param_names, 'istar');
M_.param_names_tex = char(M_.param_names_tex, 'i');
M_.param_names_long = char(M_.param_names_long, 'istar');
M_.param_names = char(M_.param_names, 'rstar');
M_.param_names_tex = char(M_.param_names_tex, 'r');
M_.param_names_long = char(M_.param_names_long, 'rstar');
M_.param_names = char(M_.param_names, 'ystar');
M_.param_names_tex = char(M_.param_names_tex, 'y');
M_.param_names_long = char(M_.param_names_long, 'ystar');
M_.param_names = char(M_.param_names, 'zeta_spb');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{spb}');
M_.param_names_long = char(M_.param_names_long, 'zeta_spb');
M_.param_names = char(M_.param_names, 'gammstar');
M_.param_names_tex = char(M_.param_names_tex, 'gammstar');
M_.param_names_long = char(M_.param_names_long, 'gammstar');
M_.param_names = char(M_.param_names, 'vstar');
M_.param_names_tex = char(M_.param_names_tex, 'v');
M_.param_names_long = char(M_.param_names_long, 'vstar');
M_.param_names = char(M_.param_names, 'nstar');
M_.param_names_tex = char(M_.param_names_tex, 'n');
M_.param_names_long = char(M_.param_names_long, 'nstar');
M_.param_names = char(M_.param_names, 'zeta_nRk');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{nRk}');
M_.param_names_long = char(M_.param_names_long, 'zeta_nRk');
M_.param_names = char(M_.param_names, 'zeta_nR');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{nR}');
M_.param_names_long = char(M_.param_names_long, 'zeta_nR');
M_.param_names = char(M_.param_names, 'zeta_nsigw');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{n\sigma_w}');
M_.param_names_long = char(M_.param_names_long, 'zeta_nsigw');
M_.param_names = char(M_.param_names, 'zeta_spsigw');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{sp\sigma_w}');
M_.param_names_long = char(M_.param_names_long, 'zeta_spsigw');
M_.param_names = char(M_.param_names, 'zeta_nqk');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{nqk}');
M_.param_names_long = char(M_.param_names_long, 'zeta_nqk');
M_.param_names = char(M_.param_names, 'zeta_nn');
M_.param_names_tex = char(M_.param_names_tex, '\zeta_{nn}');
M_.param_names_long = char(M_.param_names_long, 'zeta_nn');
M_.param_names = char(M_.param_names, 'gstar');
M_.param_names_tex = char(M_.param_names_tex, 'gstar');
M_.param_names_long = char(M_.param_names_long, 'gstar');
M_.exo_det_nbr = 0;
M_.exo_nbr = 8;
M_.endo_nbr = 65;
M_.param_nbr = 88;
M_.orig_endo_nbr = 42;
M_.aux_vars(1).endo_index = 43;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 44;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 45;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 46;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 47;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 48;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 49;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 50;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 51;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 52;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 3;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 53;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 3;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 54;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 41;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 55;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 41;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 56;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 41;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 57;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 40;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 58;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 40;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 59;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 40;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 60;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 37;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 61;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 37;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 62;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 37;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 63;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 39;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 64;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 39;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 65;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 39;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(8, 8);
M_.Correlation_matrix = eye(8, 8);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('US_DNGS15_static');
erase_compiled_function('US_DNGS15_dynamic');
M_.lead_lag_incidence = [
 1 37 102;
 2 38 0;
 3 39 103;
 0 40 104;
 4 41 0;
 5 42 105;
 0 43 106;
 0 44 0;
 6 45 0;
 7 46 0;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 8 51 107;
 0 52 0;
 0 53 0;
 9 54 0;
 10 55 0;
 11 56 0;
 12 57 0;
 13 58 0;
 14 59 0;
 15 60 0;
 16 61 108;
 0 62 0;
 0 63 109;
 0 64 110;
 17 65 111;
 0 66 112;
 0 67 0;
 0 68 0;
 0 69 0;
 18 70 0;
 0 71 0;
 0 72 0;
 19 73 0;
 0 74 0;
 20 75 113;
 21 76 114;
 22 77 115;
 0 78 0;
 0 79 116;
 0 80 117;
 0 81 118;
 0 82 119;
 0 83 120;
 0 84 121;
 0 85 122;
 0 86 123;
 0 87 124;
 23 88 0;
 24 89 0;
 25 90 0;
 26 91 0;
 27 92 0;
 28 93 0;
 29 94 0;
 30 95 0;
 31 96 0;
 32 97 0;
 33 98 0;
 34 99 0;
 35 100 0;
 36 101 0;]';
M_.nstatic = 15;
M_.nfwrd   = 14;
M_.npred   = 27;
M_.nboth   = 9;
M_.nsfwrd   = 23;
M_.nspred   = 36;
M_.ndynamic   = 50;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:8];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(65, 1);
M_.maximum_exo_lag = 1;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(8, 1);
M_.params = NaN(88, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 265;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 35 ) = 0.1787;
alp = M_.params( 35 );
M_.params( 36 ) = 0.8680;
zeta_p = M_.params( 36 );
M_.params( 37 ) = 0.2259;
iota_p = M_.params( 37 );
M_.params( 38 ) = 0.025;
del = M_.params( 38 );
M_.params( 39 ) = 1.5262;
Bigphi = M_.params( 39 );
M_.params( 40 ) = 3.0437;
s2 = M_.params( 40 );
M_.params( 41 ) = 0.2440;
h = M_.params( 41 );
M_.params( 42 ) = 0.1884;
ppsi = M_.params( 42 );
M_.params( 43 ) = 2.6732;
nu_l = M_.params( 43 );
M_.params( 44 ) = 0.8875;
zeta_w = M_.params( 44 );
M_.params( 45 ) = 0.4187;
iota_w = M_.params( 45 );
M_.params( 46 ) = 0.9987;
bet = M_.params( 46 );
M_.params( 47 ) = 1.3737;
psi1 = M_.params( 47 );
M_.params( 48 ) = 0.0180;
psi2 = M_.params( 48 );
M_.params( 49 ) = 0.2398;
psi3 = M_.params( 49 );
M_.params( 50 ) = 1.3159;
sigmac = M_.params( 50 );
M_.params( 51 ) = 0.6750;
rho = M_.params( 51 );
M_.params( 52 ) = 10;
epsp = M_.params( 52 );
M_.params( 53 ) = 10;
epsw = M_.params( 53 );
M_.params( 78 ) = 0.0443;
zeta_spb = M_.params( 78 );
M_.params( 79 ) = 0.9900;
gammstar = M_.params( 79 );
M_.params( 80 ) = 2.4708;
vstar = M_.params( 80 );
M_.params( 81 ) = 2.4492;
nstar = M_.params( 81 );
M_.params( 82 ) = 1.6938;
zeta_nRk = M_.params( 82 );
M_.params( 83 ) = 0.6930;
zeta_nR = M_.params( 83 );
M_.params( 84 ) = 0.0043;
zeta_nsigw = M_.params( 84 );
M_.params( 85 ) = 0.0276;
zeta_spsigw = M_.params( 85 );
M_.params( 86 ) = 0.0021;
zeta_nqk = M_.params( 86 );
M_.params( 87 ) = 0.9987;
zeta_nn = M_.params( 87 );
M_.params( 88 ) = 0.1800;
gstar = M_.params( 88 );
M_.params( 55 ) = 0.9793;
rho_g = M_.params( 55 );
M_.params( 56 ) = 0.9440;
rho_b = M_.params( 56 );
M_.params( 57 ) = 0.6435;
rho_mu = M_.params( 57 );
M_.params( 58 ) = 0.9564;
rho_z = M_.params( 58 );
M_.params( 59 ) = 0.7939;
rho_laf = M_.params( 59 );
M_.params( 60 ) = 0.6609;
rho_law = M_.params( 60 );
M_.params( 61 ) = 0.0673;
rho_rm = M_.params( 61 );
M_.params( 62 ) = 0.9899;
rho_sigw = M_.params( 62 );
M_.params( 63 ) = 0.9900;
rho_pist = M_.params( 63 );
M_.params( 64 ) = 0.8737;
eta_gz = M_.params( 64 );
M_.params( 65 ) = 0.7143;
eta_laf = M_.params( 65 );
M_.params( 66 ) = 0.5720;
eta_law = M_.params( 66 );
M_.params( 67 ) = 0.0040;
zstar = M_.params( 67 );
M_.params( 76 ) = 1.10066;
rstar = M_.params( 76 );
M_.params( 68 ) = 0.0364;
rkstar = M_.params( 68 );
M_.params( 71 ) = 0.6939;
wstar = M_.params( 71 );
M_.params( 72 ) = 1;
Lstar = M_.params( 72 );
M_.params( 73 ) = 4.1487;
kstar = M_.params( 73 );
M_.params( 74 ) = 4.1654;
kbarstar = M_.params( 74 );
M_.params( 75 ) = 0.1204;
istar = M_.params( 75 );
M_.params( 77 ) = 0.8449;
ystar = M_.params( 77 );
M_.params( 70 ) = 0.5725;
cstar = M_.params( 70 );
M_.params( 69 ) = 0.8081;
wl_c = M_.params( 69 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);       
M_.params( 34 ) = 1/M_.params(88);
coffispol = M_.params( 34 );
steady;
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0384)^2;
M_.Sigma_e(2, 2) = (0.5033)^2;
M_.Sigma_e(3, 3) = (0.4961)^2;
M_.Sigma_e(4, 4) = (0.1535)^2;
M_.Sigma_e(5, 5) = (0.2568)^2;
M_.Sigma_e(6, 6) = (0.0575)^2;
M_.Sigma_e(8, 8) = (2.908)^2;
save('US_DNGS15_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_DNGS15_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_DNGS15_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_DNGS15_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_DNGS15_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
