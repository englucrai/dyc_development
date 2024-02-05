%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SWA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,swa_crt,"-g","LineWidth",1.5);
hold on 
plot (time,swa,"--m","LineWidth",1.5);
hold off
legend("VI-CRT Data","Vehicle Data");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("SWA (deg)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_swa.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_swa.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SLIP ANGLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,beta_CRT,"-g","LineWidth",1.5);
hold on
plot(time,beta,"--m","LineWidth",1.5);
hold off
legend("VI-CRT Data","Vehicle Data","Location","best");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("Side-Slip Angle (deg)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_beta.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_beta.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YAW RATE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,yawr,"-g","LineWidth",1.5);
hold on
plot(sim_time+t_correl,yawr_desired,"--k","LineWidth",1.5);
plot(time,-r,"--m","LineWidth",1.5);
hold off
legend("VI-CRT Data","Yaw Rate Target VI -CRT","Vehicle Data","Location","best");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("Yaw Rate (deg/s)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_yaw.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_yaw.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ROLL ANGLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,roll_CRT,"-g","LineWidth",1.5);
hold on
plot(time,phi,"--m","LineWidth",1.5);
hold off
legend("VI-CRT Data","Vehicle Data","Location","best");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("Roll Angle (deg)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_roll.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_roll.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ESC ACTIVE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,ESCactv,"-g","LineWidth",1.5);
hold on
plot(time,ESC,"--m","LineWidth",1.5);
hold off
legend("VI-CRT Data","Vehicle Data","Location","best");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("ESC ACTIVE");
txt = {'ESC CRT ACTV:',time_esc_actv_sim + "s"};
text(0.2,0.3,txt)
txt = {'ESC ACTV:',time_esc_actv + "s"};
text(0.2,0.2,txt)
txt = {'Delta:',diff_actv_esc + "s"};
text(0.2,0.1,txt)
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_actv.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_actv.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MESC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,MESC,"-g","LineWidth",1.5);
legend("VI-CRT Data","Location","Best");
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("M_{ESC} (Nm)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',10);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_mesc.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_mesc.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BRAKE PRESSURES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Position', [10 10 900 600])

subplot(2,2,1)
plot(time,pbfl,"LineWidth",1.5,"Color","m","LineStyle","--");
grid
title("Front Left");
xlabel("Time (s)");
ylabel("Pressure (bar)");
xlim([0 max(time)]);
axis fill

subplot(2,2,2)
plot(time,pbfr,"LineWidth",1.5,"Color","m","LineStyle","--");
grid
title("Front Right");
xlabel("Time (s)");
ylabel("Pressure (bar)");
xlim([0 max(time)]);
axis fill

subplot(2,2,3)
plot(time,pbrl,"LineWidth",1.5,"Color","m","LineStyle","--");
grid
title("Rear Left");
xlabel("Time (s)");
ylabel("Pressure (bar)");
xlim([0 max(time)]);
axis fill

subplot(2,2,4)
plot(time,pbrr,"LineWidth",1.5,"Color","m","LineStyle","--");
grid
title("Rear Right");
xlabel("Time (s)");
ylabel("Pressure (bar)");
xlim([0 max(time)]);
axis fill
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',12);
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_pb.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_pb.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LONGITUDINAL SPEED
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure 
plot(sim_time+t_correl,speed_x,"-g","LineWidth",1.5);
hold on
plot(time,u,"LineWidth",1.5,"Color","m","LineStyle","--");
hold off
grid
xlim([0 max(time)]);
xlabel("Time (s)");
ylabel("Longitudinal velocity (km/h)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',12);
legend("VI-CRT Data","Vehicle Data","Location","best");
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_u.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_u.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIDE SLIP x FY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(rad2deg(abs(tire_lat_slip_front_left)),abs(Fyf_l),"-g","LineWidth",1.5);
grid
xlabel("Tyre Lateral Slip (deg)");
ylabel("Lateral Force (N)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',12);
legend("VI-CRT Data","Location","best");
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_fyslip.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_fyslip.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LAT ACC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,acc_lat,"-g","LineWidth",1.5);
hold on
plot(time,ay,"--m","LineWidth",1.5)
grid
xlim([0 max(time)]);
xlabel("Time(s)");
ylabel("Lateral Acceleration (m/s²)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',12);
legend("VI-CRT Data","Vehicle Data","Location","best");
hold off
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_ay.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_ay.fig');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LONG ACC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
plot(sim_time+t_correl,acc_long,"-g","LineWidth",1.5);
hold on
plot(time,ax,"--m","LineWidth",1.5)
grid
xlim([0 max(time)]);
xlabel("Time(s)");
ylabel("Longitudinal Acceleration (m/s²)");
set (findall(gcf,'-property','FontSize'),'FontName', 'Impact', 'Fontsize',12);
legend("VI-CRT Data","Vehicle Data","Location","best");
hold off
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_ax.png');
saveas(gcf,'C:\Users\lucas\Desktop\PPMEC_2023\RESULTS\2261_ax.fig');