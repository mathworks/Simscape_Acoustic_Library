classdef R3 < int32
% Enumeration class for including R3 in the IEC60318-4 coupler model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    withoutR3(1)
    includeR3(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('withoutR3')   = 'Exclude R3';
        map('includeR3') = 'Include R3';
    end
end
end
