clc; close all; clear;

datFile = "p";
datPath = dir(datFile);

data = readmatrix(fullfile(datPath.folder, datFile));

time = data(1:end, 1);
p1 = data(:, 2);
p2 = data(:, 3);
p3 = data(:, 4);
p4 = data(:, 5);

%% dimensionless args
H = 0.3;
g = 9.81;
rho = 1000;

%% plot
fig = figure(); hold on;
scatter(time .* sqrt(g/H), p1 ./ (rho*g*H));
scatter(time .* sqrt(g/H), p2 ./ (rho*g*H));
scatter(time .* sqrt(g/H), p3 ./ (rho*g*H));
scatter(time .* sqrt(g/H), p4 ./ (rho*g*H));
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$P/(\rho g H)$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
legend("sensor 1", "sensor 2", "sensor 3", "sensor 4");
xlim([1.5, 7.1]);
ylim([-0.1, 3.1]);

saveas(fig, 'p.eps', 'epsc');
saveas(fig, 'p.svg', 'svg');
savefig(fig, 'p.fig');

% %% plot
% fig1 = figure();
% scatter(time .* sqrt(g/H), p1 ./ (rho*g*H));
% grid on;
% set(gca, 'FontSize', 16);
% set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
% set(ylabel("$h/H$"), 'Interpreter', 'latex');
% set(title("$H_1$"), 'Interpreter', 'latex');
% xaxisproperties= get(gca, 'XAxis');
% xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
% yaxisproperties= get(gca, 'YAxis');
% yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
% xlim([0 14])
% ylim([0 1])
% 
% saveas(fig1, 'p1.eps', 'epsc');
% saveas(fig1, 'p1.svg', 'svg');
% savefig(fig1, 'p1.fig');
% 
% fig2 = figure();
% scatter(time .* sqrt(g/H), p2 ./ (rho*g*H));
% grid on;
% set(gca, 'FontSize', 16);
% set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
% set(ylabel("$h/H$"), 'Interpreter', 'latex');
% set(title("$H_2$"), 'Interpreter', 'latex');
% xaxisproperties= get(gca, 'XAxis');
% xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
% yaxisproperties= get(gca, 'YAxis');
% yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
% xlim([0 14])
% ylim([0 1])
% 
% saveas(fig2, 'p2.eps', 'epsc');
% saveas(fig2, 'p2.svg', 'svg');
% savefig(fig2, 'p2.fig');
% 
% fig3 = figure();
% scatter(time .* sqrt(g/H), p3 ./ (rho*g*H));
% grid on;
% set(gca, 'FontSize', 16);
% set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
% set(ylabel("$h/H$"), 'Interpreter', 'latex');
% set(title("$H_3$"), 'Interpreter', 'latex');
% xaxisproperties= get(gca, 'XAxis');
% xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
% yaxisproperties= get(gca, 'YAxis');
% yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
% xlim([0 14])
% ylim([0 1])
% 
% saveas(fig3, 'p3.eps', 'epsc');
% saveas(fig3, 'p3.svg', 'svg');
% savefig(fig3, 'p3.fig');
% 
% fig4 = figure();
% scatter(time .* sqrt(g/H), p4 ./ (rho*g*H));
% grid on;
% set(gca, 'FontSize', 16);
% set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
% set(ylabel("$h/H$"), 'Interpreter', 'latex');
% set(title("$H_4$"), 'Interpreter', 'latex');
% xaxisproperties= get(gca, 'XAxis');
% xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
% yaxisproperties= get(gca, 'YAxis');
% yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
% xlim([0 14])
% ylim([0 1])
% 
% saveas(fig4, 'p4.eps', 'epsc');
% saveas(fig4, 'p4.svg', 'svg');
% savefig(fig4, 'p4.fig');
