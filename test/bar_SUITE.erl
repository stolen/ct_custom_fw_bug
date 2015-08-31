-module(bar_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").

groups() ->
    [{bar, [sequence], [barcase]}].

group(bar) ->
    [].

all() ->
    [{group, bar}].

barcase(_) ->
    ok.
