-module(foo_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").

groups() ->
    [{foo, [sequence], [foocase]}].

group(foo) ->
    [].

all() ->
    [{group, foo}].

foocase(_) ->
    ok.
