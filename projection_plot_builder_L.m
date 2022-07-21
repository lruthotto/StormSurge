T = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/projection_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases/truth_simulation/smbt11950smbtf2300smb00.35smb10.15smbf0.0sillmin415sillmax425sillslope0.001hnd2.3lnd4.6bx-0.001.csv");
OBS = readtable("/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/obs_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
t2=table2array(OBS(:,"t"));
disp(OBS)
figure(1)
plot(t0,table2array(T(:,"H")),"r","LineWidth",3,"DisplayName","H(t): Truth")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",3,"DisplayName","H(t): Different Initial Conditions")
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend
title("t vs. H(t)")
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/H(t)truth_projection.png")
plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
legend
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/H(t)truth_obs_projection.png")
hold off
figure(2)
plot(t0,table2array(T(:,"H")),"r","LineWidth",3)
title("t vs. H(t)")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",3)
plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
for i=1:10
    plot(t1,table2array(T(2:end,"x"+int2str(i)+"H")),"Color",[0, 0.6, 0],"LineWidth",1,"DisplayName","H(t): Ensemble")
end
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend("H(t): Truth","H(t): Different Initial Conditions", "H(t): Observations", "H(t): Ensemble")
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/H(t)truth_and_ensemble_obs_projection.png")
plot(t0,table2array(T(:,"aH")),"k","LineWidth",3,"DisplayName","H(t): Analysis")
legend
hold off
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/H(t)truth_ensemble_and_analysis_obs_projection.png")
figure(3)
plot(t0,table2array(T(:,"H")),"r","LineWidth",3,"DisplayName","H(t): Truth")
hold on
title("t vs. H(t)")
plot(t0,table2array(T2(:,"H")),"b","LineWidth",3,"DisplayName","H(t): Differential Inital Condition")
plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
plot(t0,table2array(T(:,"aH")),"k","LineWidth",3,"DisplayName","H(t): Analysis")
legend
hold off
saveas(gcf, "/Users/loganknudsen/Documents/GitHub/StormSurge/Experiment_Data/data_single_cases_analysis/projections/H(t)truth_and_analysis_obs_projection.png")
disp(OBS(:,"t"))
