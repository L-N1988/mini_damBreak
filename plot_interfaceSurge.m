clc; close all; clear;

datFile = "height.dat";
datPath = dir(datFile);

data = readmatrix(fullfile(datPath.folder, datFile));
data = data(3:end, 1:3);

time = data(1:end, 1);
H1 = data(:, 2); % Assuming H1 is in the second column


%% dimensionless args
H = 0.3;
g = 9.81;

%% plot
fig1 = figure();
% scatter(time .* sqrt(g/H), H1 ./ H);
scatter(time, H1);
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$x/H$"), 'Interpreter', 'latex');
% set(title("$H_1$"), 'Interpreter', 'latex');


saveas(fig1, 'waterSurge.eps', 'epsc');
saveas(fig1, 'waterSurge.svg', 'svg');
savefig(fig1, 'waterSurge.fig');