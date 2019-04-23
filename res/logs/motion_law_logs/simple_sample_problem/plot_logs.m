clear all; close all;
cable_lengths = load('linear/cable_lengths.log');
motion_law_cp = load('linear/motion_law_cp.log');
motion_law = load('linear/motion_law.log');

cable_velocities = [zeros(1, size(cable_lengths, 2) - 1);diff(cable_lengths(:,2:9))./diff(cable_lengths(:,1))];
cable_accelerations = [zeros(1, size(cable_lengths, 2) - 1);diff(cable_lengths(:,2:9), 2)./diff(cable_lengths(:,1), 2); zeros(1, size(cable_lengths, 2) - 1);];

%figure
subplot(3, 1, 1)
hold on
grid on
title('cable lengths')
plot(cable_lengths(:,1), cable_lengths(:,2)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,3)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,4)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,5)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,6)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,7)./1000, 'LineWidth', 1);
plot(cable_lengths(:,1), cable_lengths(:,8)./1000, 'LineWidth', 1);
ylabel('position [m]')
xlabel('time [s]')
xlim([0, 2])
hold off

%figure
subplot(3, 1, 2)
%title('cable velocity matlab')
title('cable velocity')
hold on
grid on
plot(cable_lengths(:,1), [cable_velocities(:,2)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,3)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,4)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,5)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,6)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,7)]./1000, 'LineWidth', 1)
plot(cable_lengths(:,1), [cable_velocities(:,8)]./1000, 'LineWidth', 1)
xlabel('time [s]')
ylabel('velocity [m/s]')
xlim([0, 2])
hold off

%figure
%title('cable acceleration')
%hold on
%grid on
%plot(cable_lengths(:,1), [cable_accelerations(:,2)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,3)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,4)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,5)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,6)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,7)]./11000, 'LineWidth', 2)
%plot(cable_lengths(:,1), [cable_accelerations(:,8)]./11000, 'LineWidth', 2)
%xlabel('time [s]')
%ylabel('velocity [m/s^2]')
%hold off

%figure
subplot(3, 1, 3)
title('motion law')
hold on
grid on
%plot(motion_law_cp(:,1), motion_law_cp(:,2), 'LineWidth', 2)
%plot(motion_law_cp(:,1), motion_law_cp(:,2), 'b*')
plot(motion_law(:,1), motion_law(:,2), 'LineWidth', 2)
ylabel('normalised time [dimensionless]')
xlabel('time [s]')
%axis equal
xlim([0, 2])
hold off
