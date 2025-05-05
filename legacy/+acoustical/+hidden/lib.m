function lib( libInfo )
% Customize library

% Copyright 2022 Stephen C. Thompson
% Distributed under the 3-Clause BSD License
% See LicenseInfo.pdf file in this distribution

libInfo.Name = 'hidden';
libInfo.Annotation = sprintf('Components in this directory are hidden and', ...
        'not intended for general use. They are used by other components',...
        ' in the Acoustical library.');
libInfo.ShowName = true;

end
