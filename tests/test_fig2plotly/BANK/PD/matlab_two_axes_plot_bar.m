
% Create the data for the plots
TBdata = [1990 4889 16.4; 1991 5273 17.4; 1992 5382 17.4; 1993 5173 16.5;
          1994 4860 15.4; 1995 4675 14.7; 1996 4313 13.5; 1997 4059 12.5;
          1998 3855 11.7; 1999 3608 10.8; 2000 3297  9.7; 2001 3332  9.6;
          2002 3169  9.0; 2003 3227  9.0; 2004 2989  8.2; 2005 2903  7.9;
          2006 2779  7.4; 2007 2725  7.2];

years = TBdata(:,1);
cases = TBdata(:,2);
rate  = TBdata(:,3);

% Create a plot with 2 y axes using the plotyy function
% Cases are represented by a bar chart ; Infection rate is represented by an xy plot
fig = figure;
[ax, h1, h2] = plotyy(years, cases, years, rate, 'bar', 'plot');

% Change the bar colors to light gray
set(h1, 'FaceColor', [0.8, 0.8, 0.8]);

% Chnage the thickness of the line
set(h2, 'LineWidth', 2);

% Add title and x axis label
title('Tuberculosis Cases: 1991-2007');
xlabel('Years');

% Use the axis handles to set the labels of the y axes
set(get(ax(1), 'Ylabel'), 'String', 'Cases');
set(get(ax(2), 'Ylabel'), 'String', 'Infection rate in cases per thousand');

% PLOTLY 
response = fig2plotly(fig,'name','matlab_two_axes_plot_bar');
plotly_url = response.url;
