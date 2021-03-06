
% plant_dt = 0.002;
% plant_sample_time = plant_dt * 1e3;

%% load configuration
wmm = load('wmmgrid_2019.mat');
load('plant_config.mat');

%% init specific plant model
run('plant_model_init.m');