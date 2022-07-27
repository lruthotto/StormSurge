T0 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/fort14.txt");
x = T0(:,"Var2");
y = T0(:,"Var3");
scatter(table2array(x),table2array(y))
T1 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_25_km/maxele.txt");
T2 = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_0_km/maxele.txt");
w1 = [];
for i = 1:31435
    x1 = table2array(T1(i,2));
    x2 = table2array(T2(i,2));
    if x1 == -9.9999000000E+004
        x1 = 0;
    end
    if x2 == -9.9999000000E+004
        x2 = 0;
    end
    w1(end+1,1) = (x1-x2)^2;
    %w1(end+1,1) = x1;
end
scatter(table2array(x),table2array(y),2, w1)
xlabel("Longitude (^o E)")
ylabel("Latitude (^o N)")
title("Square Difference of Max Storm Surge")
c = colorbar;
c.Label.String = "Square Difference";
saveas(gcf,"/Users/loganknudsen/Documents/GitHub/StormSurge/Manuscript_Plots/ADCIRC_plots/mean_square_difference.png")
