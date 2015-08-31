Erlang's Common Test custom framework bug demo
========

This repository contains a demo of Common Test bug.
When using a custom framework it tries to find a group from one suite in another suite:
```
$ make
ct_run -env TEST_SERVER_FRAMEWORK custom_framework -dir test -logdir log
Erlang/OTP 17 [erts-6.2] [source-aaaefb3] [64-bit] [async-threads:10] [hipe] [kernel-poll:false]



Common Test v1.8.2 starting (cwd is /home/stolen/bad_ct)

Eshell V6.2  (abort with ^G)
(ct@stolen)1> 'Note: TEST_SERVER_FRAMEWORK = custom_framework'

Common Test: Running make in test directories...

CWD set to: "/home/stolen/bad_ct/log/ct_run.ct@stolen.2015-08-31_23.35.48"

TEST INFO: 1 test(s), 2 case(s) in 2 suite(s)

Testing stolen.bad_ct: Starting test, 2 test cases

*** ERROR *** Invalid return value from ct_framework:group(bar): {'EXIT',
                                                                  {function_clause,
                                                                   [{foo_SUITE,
                                                                     group,
                                                                     [bar],
                                                                     [{file,
                                                                       "foo_SUITE.erl"},
                                                                      {line,
                                                                       21}]},
                                                                    {ct_framework,
                                                                     '-add_defaults1/4-fun-0-',
                                                                     2,
                                                                     [{file,
                                                                       "ct_framework.erl"},
                                                                      {line,
                                                                       336}]},
                                                                    {lists,
                                                                     map,2,
                                                                     [{file,
                                                                       "lists.erl"},
                                                                      {line,
                                                                       1237}]},
                                                                    {lists,
                                                                     map,2,
                                                                     [{file,
                                                                       "lists.erl"},
                                                                      {line,
                                                                       1237}]},
                                                                    {ct_framework,
                                                                     add_defaults1,
                                                                     4,
                                                                     [{file,
                                                                       "ct_framework.erl"},
                                                                      {line,
                                                                       331}]},
                                                                    {ct_framework,
                                                                     add_defaults,
                                                                     3,
                                                                     [{file,
                                                                       "ct_framework.erl"},
                                                                      {line,
                                                                       301}]},
                                                                    {ct_framework,
                                                                     init_tc1,
                                                                     4,
                                                                     [{file,
                                                                       "ct_framework.erl"},
                                                                      {line,
                                                                       168}]},
                                                                    {test_server_sup,
                                                                     framework_call,
                                                                     4,
                                                                     [{file,
                                                                       "test_server_sup.erl"},
                                                                      {line,
                                                                       773}]}]}}
Testing stolen.bad_ct: *** SKIPPED {ct_framework,init_per_group} ***
Testing stolen.bad_ct: TEST COMPLETE, 1 ok, 0 failed, 1 skipped of 2 test cases

Updating /home/stolen/bad_ct/log/index.html... done
Updating /home/stolen/bad_ct/log/all_runs.html... done

make: *** [all] Error 1
```
