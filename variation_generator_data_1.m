valuesf = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
values1 = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
values0 = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
figure(1)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix_1/smb0"+values0(k)+"smb1"+values1(j) ...
                +"smbf"+valuesf(i)+".csv");
            t = table2array(T(:,'t'));
            H = table2array(T(:,"H"));
            plot(t,H,'k')
            hold on
        end
    end
end
saveas(gcf, "H(t):smb0smb1smbf.png")
hold off
disp(n)
figure(2)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix_1/smb0"+values0(k)+"smb1"+values1(j) ...
                +"smbf"+valuesf(i)+".csv");
            t = table2array(T(:,'t'));
            L = table2array(T(:,"L"));
            plot(t,L,'k')
            hold on
        end
    end
end
saveas(gcf, "L(t):smb0smb1smbf.png")
hold off