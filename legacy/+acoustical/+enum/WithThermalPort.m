classdef WithThermalPort < int32
% Enumeration class for the including Thermal Port.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    noPort(1)
    withPort(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('noPort')   = 'Without Thermal Port';
        map('withPort') = 'With Thermal Port';
    end
end
end
