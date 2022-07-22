T = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/projection_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases/truth_simulation/smbt11950smbtf2300smb00.35smb10.15smbf0.0sillmin415sillmax425sillslope0.008hnd2.3lnd4.6bx-0.001.csv");
OBS = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/obs_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
t2=table2array(OBS(:,"t"));
disp(OBS)
figure(1)
plot(t0,table2array(T(:,"L")),"r","LineWidth",3,"DisplayName","L(t): Truth")
hold on
plot(t0,table2array(T2(:,"L")),"b","LineWidth",3,"DisplayName","L(t): Different Initial Conditions")
xlim([0 2300])
xlabel("t")
ylim([3.5 6.5])
ylabel("L(t)")
legend("Location","northwest")
title("t vs. L(t)")
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/L(t)truth_projection.png")
plot(t2,table2array(OBS(:,"L")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","L(t): Observations")
legend
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/L(t)truth_obs_projection.png")
hold off
figure(2)
plot(t0,table2array(T(:,"L")),"r","LineWidth",3)
title("t vs. L(t)")
hold on
plot(t0,table2array(T2(:,"L")),"b","LineWidth",3)
plot(t2,table2array(OBS(:,"L")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","L(t): Observations")
for i=1:10
    plot(t1,table2array(T(2:end,"x"+int2str(i)+"L")),"Color",[0, 0.6, 0],"LineWidth",1,"DisplayName","L(t): Ensemble")
end
xlim([0 2300])
xlabel("t")
ylim([3.5 6.5])
ylabel("L(t)")
legend("L(t): Truth","L(t): Different Initial Conditions", "L(t): Observations", "L(t): Ensemble","Location","northwest")
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/L(t)truth_and_ensemble_obs_projection.png")
plot(t0,table2array(T(:,"aL")),"k","LineWidth",3,"DisplayName","L(t): Analysis")
legend("Location","northwest")
hold off
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/L(t)truth_ensemble_and_analysis_obs_projection.png")
figure(3)
plot(t0,table2array(T(:,"L")),"r","LineWidth",3,"DisplayName","L(t): Truth")
hold on
title("t vs. L(t)")
plot(t0,table2array(T2(:,"L")),"b","LineWidth",3,"DisplayName","L(t): Differential Inital Condition")
plot(t2,table2array(OBS(:,"L")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","L(t): Observations")
xlim([0 2300])
xlabel("t")
ylim([3.5 6.5])
ylabel("L(t)")
plot(t0,table2array(T(:,"aL")),"k","LineWidth",3,"DisplayName","L(t): Analysis")
legend("Location","northwest")
hold off
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/L(t)truth_and_analysis_obs_projection.png")
disp(OBS(:,"t"))
