T = readtable("data_matrix_10_analysis/smbt11950smbtf2300smb00.324smb10.162smbf-0.015sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
T2 = readtable("data_matrix_10/smbt11950smbtf2300smb00.324smb10.162smbf-0.015sillmin415sillmax425sillslope0.01hnd2.35lnd4.6bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
figure(1)
plot(t0,table2array(T(:,"H")),"r","LineWidth",4,"DisplayName","H(t): Truth")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",4,"DisplayName","H(t): Different Initial Conditions")
hold off
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend
title("t vs. H(t)")
saveas(gcf, "H(t)truth.png")
figure(2)
plot(t0,table2array(T(:,"H")),"r","LineWidth",4)
title("t vs. H(t)")
hold on
plot(t0,table2array(T2(:,"H")),"b","LineWidth",4)
for i=1:10
    plot(t1,table2array(T(2:end,"x"+int2str(i)+"H")),"Color",[0, 0.6, 0],"LineWidth",2,"LineStyle","--","DisplayName","H(t): Ensemble")
end
xlim([0 2300])
xlabel("t")
ylim([1.5 2.5])
ylabel("H(t)")
legend("H(t): Truth","H(t): Different Initial Conditions", "H(t): Ensemble")
saveas(gcf, "H(t)truth_and_ensemble.png")
plot(t0,table2array(T(:,"aH")),"k","LineWidth",4,"DisplayName","H(t): Analysis")
legend
hold off
saveas(gcf, "H(t)truth_ensemble_and_analysis.png")