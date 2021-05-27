clear;

%% plot N-parameters
est_val = readtable('results.csv', 'ReadVariableNames', false);
est_val = table2array(est_val);

a_cont = est_val(:,2); %0.1 0.9
b_cont = est_val(:,3); %0.2 0.8
a_subg = est_val(:,4); %0.35 0.65
b_subg = est_val(:,5); %w=30
a_pert = est_val(:,6); %w=40
b_pert = est_val(:,7); %w=70

%% indiff curve: U(K,L)=1


%% 0.1 0.9
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.1)).^(1/0.9),'--',...
            K,(1./(2*K.^a_cont(1))).^(1/b_cont(1)),'-+',...
                K,(1./(2*K.^a_subg(1))).^(1/b_subg(1)),'-o',...
                    K,(1./(2*K.^a_pert(1))).^(1/b_pert(1)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_1_9','-depsc');

%% 0.2 0.8
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.2)).^(1/0.8),'--',...
            K,(1./(2*K.^a_cont(2))).^(1/b_cont(2)),'-+',...
                K,(1./(2*K.^a_subg(2))).^(1/b_subg(2)),'-o',...
                    K,(1./(2*K.^a_pert(2))).^(1/b_pert(2)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_2_8','-depsc');

%% 0.35 0.65
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.35)).^(1/0.65),'--',...
            K,(1./(2*K.^a_cont(3))).^(1/b_cont(3)),'-+',...
                K,(1./(2*K.^a_subg(3))).^(1/b_subg(3)),'-o',...
                    K,(1./(2*K.^a_pert(3))).^(1/b_pert(3)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_35_65','-depsc');


%% 30
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.35)).^(1/0.65),'--',...
            K,(1./(2*K.^a_cont(4))).^(1/b_cont(4)),'-+',...
                K,(1./(2*K.^a_subg(4))).^(1/b_subg(4)),'-o',...
                    K,(1./(2*K.^a_pert(4))).^(1/b_pert(4)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_30','-depsc');


%% 40
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.35)).^(1/0.65),'--',...
            K,(1./(2*K.^a_cont(5))).^(1/b_cont(5)),'-+',...
                K,(1./(2*K.^a_subg(5))).^(1/b_subg(5)),'-o',...
                    K,(1./(2*K.^a_pert(5))).^(1/b_pert(5)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_40','-depsc');

%% 70
figure
K = 1:30;
h = plot(K,(1./(2*K.^0.35)).^(1/0.65),'-',...
            K,(1./(2*K.^a_cont(6))).^(1/b_cont(6)),'-+',...
                K,(1./(2*K.^a_subg(6))).^(1/b_subg(6)),'-o',...
                    K,(1./(2*K.^a_pert(6))).^(1/b_pert(6)),'-*');
set(h(1),'Color','k')
set(h(2),'Color','b')
set(h(3),'Color','r')
set(h(4),'Color','k')
grid on
xlabel('Capital K','interpreter','latex','FontSize', 20,'fontWeight','bold');
xlim([1 30]);
% xticks(3:3:18);
ylabel('Labor L','interpreter','latex','FontSize', 20,'fontWeight','bold');
% set(gca,'YLim',[0 0.008]);
legend('True','Cont Relaxation','Subgradient','Perturbation', 'Location','southwest');
set(gca,'FontSize',10,'fontWeight','bold');
print('indiff_curve_70','-depsc');


%% other measure
% K = 0:50;
% L = 0:50;
% y = 2 * K.^a_cont(1) .* L.^a_cont(1);
% plot3(K,L,y)
% 
% [K,L] = meshgrid(0:0.25:5);
% y = 2 * K.^a_cont(1) .* L.^a_cont(1);
% contour3(K,L,y,50)



