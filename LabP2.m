z_test = [-4, -2, 0.5, 1, 4];
N_max = 50; 
N = 1:N_max;

for i = 1:length(z_test)
    z = z_test(i);
    partial_sums = zeros(1, N_max);
    current_sum = 0;
    for n = 1:N_max
        term = ((3*n*z) / (5*n + 1))^n;
        current_sum = current_sum + term;
        partial_sums(n) = current_sum;
    end

    sgtitle('Convergence Analysis for Series with Finite Radius');
    subplot(2, 3, i);
    plot(N, partial_sums, 'LineWidth', 2);
    title(['z = ', num2str(z)]);
    xlabel('N'); ylabel('Partial Sum');
    grid on;
end