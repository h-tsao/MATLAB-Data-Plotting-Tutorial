%% MatLab Plotting Demostration 

% Hsiu Tsao

%% Input
clear %clears all of the data in the workspace to the right
load boston_data.txt %loads a new excel data set with the name.txt

b = boston_data; %sets the data set as a variable 

time = b(:,1); %set a variable for time by using the data's first column
windspeed = b(:,2); %set a variable for windspeed by using the data's second column
tair = b(:,3); %set a variable for air temperature by using the data's third column
td = b(:,4); %set a variable for dew point by using the data's fourth column
pressure = b(:,5); %set a variable for air pressure by using the data's fifth column 

%% Plot Data
figure %figure is used to create a window to place the graphs

subplot (2,1,1) %creates a new subplot with at the top of the window
plot(time,tair,'k') %plot air temperature over time and color the line black 
hold on %keep the graph and data where it is 
plot(time,td,'b--') %plot dew point over time and color the dashes blue
xlabel('Time (hours)') %label the x axis 
ylabel('Air Temperature and Dew Point (F)') %label the y axis
title('\bfBoston Weather Data') %label the title
legend('Air Temperature (F)','Dew Point (F)','Location', 'SouthEast') 
%create a legend and add the labels of the lines based on which are first
%inputed and specify the location of the legend 

subplot(2,1,2) %creates a new subplot at the bottom of the window
plot(time,pressure,'k') %plot pressure over time and color the line black
xlabel('Time (hours)') %label the x axis
ylabel('Pressure (millibars)') %label the y axis 