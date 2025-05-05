classdef Tubemdl < int32
% Enumeration class for the selecting thermoviscous cylindrical tube model.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    simple(1)
    dl_branches(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('simple')   = 'Simple Model';
        map('dl_branches') = 'Differential Branches';
    end
end
end
