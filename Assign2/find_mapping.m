function out = find_mapping(s,gz)
    if (abs(s-gz(1)) <= abs(s-gz(2)))
        out = 1;
    else
        out = 2;
    end
            
end