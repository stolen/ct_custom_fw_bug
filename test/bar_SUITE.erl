-module(bar_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").

suite() ->
    [{timetrap,{seconds,3}}].

init_per_suite(Config) ->
    Config.

end_per_suite(Config) ->
    Config.

groups() ->
    [
        {bar, [sequence], [
               barcase
        ]}
    ].

group(bar) ->
    [{timetrap, {seconds, 2}}].

all() ->
    [{group, bar}].

barcase(_) ->
    ok.
