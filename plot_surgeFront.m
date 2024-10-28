clc; clear; close all;

%% data post processing
folders = dir('.');
folders = folders([folders.isdir]);
folders = folders(3:end);
time = zeros(size(folders));
x_front = zeros(size(folders));

for i=1:size(folders, 1)
    time(i) = str2double(folders(i).name);
    filePath = fullfile(folders(i).folder, folders(i).name);
    data = readmatrix( ...  % [x y z alpha.water]
        fullfile(filePath, "GaugeVOF01_alpha.water.xy"), ... 
        "FileType","text");
    xs = data(:, 1);
    % ys = data(:, 2);
    % zs = data(:, 3);
    alpha = data(:, 4);
    x_front(i) = xs(1) + sum(diff(xs) .* alpha(1:end-1));
end

save("waterSurge.mat", "x_front", "time");

%% dimensionless args
H = 0.3;
g = 9.81;
B = 0.6;

%% plot
data = load('waterSurge.mat');
time = data.time;
x_front = data.x_front;

fig1 = figure();
threshold = 2.35;
dimensionless_t = time .* sqrt(g/H);
dimensionless_x = (x_front - B) ./ H;
scatter(dimensionless_t(dimensionless_t < threshold), dimensionless_x(dimensionless_t < threshold));
grid on;
set(gca, 'FontSize', 16);
set(xlabel("$t\sqrt{g/H}$"), 'Interpreter', 'latex'); 
set(ylabel("$x/H$"), 'Interpreter', 'latex');
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex';   % latex for y-axis
xlim([0, 3]);
ylim([0, 4]);

saveas(fig1, 'waterSurge.eps', 'epsc');
saveas(fig1, 'waterSurge.svg', 'svg');
savefig(fig1, 'waterSurge.fig');