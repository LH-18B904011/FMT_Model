% %% init path
% filepath = which(mfilename);
% filefolder = fileparts(filepath);
% addpath(genpath(filefolder));

%% load configuration
load('control_config.mat');

%% Constant Variable (for internal use)
CONTROL_CONST.dt = 0.004;

%% Paramaters
CONTROL_PARAM_VALUE.VEL_XY_P = single(0.9);
CONTROL_PARAM_VALUE.VEL_XY_I = single(0.09);
CONTROL_PARAM_VALUE.VEL_XY_D = single(0.01);
% CONTROL_PARAM_VALUE.VEL_XY_P = single(1.0);
% CONTROL_PARAM_VALUE.VEL_XY_I = single(0.05);
% CONTROL_PARAM_VALUE.VEL_XY_D = single(0.02);
CONTROL_PARAM_VALUE.VEL_Z_P = single(0.5);
CONTROL_PARAM_VALUE.VEL_Z_I = single(0.2);
CONTROL_PARAM_VALUE.VEL_Z_D = single(0.01);
CONTROL_PARAM_VALUE.VEL_XY_I_MIN = single(-1);
CONTROL_PARAM_VALUE.VEL_XY_I_MAX = single(1);
CONTROL_PARAM_VALUE.VEL_XY_D_MIN = single(-1);
CONTROL_PARAM_VALUE.VEL_XY_D_MAX = single(1);
CONTROL_PARAM_VALUE.VEL_Z_I_MIN = single(-0.15);
CONTROL_PARAM_VALUE.VEL_Z_I_MAX = single(0.15);
CONTROL_PARAM_VALUE.VEL_Z_D_MIN = single(-0.1);
CONTROL_PARAM_VALUE.VEL_Z_D_MAX = single(0.1);
CONTROL_PARAM_VALUE.ROLL_P = single(3);
CONTROL_PARAM_VALUE.PITCH_P = single(3);
% CONTROL_PARAM_VALUE.ROLL_P = single(5.73);
% CONTROL_PARAM_VALUE.PITCH_P = single(5.73);
CONTROL_PARAM_VALUE.ROLL_PITCH_CMD_LIM = single(pi/6);

CONTROL_PARAM_VALUE.ROLL_RATE_P = single(0.075);
CONTROL_PARAM_VALUE.PITCH_RATE_P = single(0.075);
CONTROL_PARAM_VALUE.YAW_RATE_P = single(0.2);
CONTROL_PARAM_VALUE.ROLL_RATE_I = single(0.1);
CONTROL_PARAM_VALUE.PITCH_RATE_I = single(0.1);
CONTROL_PARAM_VALUE.YAW_RATE_I = single(0.1);
CONTROL_PARAM_VALUE.ROLL_RATE_D = single(0.001);
CONTROL_PARAM_VALUE.PITCH_RATE_D = single(0.001);
CONTROL_PARAM_VALUE.YAW_RATE_D = single(0.001);
CONTROL_PARAM_VALUE.RATE_I_MIN = single(-0.1);
CONTROL_PARAM_VALUE.RATE_I_MAX = single(0.1);
CONTROL_PARAM_VALUE.RATE_D_MIN = single(-0.1);
CONTROL_PARAM_VALUE.RATE_D_MAX = single(0.1);
CONTROL_PARAM_VALUE.P_Q_CMD_LIM = single(pi/2);
CONTROL_PARAM_VALUE.R_CMD_LIM = single(pi);

CONTROL_PARAM = Simulink.Parameter(CONTROL_PARAM_VALUE);
CONTROL_PARAM.CoderInfo.StorageClass = 'ExportedGlobal';

%% Exported Value
CONTROL_EXPORT_VALUE.period = uint32(CONTROL_CONST.dt*1e3); 

CONTROL_EXPORT = Simulink.Parameter(CONTROL_EXPORT_VALUE);
CONTROL_EXPORT.CoderInfo.StorageClass = 'ExportedGlobal';
