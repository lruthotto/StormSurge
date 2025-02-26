T = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/sea_level_rise_projections/w50.0km_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
yyaxis left
plot(table2array(T(:,"t")),table2array(T(:,"sea_level_cumulative")), "LineWidth",2)
ylabel("Sea Level Rise (mm)","FontSize",12)
yyaxis right 
plot(table2array(T(:,"t")),table2array(T(:,"V_sum")), "LineWidth",2,"LineStyle","--")
ylabel("Cumulative Volumne (km^3)","FontSize",12)
legend("Sea Level Rise", "Cumulative Volume","Location","northwest")
title("Cumulative Volume and Sea Level Rise over Time")
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/sea_level_rise_projections/w50.0_projection.png")