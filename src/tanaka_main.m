%% ================================================================
%  TANAKA-STYLE SMA STRESS–STRAIN MODEL (Main Script)
% ================================================================

clear; clc; close all;

p = params();   % Load parameter struct

T = p.T_vals;

sigma_AM = 0:p.dsigma:p.sigma_max_AM;
sigma_MA = p.sigma_max_MA:-p.dsigma:0;

eps_AM = tanaka_strain(sigma_AM, T, "AM", p);
eps_MA = tanaka_strain(sigma_MA, T, "MA", p);

sigma_cycle = [sigma_AM, sigma_MA];
eps_cycle   = [eps_AM, eps_MA];

%% Plot
figure('Color','w');
plot(eps_cycle*100, sigma_cycle, 'LineWidth', 2);

xlabel('Strain (%)'); ylabel('Stress (MPa)');
title(sprintf('SMA Stress–Strain at T = %.0f K', T));

grid on; box on; set(gca,'FontSize',14);

saveas(gcf, "../figures/sample_output.png");
