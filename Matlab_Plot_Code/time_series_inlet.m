node = 57;
T0 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_0_km/fort63.txt");
data0 = table2array(T0(find(table2array(T0(:,"Var1"))==node),"Var2"));
plot(data0,"LineWidth",2)
hold on 
T1 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_5_km/fort63.txt");
data1 = table2array(T1(find(table2array(T1(:,"Var1"))==node),"Var2"));
plot(data1,"LineWidth",2)
T2 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_25_km/fort63.txt");
data2 = table2array(T2(find(table2array(T2(:,"Var1"))==node),"Var2"));
plot(data2,"LineWidth",2)
T3 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_50_km/fort63.txt");
data3 = table2array(T3(find(table2array(T3(:,"Var1"))==node),"Var2"));
plot(data3,"LineWidth",2)
T4 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_75_km/fort63.txt");
data4 = table2array(T4(find(table2array(T4(:,"Var1"))==node),"Var2"));
plot(data4,"LineWidth",2)
T5 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_100_km/fort63.txt");
data5 = table2array(T5(find(table2array(T5(:,"Var1"))==node),"Var2"));
plot(data5,"LineWidth",2)
xticks(0:100:800)
xticklabels(string((0:100:800)*5.23968))
xlim([0 824+1])
ylim([min(data0)-0.1 max(data5)+0.2])
title("Storm Surge Height v. Time for Idealized Inlet")
xlabel("Time (1\times10^2 s)")
ylabel("Storm Surge (m)")
legend("0 km","5 km","25 km","50 km","75 km","100 km","Location","northwest")
hold off
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/Manuscript_Plots/ADCIRC_plots/inlet_time_series.png")
