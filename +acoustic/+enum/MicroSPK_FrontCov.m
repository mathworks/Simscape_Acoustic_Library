classdef MicroSPK_FrontCov < int32
% Enumeration class for including a front cover on the microspeaker.

%   Copyright 2025 The MathWorks, Inc.

% 
enumeration
    without_front_cover(1)
    include_front_cover(2)
end

methods (Static, Hidden)
    function map = displayText()
        map = containers.Map;
        map('without_front_cover')   = 'Exclude Front Cover';
        map('include_front_cover') = 'Include Front Cover';
    end
end
end
