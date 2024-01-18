% runfirstOrderEqns
%% Initial conditions i.e. @ t=0
tic;

z1 = 0.1; % d[E]/dt 
z2 = 1.0; % d[S]/dt
z3 = 0.1; % d[I]/dt
z4 = 0; % d[P]/dt
z5 = 0; % d[ES}/dt
z6 = 0; % d[EI]/dt
IC = [z1, z2, z3, z4, z5, z6];
%% Run simulation
% Time vector: i.e closed interval [0,20]
t = [0.000000001,300];
           
% using default settings 
[T,Y] = ode15s(@theofunc,t,IC);

%% Plot function
semilogx(T,Y(:,1),'-',T,Y(:,2),'-',T,Y(:,3),'-',T,Y(:,4),'o',T,Y(:,5),'-',T,Y(:,6),'-');

xlabel('Time (sec)') 
ylabel('Concentration') 
legend('E','S','I','P','ES','ESI')

 h = findobj(gca,'Type','line');
x=get(h,'Xdata');
y=get(h,'Ydata');Y4=cell2mat(y)
toc;