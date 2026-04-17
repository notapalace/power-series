z_values = 5; 
N_max = 50;
N = 1:N_max;

figure; hold on;
for z = z_values
    partial_sums = zeros(1, N_max);ss
    current_sum = 0;
    for n = 1:N_max
        term = (z^n) / factorial(n);
        current_sum = current_sum + term;
        partial_sums(n) = current_sum;
    end
    plot(N, partial_sums, 'DisplayName', ['z = ', num2str(z)], 'LineWidth', 1);
end

xlabel('N (Number of Terms)'); 
ylabel('Partial Sum');
ylim([-20, 160]);
xlim([0, 25]);
axis([0 50 -10 150]);
title('Series that Converges for Value of Z');
legend show; grid on;
hold off;