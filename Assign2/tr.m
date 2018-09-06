function out = tr(pr,k)
    l = 3;
    out = 0;
    for i=1:k
        out = out + l*(pr(i));
    end
end