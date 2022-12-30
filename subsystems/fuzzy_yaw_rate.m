y=newfis('yaw rate and slip angle');

y=addvar(y,'input', 'error_yaw_rate', [-1 1]);

y=addmf(y,'input', 1, 'NL', 'trapmf', [-1 -1 -0.9 -0.45]);
y=addmf(y,'input', 1, 'NS', 'trimf', [-0.9 -0.45 0]);
y=addmf(y,'input', 1, 'ZE', 'trimf', [-0.45 0 0.45]);
y=addmf(y,'input', 1, 'PS', 'trimf', [0 0.45 0.9]);
y=addmf(y,'input', 1, 'PL', 'trapmf', [0.45 0.9 1 1]);

y=addvar(y,'input', 'error_slip_angle', [-1 1]);

y=addmf(y,'input', 2, 'NL', 'trapmf', [-1 -1 -0.9 -0.45]);
y=addmf(y,'input', 2, 'NS', 'trimf', [-0.9 -0.45 0]);
y=addmf(y,'input', 2, 'ZE', 'trimf', [-0.45 0 0.45]);
y=addmf(y,'input', 2, 'PS', 'trimf', [0 0.45 0.9]);
y=addmf(y,'input', 2, 'PL', 'trapmf', [0.45 0.9 1 1]);

y=addvar(y,'input', 'derivative_error_yaw_rate', [-1 1]);

y=addmf(y,'input', 3, 'NEG', 'trapmf', [-1 -1 -0.6 -0.4]);
y=addmf(y,'input', 3, 'ZE', 'trapmf', [-0.6 -0.4 0.4 0.6]);
y=addmf(y,'input', 3, 'POS', 'trapmf', [0.4 0.6 1 1]);

y=addvar(y,'output','torqueratio.r_lr', [-1 1]);

y=addmf(y,'output', 1, 'NVL', 'trapmf', [-1 -1 -0.8 -0.6]);
y=addmf(y,'output', 1, 'NL', 'trimf', [-0.8 -0.6 -0.4]);
y=addmf(y,'output', 1, 'NM', 'trimf', [-0.6 -0.4 -0.2]);
y=addmf(y,'output', 1, 'NS', 'trimf', [-0.4 -0.2 0]);
y=addmf(y,'output', 1, 'ZE', 'trimf', [-0.2 0 0.2]);
y=addmf(y,'output', 1, 'PS', 'trimf', [0 0.2 0.4]);
y=addmf(y,'output', 1, 'PM', 'trimf', [0.2 0.4 0.6]);
y=addmf(y,'output', 1, 'PL', 'trapmf', [0.4 0.6 0.8]);
y=addmf(y,'output', 1, 'PVL', 'trapmf', [0.6 0.8 1 1]);

rulelist = [1 1 1 5 1 1;
1 2 1 5 1 1;
1 3 1 5 1 1;
1 4 1 6 1 1;
1 5 1 7 1 1;
2 1 1 4 1 1;
2 2 1 5 1 1;
2 3 1 5 1 1;
2 4 1 6 1 1;
2 5 1 6 1 1;
3 1 1 3 1 1;
3 2 1 4 1 1;
3 3 1 5 1 1;
3 4 1 5 1 1;
3 5 1 6 1 1;
4 1 1 1 1 1;
4 2 1 2 1 1;
4 3 1 4 1 1;
4 4 1 5 1 1;
4 5 1 5 1 1;
5 1 1 1 1 1;
5 2 1 1 1 1;
5 3 1 2 1 1;
5 4 1 4 1 1;
5 5 1 5 1 1;

1 1 2 5 1 1;
1 2 2 6 1 1;
1 3 2 7 1 1;
1 4 2 8 1 1;
1 5 2 8 1 1;
2 1 2 5 1 1;
2 2 2 5 1 1;
2 3 2 6 1 1;
2 4 2 7 1 1;
2 5 2 8 1 1;
3 1 2 3 1 1;
3 2 2 4 1 1;
3 3 2 5 1 1;
3 4 2 6 1 1;
3 5 2 7 1 1;
4 1 2 2 1 1;
4 2 2 3 1 1;
4 3 2 4 1 1;
4 4 2 5 1 1;
4 5 2 5 1 1;
5 1 2 2 1 1;
5 2 2 2 1 1;
5 3 2 3 1 1;
5 4 2 4 1 1;
5 5 2 5 1 1;

1 1 3 5 1 1;
1 2 3 6 1 1;
1 3 3 8 1 1;
1 4 3 9 1 1;
1 5 3 9 1 1;
2 1 3 5 1 1;
2 2 3 5 1 1;
2 3 3 6 1 1;
2 4 3 8 1 1;
2 5 3 9 1 1;
3 1 3 4 1 1;
3 2 3 5 1 1;
3 3 3 5 1 1;
3 4 3 6 1 1;
3 5 3 7 1 1;
4 1 3 4 1 1;
4 2 3 4 1 1;
4 3 3 5 1 1;
4 4 3 5 1 1;
4 5 3 6 1 1;
5 1 3 3 1 1;
5 2 3 4 1 1;
5 3 3 5 1 1;
5 4 3 5 1 1;
5 5 3 5 1 1];

y=addrule(y,rulelist);

writefis(y,'yaw_rate');


