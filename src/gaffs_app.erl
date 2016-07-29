%%% gaffs: Yet another generic Erlang hooks application
%%%
%%% Copyright (c) 2016 Led <ledest@gmail.com>
%%%
%%% gaffs is free software: you can redistribute it and/or modify it
%%% under the terms of the GNU General Public License as published by
%%% the Free Software Foundation, either version 3 of the License, or
%%% (at your option) any later version.
%%%
%%% gaffs is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%%% See the GNU General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License
%%% along with gaffs. If not, see <http://www.gnu.org/licenses/>.


%%%-------------------------------------------------------------------
%% @doc gaffs public API
%% @end
%%%-------------------------------------------------------------------

-module(gaffs_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) -> gaffs_sup:start_link().

stop(_State) -> ok.
