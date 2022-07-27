%node = 25371;
node = 31295;
T0 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_0_km/fort63.txt");
data0 = table2array(T0(find(table2array(T0(:,"Var1"))==node),"Var2"));
figure(1)
t = 1*3.6e3:3.6e3:204*3.6e3;
plot(data0,"LineWidth",2)
hold on 
T1 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_5_km/fort63.txt");
data1 = table2array(T1(find(table2array(T1(:,"Var1"))==node),"Var2"));
plot(data1,"LineWidth",2)
T2 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_25_km/fort63.txt");
data2 = table2array(T2(find(table2array(T2(:,"Var1"))==node),"Var2"));
plot(data2,"LineWidth",2)
T3 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_50_km/fort63.txt");
data3 = table2array(T3(find(table2array(T3(:,"Var1"))==node),"Var2"));
plot(data3,"LineWidth",2)
T4 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_75_km/fort63.txt");
data4 = table2array(T4(find(table2array(T4(:,"Var1"))==node),"Var2"));
plot(data4,"LineWidth",2)
T5 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_100_km/fort63.txt");
data5 = table2array(T5(find(table2array(T5(:,"Var1"))==node),"Var2"));
plot(data5,"LineWidth",2)
xticks(0:20:200)
xticklabels(string((0:20:200)*3.6))
xlim([0 204+1])
ylim([min(data0)-0.1 max(data5)+0.2])
title("Storm Surge Height v. Time for Hurricane Isabel")
xlabel("Time (1\times10^3 s)")
ylabel("Storm Surge (m)")
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/Manuscript_Plots/ADCIRC_plots/isabel_time_series_from_0.png")
hold off
figure(2)
plot(data1(160:end),"LineWidth",2)
hold on
plot(data2(160:end),"LineWidth",2)
plot(data3(160:end),"LineWidth",2)
plot(data4(160:end),"LineWidth",2)
plot(data5(160:end),"LineWidth",2)
xlim([0 44+1])
ylim([min(data0)-0.1 max(data5)+0.2])
xticks(0:5:45)
xticklabels(string((160:5:205)*3.6))
xlabel("Time (1\times10^3 s)")
ylabel("Storm Surge (m)")
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/Manuscript_Plots/ADCIRC_plots/isabel_time_series_from_160.png")
hold off
