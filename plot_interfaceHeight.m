clc; clear; close all;
datFile = "height.dat";
datPath = dir(datFile);

data = readmatrix(fullfile(datPath.folder, datFile));
data = data(5:end, 1:9);

time = data(1:end, 1);
H1 = data(:, 2); % Assuming H1 is in the second column
H2 = data(:, 4); % Assuming H2 is in the fourth column
H3 = data(:, 6); % Assuming H3 is in the sixth column
H4 = data(:, 8); % Assuming H4 is in the eighth column

%% dimensionless args
H = 0.3;
g = 9.81;

%% plot
fig1 = figure();
scatter(time .* sqrt(g/H), H1 ./ H);
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$h/H$"), 'Interpreter', 'latex');
set(title("$H_1$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
xlim([0 14])
ylim([0 1])

saveas(fig1, 'H1.eps', 'epsc');
saveas(fig1, 'H1.svg', 'svg');
savefig(fig1, 'H1.fig');

fig2 = figure();
scatter(time .* sqrt(g/H), H2 ./ H);
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$h/H$"), 'Interpreter', 'latex');
set(title("$H_2$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
xlim([0 14])
ylim([0 1])

saveas(fig2, 'H2.eps', 'epsc');
saveas(fig2, 'H2.svg', 'svg');
savefig(fig2, 'H2.fig');

fig3 = figure();
scatter(time .* sqrt(g/H), H3 ./ H);
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$h/H$"), 'Interpreter', 'latex');
set(title("$H_3$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
xlim([0 14])
ylim([0 1])

saveas(fig3, 'H3.eps', 'epsc');
saveas(fig3, 'H3.svg', 'svg');
savefig(fig3, 'H3.fig');

fig4 = figure();
scatter(time .* sqrt(g/H), H4 ./ H);
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$h/H$"), 'Interpreter', 'latex');
set(title("$H_4$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
xlim([0 14])
ylim([0 1])

saveas(fig4, 'H4.eps', 'epsc');
saveas(fig4, 'H4.svg', 'svg');
savefig(fig4, 'H4.fig');
