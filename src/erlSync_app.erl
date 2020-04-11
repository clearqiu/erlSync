%%%-------------------------------------------------------------------
%% @doc erlSync public API
%% @end
%%%-------------------------------------------------------------------

-module(erlSync_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
   erlSync_sup:start_link().

stop(_State) ->
   ok.

%% internal functions