T = readtable("data_single_cases_analysis/sea_level_rise_projections/w5.0km_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
figure(1)
plot(t0,table2array(T(:,"sum"))/(1e9),"b","LineWidth",4)
title("t vs. Cumulative Volume")
xlim([2020 2300])
xticks(linspace(2020,2300,8))
xlabel("Time (years)")
ylim([0 3000])
ylabel("Cumulative Volume (km^3)")
%saveas(gcf, "data_single_cases_analysis/sea_level_rise_projections/w100.0km_volume_projection.png")
figure(2)
plot(t0,table2array(T(:,"sea_level_cumulative")),"b","LineWidth",4)
title("t vs. Sea Level Rise")
xlim([2020 2300])
xticks(linspace(2020,2300,8))
xlabel("Time (years)")
ylim([0 0.5])
yticks(linspace(0,0.5,6))
ylabel("Sea Level Rise(mm)")
saveas(gcf, "data_single_cases_analysis/sea_level_rise_projections/w5.0km_sea_level_projection.png")


