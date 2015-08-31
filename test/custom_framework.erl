%%% Dummy proxying CT framework
-module(custom_framework).

-export([init_tc/3, end_tc/3, end_tc/4, get_suite/2, get_all_cases/1]).
-export([report/2, warn/1, error_notification/4]).

-export([get_logopts/0, format_comment/1, get_html_wrapper/4]).

-export([error_in_suite/1, init_per_suite/1, end_per_suite/1,
	 init_per_group/2, end_per_group/2]).


-define(FRAMEWORK, ct_framework).

-define(PROXY0(Fun), Fun() -> ?FRAMEWORK:Fun()).
-define(PROXY1(Fun), Fun(A1) -> ?FRAMEWORK:Fun(A1)).
-define(PROXY2(Fun), Fun(A1, A2) -> ?FRAMEWORK:Fun(A1, A2)).
-define(PROXY3(Fun), Fun(A1, A2, A3) -> ?FRAMEWORK:Fun(A1, A2, A3)).
-define(PROXY4(Fun), Fun(A1, A2, A3, A4) -> ?FRAMEWORK:Fun(A1, A2, A3, A4)).

?PROXY3(init_tc).  ?PROXY3(end_tc).  ?PROXY4(end_tc).  ?PROXY2(get_suite).  ?PROXY1(get_all_cases).
?PROXY2(report).  ?PROXY1(warn).  ?PROXY4(error_notification).

?PROXY0(get_logopts).  ?PROXY1(format_comment).  ?PROXY4(get_html_wrapper).

?PROXY1(error_in_suite).  ?PROXY1(init_per_suite).  ?PROXY1(end_per_suite).
    ?PROXY2(init_per_group).  ?PROXY2(end_per_group).
