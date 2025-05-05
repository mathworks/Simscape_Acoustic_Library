classdef R5 < int32
% Enumeration class for including R5 in the IEC60318-4 coupler model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    withoutR5(1)
    includeR5(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('withoutR5')   = 'Exclude R5';
        map('includeR5') = 'Include R5';
    end
end
end
