% VI-CRT SIM DATA TO WORKSPACE

% sim time
sim_time = stwa.time;

%STEERING WHEEL ANGLE
swa_crt = stwa.Data;

%Lateral forces ---> FRONT
Fyf = Fy_front.Data;
Fyf_l = Fy_front_left.Data;
Fyf_r = Fy_front_right.Data;

%Lateral forces ---> REAR
Fyr = Fy_rear.Data;
Fyr_l = Fy_rear_left.Data;
Fyr_r = Fy_rear_right.Data;

%Tire slip ---> FRONT LATERAL
tire_lat_slip_front_left = tire_lat_slip_front_left.Data;
tire_lat_slip_front_right = tire_lat_slip_front_right.Data;

%Tire slip ---> REAR LATERAL
tire_lat_slip_rear_left = tire_lat_slip_rear_left.Data;
tire_lat_slip_rear_right = tire_lat_slip_rear_right.Data;

%Tire slip ---> FRONT LONG
tire_long_slip_front_left = tire_long_slip_front_left.Data;
tire_long_slip_front_right = tire_long_slip_front_right.Data;

%Tire slip ---> REAR LONG
tire_long_slip_rear_left = tire_long_slip_rear_left.Data;
tire_long_slip_rear_right = tire_long_slip_rear_right.Data;

%VEHICLE STATES
beta_CRT = veh_slipangle.Data;
yawr = yawr.Data;
yawr_desired = yawr_des.Data;
yawr_error = yawr_error.Data;
roll_CRT = rollangle.Data;

% Z MOMENT
MESC = mesc.Data;

%PERFORMANCE DATA  
speed_x = speed_x.Data;
speed_y = speed_y.Data;
trajectory_x = trajectory_x.Data;
trajectory_y = trajectory_y.Data;
acc_lat = acc_lat.Data;
acc_long = acc_long.Data;
mstr_cyl_psr = mstr_cyl_psr.Data;

%ACTIVATION ESC
ESCactv = ESC_actv.Data; 

vars = {'stwa','ESC_actv','rollangle','mesc',...
    'Fy_front','Fy_front_left','Fy_front_right',...
    'Fy_rear','Fy_rear_left','Fy_rear_right',...
    'yawr_des','veh_slipangle'};

clear(vars{:});

