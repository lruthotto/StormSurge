T = readtable("data_matrix_10_analysis/smbt11950smbtf2300smb00.324smb10.162smbf-0.015sillmin415sillmax425sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
t0 = table2array(T(:,"t"));
t1=table2array(T(2:end,"t"));
figure(1)
plot(t0,table2array(T(:,"L")),"r","LineWidth",4,"DisplayName","L(t): Truth")
xlim([0 2300])
xlabel("t")
ylim([4.5 6.5])
ylabel("L(t)")
legend("Location","northwest")
title("t vs. L(t)")
saveas(gcf, "L(t)truth.png")
figure(2)
plot(t0,table2array(T(:,"L")),"r","LineWidth",4)
title("t vs. L(t)")
hold on
for i=1:10
    plot(t1,table2array(T(2:end,"x"+int2str(i)+"L")),"Color",[0, 0.6, 0],"LineWidth",2,"LineStyle","--","DisplayName","L(t): Ensemble")
end
xlim([0 2300])
xlabel("t")
ylim([4.5 6.5])
ylabel("L(t)")
legend("L(t): Truth","L(t): Ensemble","Location","northwest")
saveas(gcf, "L(t)truth_and_ensemble.png")
plot(t0,table2array(T(:,"aL")),"k","LineWidth",4,"DisplayName","L(t): Analysis")
legend("Location","northwest")
hold off
saveas(gcf, "L(t)truth_ensemble_and_analysis.png")