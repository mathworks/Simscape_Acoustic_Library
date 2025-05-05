classdef Nmount < int32
% Enumeration class for the selecting number of speaker mounting holes.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    one(1)
    two(2)
    three(3)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('one')   = 'One';
        map('two')   = 'Two';
        map('three') = 'Three';
    end
end
end
