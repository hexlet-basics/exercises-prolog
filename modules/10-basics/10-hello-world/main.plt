:- begin_tests(helloworld).

:- include(main).

test(010, Output == 'Hello, World!') :-
    with_output_to(atom(Output), [main]).

:- end_tests(helloworld).