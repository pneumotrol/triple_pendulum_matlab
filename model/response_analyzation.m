% analyze and compare simulation data from different software programs.
close all;
clear;
clc;

% cart, pendulum1, pendulum2, pendulum3
dim = 4;
header = ["cart", "pendulum 1", "pendulum 2", "pendulum 3"];

%% read data (Simulink)
load("data/simulink_out.mat");

sim_time = position.Time;
sim_position = position.Data;

%% read data (ROS2)
t = readcell("data/rosout.csv");

ros2_time = cell2mat(t(:,1)) + cell2mat(t(:,2)) / 1e9;
ros2_position = cell2mat(t(:,8:8+dim-1));
ros2_velocity = cell2mat(t(:,12:12+dim-1));
ros2_effort = cell2mat(t(:,16:16+dim-1));

% rad to deg
ros2_position(:,2:end) = ros2_position(:,2:end) * (180 / pi);

% remove time shift
index = find(ischange(ros2_position(:,2)));
ros2_time = ros2_time - ros2_time(index(1));

time_shift = 0.044;
ros2_time = ros2_time + time_shift;

%% plotting
fig = figure('Position', [50 100 600 800]);

% cart
subplot(dim,1,1); hold on;
plot(sim_time, sim_position(:,1));
plot(ros2_time, ros2_position(:,1));
xlabel("time (s)");
ylabel("position (m)");
xlim([0, 30]);
ylim([-1, 1]);
ax = gca();
ax.FontSize = 10;
title(ax, header(1));
legend(["simulink", "ros2"]);

% pendulum
for i = 2:dim
    subplot(dim,1,i); hold on;
    plot(sim_time, sim_position(:,i));
    plot(ros2_time, ros2_position(:,i));
    xlabel("time (s)");
    ylabel("angle (deg)");
    xlim([0, 30]);
    ax = gca();
    ax.FontSize = 10;
    title(ax, header(i));
    legend(["simulink", "ros2"]);
end
