valuesh = ["0.18", "0.68", "1.18", "1.68", "2.18", "2.68", "3.18", "3.68"];
valuesl = ["2.44", "3.44", "4.44", "5.44", "6.44", "7.44", "8.44"];
valuesbx = ["-0.015", "-0.01", "-0.005", "-0.002", "-0.0015", "-0.001", "-0.0005"];
figure(1)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix_5/hnd"+valuesh(k)+"lnd"+valuesl(j) ...
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
saveas(gcf, "H(t):hndlndbx.png")
hold off
figure(2)
for k = 1:length(valuesh)
    for j = 1:length(valuesl)
        for i = 1:length(valuesbx)
            T = readtable("data_matrix_5/hnd"+valuesh(k)+"lnd"+valuesl(j) ...
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
saveas(gcf, "L(t):hndlndbx.png")
hold off