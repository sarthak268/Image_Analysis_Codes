function out=gz(pz,k)
    out = 0;
    l = 3;
    for i=1:k
        out = out + l*pz(i);
    end
end