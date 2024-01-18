    function dz = f(t,z)
% E=z(1), S=z(2), I=z(3), P=z(4), ES=z(5), EI=z(6)

k1f = 2.3e6;
k1b = 0.30;
kcat = 4;
koff = 2.2e-5;
kon = 24000;

dz=zeros(6,1);
 
dz(1) = -k1f*z(1)*z(2)+k1b*z(5)+kcat*z(5);
dz(2) = -k1f*z(1)*z(2)+k1b*z(5);
dz(3) = -kon*z(5)*z(3)+koff*z(6);
dz(4) = kcat*z(5);
dz(5) = k1f*z(1)*z(2)-k1b*z(5)-kcat*z(5)-kon*z(5)*z(3)+koff*z(6);
dz(6) = kon*z(5)*z(3)-koff*z(6);
end