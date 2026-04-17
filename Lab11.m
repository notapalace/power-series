z_values = [-2, -1, 1, 2];
N_max = 50;
N = 1:N_max;

figure; hold on;
for z = z_values
    partial_sums = zeros(1, N_max);
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
ylim([-5, 10]);
xlim([0, 50]);
axis([1 5 -5 10]);
title('Series that Converges for All Values of z');
legend show; grid on;
hold off;