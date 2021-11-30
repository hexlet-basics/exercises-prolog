:- begin_tests(test).

:-include(main).

test(001, Output == 'Hello, World!') :-
    with_output_to(atom(Output), greeting).

:- end_tests(test).