classdef numPorts2 < int32
% Enumeration class for the selecting one or two ports.

% Copyright 2018-2025 The MathWorks, Inc.

enumeration
    one(1)
    two(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('one') = '1';
        map('two') = '2';
    end
end
end
