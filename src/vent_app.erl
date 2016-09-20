%%%-------------------------------------------------------------------
%% @doc vent public API
%% @end
%%%-------------------------------------------------------------------

-module(vent_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

-spec start(application:start_type(), term()) -> {ok, pid()}.
start(_StartType, _StartArgs) ->
    counter_histogram:start(),
    vent_sup:start_link().

-spec stop(term()) -> ok.
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
