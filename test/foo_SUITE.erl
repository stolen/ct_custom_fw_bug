-module(foo_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").

suite() ->
    [{timetrap,{seconds,30}}].

init_per_suite(Config) ->
    Config.

end_per_suite(Config) ->
    Config.

groups() ->
    [
        {foo, [sequence], [
            foocase
        ]}
    ].

group(foo) ->
    [{timetrap, {seconds, 600}}].

all() ->
    [{group, foo}].

foocase(_) ->
    ok.
