function [a_out, b_out] = tv_foster_coefs(N)
%tv_foster_coefs(N) Coefficients for thermoviscous cylinder of order N

%   Copyright 2025 The MathWorks, Inc.

load('acoustical\t_lines\SupplementalPub.mat','a','b');

a_out = a(N).val;
b_out = b(N).val;

end
