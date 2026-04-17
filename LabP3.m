c = 0;
R = 5/3; 

theta = linspace(0, 2*pi, 100);
x_circle = c + R * cos(theta);
y_circle = R * sin(theta);

figure; hold on;
plot(x_circle, y_circle, 'r--', 'DisplayName', 'Radius of Convergence');

z_test = [-4, -2, 0.5, 1, 4];
for z = z_test
  
    if abs(z - c) < R
        status = '(Inside - Convergent)';
        color = 'r.';
    elseif abs(z - c) == R
        status = '(Boundary)';
        color = 'b.';
    else
        status = '(Outside - Divergent)';
        color = 'g.';
    end
    plot(z, 0, color, 'MarkerSize', 10, 'DisplayName', [num2str(z), ' ', status]);
end


axis equal; grid on;
xlabel('Real'); ylabel('Imaginary');
title('Visualization of Radius of Convergence');
legend('Location', 'northeastoutside');
hold off;