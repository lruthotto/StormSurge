T = readtable("data_single_cases_analysis/smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("data_single_cases/truth_simulation/smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
OBS = readtable("data_single_cases_analysis/obs_smbt11950smbtf2300smb00.3smb10.15smbf0.0sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
t2=table2array(OBS(:,"t"));
figure(1)
plot(t0,table2array(T(:,"H")),"r","LineWidth",4,"DisplayName","H(t): Truth")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",4,"DisplayName","H(t): Different Initial Conditions")
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend
title("t vs. H(t)")
saveas(gcf, "H(t)truth.png")
plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
legend
saveas(gcf, "data_single_cases_analysis/H(t)truth_obs.png")
hold off
figure(2)
plot(t0,table2array(T(:,"H")),"r","LineWidth",4)
title("t vs. H(t)")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",4)
plot(t2,table2array(OBS(:,"H")),"b","LineStyle", "none", "Marker", "o", "MarkerEdgeColor", [0 0 0],"MarkerFaceColor", [0.9290 0.6940 0.1250], "DisplayName","H(t): Observations")
for i=1:10
    plot(t1,table2array(T(2:end,"x"+int2str(i)+"H")),"Color",[0, 0.6, 0],"LineWidth",2,"LineStyle","--","DisplayName","H(t): Ensemble")
end
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend("H(t): Truth","H(t): Different Initial Conditions", "H(t): Observations", "H(t): Ensemble")
saveas(gcf, "data_single_cases_analysis/H(t)truth_and_ensemble_obs.png")
plot(t0,table2array(T(:,"aH")),"k","LineWidth",4,"DisplayName","H(t): Analysis")
legend
hold off
saveas(gcf, "data_single_cases_analysis/H(t)truth_ensemble_and_analysis_obs.png")