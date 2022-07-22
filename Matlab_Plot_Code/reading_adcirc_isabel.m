T = readtable("/Users/loganknudsen/Desktop/adcirc_v55.01/work/isabel_results/w_100_km/maxele.txt");
w0 = [];
for i = 1:31435
    x = table2array(T(i,2));
    if x == -9.9999000000E+004
        continue
    else
        w0(end+1) = x;
    end
end