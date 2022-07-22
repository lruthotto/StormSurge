T0 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_0_km/maxele.txt");
w0 = [];
for i = 1:31435
    x = table2array(T0(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w0(end+1) = x;
    end
end
T5 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_5_km/maxele.txt");
w5 = [];
for i = 1:31435
    x = table2array(T5(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w5(end+1) = x;
    end
end
T25 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_25_km/maxele.txt");
w25 = [];
for i = 1:31435
    x = table2array(T25(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w25(end+1) = x;
    end
end
T50 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_50_km/maxele.txt");
w50 = [];
for i = 1:31435
    x = table2array(T50(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w50(end+1) = x;
    end
end
T75 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_75_km/maxele.txt");
w75 = [];
for i = 1:31435
    x = table2array(T75(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w75(end+1) = x;
    end
end
T100 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_100_km/maxele.txt");
w100 = [];
for i = 1:31435
    x = table2array(T100(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w100(end+1) = x;
    end
end
l = [0,5,25,50,75,100];
w = [mean(w0),mean(w5),mean(w25),mean(w50),mean(w75),mean(w100)];
w1 = w;
figure(1)
plot(l,w,"DisplayName","Hurricane Isabel")
hold on
ylim([0 10])
xlim([0 100])
T = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_0_km/maxele.txt");
w0 = [];
for i = 1:63
    x = table2array(T(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w0(end+1) = x;
    end
end
T5 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_5_km/maxele.txt");
w5 = [];
for i = 1:63
    x = table2array(T5(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w5(end+1) = x;
    end
end
T25 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_25_km/maxele.txt");
w25 = [];
for i = 1:63
    x = table2array(T25(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w25(end+1) = x;
    end
end
T50 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_50_km/maxele.txt");
w50 = [];
for i = 1:63
    x = table2array(T50(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w50(end+1) = x;
    end
end
T75 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_75_km/maxele.txt");
w75 = [];
for i = 1:63
    x = table2array(T75(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w75(end+1) = x;
    end
end
T100 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/inlet_w_100_km/maxele.txt");
w100 = [];
for i = 1:63
    x = table2array(T100(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w100(end+1) = x;
    end
end
l = [0,5,25,50,75,100];
w = [mean(w0),mean(w5),mean(w25),mean(w50),mean(w75),mean(w100)];
plot(l,w,"DisplayName","Inlet")
xlabel("Glacier Width(km)")
ylabel("Mean Max Storm Surge")
title("Mean Max Storm Surge vs Glacier Widt")
legend
hold off
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/meanmaxstormsurge.png")