valuesf = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
values1 = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
values0 = ["-0.5", "-0.3", "-0.15", "0", "0.15", "0.3", "0.5"];
figure(1)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425"+ ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            H = table2array(T(:,"H"));
            plot(t,H,'k')
            hold on
        end
    end
end
saveas(gcf, "H(t)smb0smb1smbf.png")
hold off
figure(2)
for k = 1:length(values0)
    for j = 1:length(values1)
        for i = 1:length(valuesf)
            T = readtable("data_matrix/smbt11950smbtf2300smb0"+values0(k)+ ...
                "smb1"+values1(j)+"smbf"+valuesf(i)+"sillmin415sillmax425" + ...
                "sillslope0.01hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            L = table2array(T(:,"L"));
            plot(t,L,'k')
            hold on
        end
    end
end
saveas(gcf, "L(t)smb0smb1smbf.png")
hold off
valuesh = ["0.18", "0.68", "1.18", "1.68", "2.18", "2.68", "3.18", "3.68"];
valuesl = ["2.44", "3.44", "4.44", "5.44", "6.44", "7.44", "8.44"];
valuesbx = ["-0.015", "-0.01", "-0.005", "-0.002", "-0.0015", "-0.001", "-0.0005"];
figure(3)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,'t'));
            H = table2array(T(:,"H"));
            plot(t,H,'k')
            title('t vs. H(t): H_o,L_o,b_x')
            xlabel('t')
            ylabel('H(t)')
            hold on
        end
    end
end
saveas(gcf, "H(t)hndlndbx.png")
hold off
figure(4)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin415sillmax425sillslope0.01hnd"+valuesh(k)+"lnd"+valuesl(j) ...
                +"bx"+valuesbx(i)+".csv");
            t = table2array(T(:,'t'));
            L = table2array(T(:,"L"));
            plot(t,L,'k')
            title('t vs. L(t): H_o,L_o,b_x')
            xlabel('t')
            ylabel('L(t)')
            hold on
        end
    end
end
saveas(gcf, "L(t)hndlndbx.png")
hold off
valuesmin = ["405", "410", "415", "420", "425"];
valuesmax = ["425", "430", "435", "440", "445"];
valuesslope =  ["-0.03", "-0.025", "-0.02", "-0.015", "-0.01", "-0.005", "0", "0.005", "0.01"];
figure(1)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            H = table2array(T(:,"H"));
            plot(t,H,'k')
            hold on
        end
    end
end
saveas(gcf, "H(t)sillminsillmaxsillslope.png")
hold off
figure(2)
for k = 1:length(valuesmin)
    for j = 1:length(valuesmax)
        for i = 1:length(valuesslope)
            T = readtable("data_matrix/smbt11950smbtf2300smb00.3smb10.15smbf0" + ...
                "sillmin"+valuesmin(k)+"sillmax"+valuesmax(j)+"sillslope" ...
                +valuesslope(i)+"hnd2.18lnd4.44bx-0.001.csv");
            t = table2array(T(:,'t'));
            L = table2array(T(:,"L"));
            plot(t,L,'k')
            hold on
        end
    end
end
saveas(gcf, "L(t)sillminsillmaxsillslope.png")
hold off
