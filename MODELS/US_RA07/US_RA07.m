%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'US_RA07';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_RA07.log');
M_.exo_names = 'epsp';
M_.exo_names_tex = 'epsp';
M_.exo_names_long = 'epsp';
M_.exo_names = char(M_.exo_names, 'epsa');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsa');
M_.exo_names_long = char(M_.exo_names_long, 'epsa');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'pi';
M_.endo_names_tex = 'pi';
M_.endo_names_long = 'pi';
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'rk');
M_.endo_names_tex = char(M_.endo_names_tex, 'rk');
M_.endo_names_long = char(M_.endo_names_long, 'rk');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, 'u');
M_.endo_names_long = char(M_.endo_names_long, 'u');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, 'n');
M_.endo_names_long = char(M_.endo_names_long, 'n');
M_.endo_names = char(M_.endo_names, 'l');
M_.endo_names_tex = char(M_.endo_names_tex, 'l');
M_.endo_names_long = char(M_.endo_names_long, 'l');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names_long = char(M_.endo_names_long, 'q');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'rkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rkf');
M_.endo_names_long = char(M_.endo_names_long, 'rkf');
M_.endo_names = char(M_.endo_names, 'wf');
M_.endo_names_tex = char(M_.endo_names_tex, 'wf');
M_.endo_names_long = char(M_.endo_names_long, 'wf');
M_.endo_names = char(M_.endo_names, 'rrf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rrf');
M_.endo_names_long = char(M_.endo_names_long, 'rrf');
M_.endo_names = char(M_.endo_names, 'uf');
M_.endo_names_tex = char(M_.endo_names_tex, 'uf');
M_.endo_names_long = char(M_.endo_names_long, 'uf');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names_long = char(M_.endo_names_long, 'cf');
M_.endo_names = char(M_.endo_names, 'nf');
M_.endo_names_tex = char(M_.endo_names_tex, 'nf');
M_.endo_names_long = char(M_.endo_names_long, 'nf');
M_.endo_names = char(M_.endo_names, 'lf');
M_.endo_names_tex = char(M_.endo_names_tex, 'lf');
M_.endo_names_long = char(M_.endo_names_long, 'lf');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf');
M_.endo_names_long = char(M_.endo_names_long, 'kf');
M_.endo_names = char(M_.endo_names, 'qf');
M_.endo_names_tex = char(M_.endo_names_tex, 'qf');
M_.endo_names_long = char(M_.endo_names_long, 'qf');
M_.endo_names = char(M_.endo_names, 'if');
M_.endo_names_tex = char(M_.endo_names_tex, 'if');
M_.endo_names_long = char(M_.endo_names_long, 'if');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf');
M_.endo_names_long = char(M_.endo_names_long, 'yf');
M_.endo_names = char(M_.endo_names, 'epsg');
M_.endo_names_tex = char(M_.endo_names_tex, 'epsg');
M_.endo_names_long = char(M_.endo_names_long, 'epsg');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
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
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_0_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_30_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_30\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_30_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_30_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_30\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_30_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_30_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_30\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_30_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_31_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_31\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_31_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_31_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_31\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_31_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_31_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_31\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_31_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_27_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_27\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_27_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_27_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_27\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_27_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_27_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_27\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_27_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_29_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_29\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_29_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_29_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_29\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_29_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_29_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_29\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_29_3');
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
M_.param_names = char(M_.param_names, 'gammab');
M_.param_names_tex = char(M_.param_names_tex, 'gammab');
M_.param_names_long = char(M_.param_names_long, 'gammab');
M_.param_names = char(M_.param_names, 'gammaf');
M_.param_names_tex = char(M_.param_names_tex, 'gammaf');
M_.param_names_long = char(M_.param_names_long, 'gammaf');
M_.param_names = char(M_.param_names, 'kappap');
M_.param_names_tex = char(M_.param_names_tex, 'kappap');
M_.param_names_long = char(M_.param_names_long, 'kappap');
M_.param_names = char(M_.param_names, 'omegap');
M_.param_names_tex = char(M_.param_names_tex, 'omegap');
M_.param_names_long = char(M_.param_names_long, 'omegap');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'thetap');
M_.param_names_tex = char(M_.param_names_tex, 'thetap');
M_.param_names_long = char(M_.param_names_long, 'thetap');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, 'gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'thetaw');
M_.param_names_tex = char(M_.param_names_tex, 'thetaw');
M_.param_names_long = char(M_.param_names_long, 'thetaw');
M_.param_names = char(M_.param_names, 'vaphi');
M_.param_names_tex = char(M_.param_names_tex, 'vaphi');
M_.param_names_long = char(M_.param_names_long, 'vaphi');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'omegaw');
M_.param_names_tex = char(M_.param_names_tex, 'omegaw');
M_.param_names_long = char(M_.param_names_long, 'omegaw');
M_.param_names = char(M_.param_names, 'kappaw');
M_.param_names_tex = char(M_.param_names_tex, 'kappaw');
M_.param_names_long = char(M_.param_names_long, 'kappaw');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'b');
M_.param_names_tex = char(M_.param_names_tex, 'b');
M_.param_names_long = char(M_.param_names_long, 'b');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'rhor');
M_.param_names_tex = char(M_.param_names_tex, 'rhor');
M_.param_names_long = char(M_.param_names_long, 'rhor');
M_.param_names = char(M_.param_names, 'gammap');
M_.param_names_tex = char(M_.param_names_tex, 'gammap');
M_.param_names_long = char(M_.param_names_long, 'gammap');
M_.param_names = char(M_.param_names, 'gammay');
M_.param_names_tex = char(M_.param_names_tex, 'gammay');
M_.param_names_long = char(M_.param_names_long, 'gammay');
M_.param_names = char(M_.param_names, 'ISS');
M_.param_names_tex = char(M_.param_names_tex, 'ISS');
M_.param_names_long = char(M_.param_names_long, 'ISS');
M_.param_names = char(M_.param_names, 'GSS');
M_.param_names_tex = char(M_.param_names_tex, 'GSS');
M_.param_names_long = char(M_.param_names_long, 'GSS');
M_.param_names = char(M_.param_names, 'lambdaSS');
M_.param_names_tex = char(M_.param_names_tex, 'lambdaSS');
M_.param_names_long = char(M_.param_names_long, 'lambdaSS');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, 'rhoa');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names_long = char(M_.param_names_long, 'rhog');
M_.param_names = char(M_.param_names, 'sigmaa');
M_.param_names_tex = char(M_.param_names_tex, 'sigmaa');
M_.param_names_long = char(M_.param_names_long, 'sigmaa');
M_.param_names = char(M_.param_names, 'sigmag');
M_.param_names_tex = char(M_.param_names_tex, 'sigmag');
M_.param_names_long = char(M_.param_names_long, 'sigmag');
M_.param_names = char(M_.param_names, 'sigmaz');
M_.param_names_tex = char(M_.param_names_tex, 'sigmaz');
M_.param_names_long = char(M_.param_names_long, 'sigmaz');
M_.param_names = char(M_.param_names, 'sigmap');
M_.param_names_tex = char(M_.param_names_tex, 'sigmap');
M_.param_names_long = char(M_.param_names_long, 'sigmap');
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 56;
M_.param_nbr = 63;
M_.orig_endo_nbr = 33;
M_.aux_vars(1).endo_index = 34;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 35;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 36;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 37;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 38;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 39;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 40;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 41;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 42;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 43;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 1;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 44;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 1;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 45;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 31;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 46;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 31;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 47;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 31;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 48;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 32;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 49;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 32;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 50;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 32;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 51;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 28;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 52;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 28;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 53;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 28;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 54;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 30;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 55;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 30;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 56;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 30;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('US_RA07_static');
erase_compiled_function('US_RA07_dynamic');
M_.lead_lag_incidence = [
 1 29 85;
 0 30 0;
 0 31 86;
 2 32 87;
 0 33 0;
 3 34 0;
 0 35 0;
 4 36 88;
 0 37 0;
 0 38 0;
 5 39 0;
 0 40 89;
 6 41 90;
 0 42 0;
 7 43 0;
 0 44 91;
 0 45 0;
 0 46 0;
 0 47 0;
 8 48 92;
 0 49 0;
 0 50 0;
 9 51 0;
 0 52 93;
 10 53 94;
 0 54 0;
 0 55 0;
 11 56 0;
 0 57 0;
 12 58 95;
 13 59 96;
 14 60 97;
 0 61 0;
 0 62 98;
 0 63 99;
 0 64 100;
 0 65 101;
 0 66 102;
 0 67 103;
 0 68 104;
 0 69 105;
 0 70 106;
 15 71 0;
 16 72 0;
 17 73 0;
 18 74 0;
 19 75 0;
 20 76 0;
 21 77 0;
 22 78 0;
 23 79 0;
 24 80 0;
 25 81 0;
 26 82 0;
 27 83 0;
 28 84 0;]';
M_.nstatic = 15;
M_.nfwrd   = 13;
M_.npred   = 19;
M_.nboth   = 9;
M_.nsfwrd   = 22;
M_.nspred   = 28;
M_.ndynamic   = 41;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(56, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(63, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 200;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 38 ) = 0.99;
omegap = M_.params( 38 );
M_.params( 46 ) = 0.07;
omegaw = M_.params( 46 );
M_.params( 42 ) = 0.15;
gamma = M_.params( 42 );
M_.params( 45 ) = 99.03;
phi = M_.params( 45 );
M_.params( 48 ) = 1.71;
sigma = M_.params( 48 );
M_.params( 45 ) = 21;
phi = M_.params( 45 );
M_.params( 50 ) = 1;
eta = M_.params( 50 );
M_.params( 39 ) = 0.99;
beta = M_.params( 39 );
M_.params( 49 ) = 0.83;
b = M_.params( 49 );
M_.params( 44 ) = 0.04;
vaphi = M_.params( 44 );
M_.params( 52 ) = 0.94;
rhor = M_.params( 52 );
M_.params( 53 ) = 1.34;
gammap = M_.params( 53 );
M_.params( 54 ) = 0.53;
gammay = M_.params( 54 );
M_.params( 40 ) = 0.83;
thetap = M_.params( 40 );
M_.params( 43 ) = 0.37;
thetaw = M_.params( 43 );
M_.params( 51 ) = 0.025;
delta = M_.params( 51 );
M_.params( 57 ) = 6;
lambdaSS = M_.params( 57 );
M_.params( 56 ) = 0.2;
GSS = M_.params( 56 );
M_.params( 58 ) = 0.94;
rhoa = M_.params( 58 );
M_.params( 59 ) = 0.89;
rhog = M_.params( 59 );
M_.params( 60 ) = 1;
sigmaa = M_.params( 60 );
M_.params( 61 ) = 4.3;
sigmag = M_.params( 61 );
M_.params( 62 ) = 0.24;
sigmaz = M_.params( 62 );
M_.params( 63 ) = 15.9;
sigmap = M_.params( 63 );
M_.params( 35 ) = M_.params(38)/(1+M_.params(38)*M_.params(39));
gammab = M_.params( 35 );
M_.params( 36 ) = M_.params(39)/(1+M_.params(38)*M_.params(39));
gammaf = M_.params( 36 );
M_.params( 37 ) = (1-M_.params(39)*M_.params(40))*(1-M_.params(40))/((1+M_.params(38)*M_.params(39))*M_.params(40));
kappap = M_.params( 37 );
M_.params( 41 ) = 0.36;
alpha = M_.params( 41 );
M_.params( 47 ) = (1-M_.params(39)*M_.params(43))*(1-M_.params(43))/(M_.params(43)*(1+M_.params(45)*(M_.params(50)-1)));
kappaw = M_.params( 47 );
M_.params( 55 ) = M_.params(51)*M_.params(41)*M_.params(57)/((M_.params(57)-1)*(1/M_.params(39)-(1-M_.params(51))));
ISS = M_.params( 55 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);  
M_.params( 34 ) = 1/M_.params(56);
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = M_.params(63)^2;
M_.Sigma_e(2, 2) = M_.params(60)^2;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = M_.params(61)^2;
save('US_RA07_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_RA07_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_RA07_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_RA07_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_RA07_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
