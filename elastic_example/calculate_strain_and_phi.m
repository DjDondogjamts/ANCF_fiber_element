x = [];
phi= [];
strain_x = [];

for i = 1:params.ne
    istart = 4*i -3;
    iend = 4*i+4;
    eele = e(istart:iend, 1);
    L = params.x(i);
    for j = 1:2001
        x = [x; (j-1)*L/2000 + (i-1)*L];
        phi = [phi; curvature(eele, (j-1)*L/2000, L)];
        strain_x = [strain_x; axial_strain(eele, (j-1)*L/2000, L)];
    end
end
    