function I = run_simpsons_integration(a, b, n, f)
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    I = (h/3) * (y(1) + y(end) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)));
    figure;
    f_plot = f(linspace(a, b, 100));
    x_plot = linspace(a, b, 100);
    plot(x_plot, f_plot, 'LineWidth', 2);
    hold on;
    stem(x, y, 'filled', 'Color', 'r');
    ylabel('f(x)');
    title(sprintf('Simpsons 1/3 Rule Integration: I = %.3f', I));
    grid on;
    hold off;
end