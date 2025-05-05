classdef R1 < int32
% Enumeration class for including R1 in the IEC60318-4 coupler model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    withoutR1(1)
    includeR1(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('withoutR1')   = 'Exclude R1';
        map('includeR1') = 'Include R1';
    end
end
end
