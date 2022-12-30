y=newfis('slip_ratio');

y=addvar(y,'input', 'error_slip_ratio', [0 1]);

y=addmf(y,'input', 1, 'ZE', 'trapmf', [0 0 0.02 0.1]);
y=addmf(y,'input', 1, 'PS', 'trimf', [0 0.1 0.4]);
y=addmf(y,'input', 1, 'PM', 'trimf', [0.1 0.4 0.9]);
y=addmf(y,'input', 1, 'PL', 'trapmf', [0.4 0.9 1 1]);

y=addvar(y,'input', 'derivative_error_slip_ratio', [-1 1]);

y=addmf(y,'input', 2, 'NL', 'trapmf', [-1 -1 -0.8 -0.6]);
y=addmf(y,'input', 2, 'NM', 'trimf', [-0.8 -0.6 -0.3]);
y=addmf(y,'input', 2, 'NS', 'trimf', [-0.6 -0.3 0]);
y=addmf(y,'input', 2, 'ZE', 'trimf', [-0.3 0 0.3]);
y=addmf(y,'input', 2, 'PS', 'trimf', [0 0.3 0.6]);
y=addmf(y,'input', 2, 'PM', 'trimf', [0.3 0.6 0.9]);
y=addmf(y,'input', 2, 'PL', 'trapmf', [0.6 0.9 1 1]);

y=addvar(y,'output', 'torqueratio.r_fr', [-1 1]);

y=addmf(y,'output', 1, 'NVL', 'trapmf', [-1 -1 -0.9 -0.6]);
y=addmf(y,'output', 1, 'NL', 'trimf', [-0.9 -0.6 -0.3]);
y=addmf(y,'output', 1, 'NM', 'trimf', [-0.6 -0.3 -0.1]);
y=addmf(y,'output', 1, 'NS', 'trimf', [-0.3 -0.1 0]);
y=addmf(y,'output', 1, 'ZE', 'trimf', [-0.1 0 0.1]);
y=addmf(y,'output', 1, 'PS', 'trimf', [0 0.1 0.3]);
y=addmf(y,'output', 1, 'PM', 'trimf', [0.1 0.3 0.6]);
y=addmf(y,'output', 1, 'PL', 'trimf', [0.3 0.6 0.9]);
y=addmf(y,'output', 1, 'PVL', 'trapmf', [0.6 0.9 1 1]);

rulelist = [1 1 5 1 1;
1 2 5 1 1;
1 3 5 1 1;
1 4 5 1 1;
1 5 3 1 1;
1 6 2 1 1;
1 7 1 1 1;

2 1 5 1 1;
2 2 5 1 1;
2 3 5 1 1;
2 4 4 1 1;
2 5 2 1 1;
2 6 1 1 1;
2 7 1 1 1;

3 1 5 1 1;
3 2 5 1 1;
3 3 4 1 1;
3 4 3 1 1;
3 5 1 1 1;
3 6 1 1 1;
3 7 1 1 1;

4 1 5 1 1;
4 2 4 1 1;
4 3 3 1 1;
4 4 2 1 1;
4 5 1 1 1;
4 6 1 1 1;
4 7 1 1 1];

y=addrule(y,rulelist);

writefis(y,'slip_ratio');


