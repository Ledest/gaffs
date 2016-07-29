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
%% @doc gaffs top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(gaffs_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() -> supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

init([]) -> {ok, {{one_for_all, 0, 1}, [{gaffs, {gaffs, start_link, []}, permanent, 5000, worker, [gaffs]}]}}.
