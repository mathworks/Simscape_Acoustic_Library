classdef WithHardStop < int32
% Enumeration class for the including Mechanical Hard Stop.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    noStop(1)
    withStop(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('noStop')   = 'Without Mechanical Hard Stop';
        map('withStop') = 'With Mechanical Hard Stop';
    end
end
end
