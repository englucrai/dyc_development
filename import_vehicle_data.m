%function = import_vehicledata(time,swa,throttle,brake,u,ax,ay,beta1,...
%    r,phi,ESC,vwfl,vwfr,vwrl,vwrr,pbfl,pbfr,pbrl,pbrr);

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 35);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["time", "Var2", "Var3", "Var4", "swa", "Var6", "Var7", "throttle", "brake", "Var10", "Var11", "Var12", "u", "ax", "ay", "beta", "r", "phi", "Var19", "Var20", "Var21", "ESC", "Var23", "Var24", "Var25", "Var26", "Var27", "vwfl", "vwfr", "vwrl", "vwrr", "pbfl", "pbfr", "pbrl", "pbrr"];
opts.SelectedVariableNames = ["time", "swa", "throttle", "brake", "u", "ax", "ay", "beta", "r", "phi", "ESC", "vwfl", "vwfr", "vwrl", "vwrr", "pbfl", "pbfr", "pbrl", "pbrr"];
opts.VariableTypes = ["double", "string", "string", "string", "double", "string", "string", "double", "double", "string", "string", "string", "double", "double", "double", "double", "double", "double", "string", "string", "string", "double", "string", "string", "string", "string", "string", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Var2", "Var3", "Var4", "Var6", "Var7", "Var10", "Var11", "Var12", "Var19", "Var20", "Var21", "Var23", "Var24", "Var25", "Var26", "Var27"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var2", "Var3", "Var4", "Var6", "Var7", "Var10", "Var11", "Var12", "Var19", "Var20", "Var21", "Var23", "Var24", "Var25", "Var26", "Var27"], "EmptyFieldRule", "auto");

% Import the data
%tbl = readtable("C:\Users\lucas\Desktop\PPMEC_2023\2261_data\Maneuvers Data 226 T4\08 - Sine With Dwell\TO080SWD_LH_0005.csv", opts);
tbl = readtable(vehicle_data);

%% Convert to output type
time = tbl.time;
swa = tbl.swa;
throttle = tbl.throttle;
brake = tbl.brake;
u = tbl.u;
ax = tbl.ax;
ay = tbl.ay;
beta = tbl.beta;
r = tbl.r;
phi = tbl.phi;
ESC = tbl.ESC;
vwfl = tbl.vwfl;
vwfr = tbl.vwfr;
vwrl = tbl.vwrl;
vwrr = tbl.vwrr;
pbfl = tbl.pbfl;
pbfr = tbl.pbfr;
pbrl = tbl.pbrl;
pbrr = tbl.pbrr;

%% Clear temporary variables
clear opts tbl