function rho1 = ptrace(rho,sel)
% FSERIES/PTRACE Calculate partial trace of a state vector or density matrix
% rho1 = ptrace(state,sel) returns a density matrix, sel is a selection vector specifying
%                          the indicies of the spaces which remain after computation of trace

%% version 0.15 20-Aug-2002
%
%    Copyright (C) 1996-2002  Sze M. Tan
%
%    This program is free software; you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation; either version 2 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program; if not, write to the Free Software
%    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
%
%    Address: Physics Department, The University of Auckland, New Zealand
%    Email: s.tan@auckland.ac.nz

%   Revision history:
%    9-Jan-99   S.M. Tan   Implemented for Matlab 5
rho1 = fseries(ptrace(qo(struct(rho.qobase)),sel),rho.ftype,rho.fparam);
