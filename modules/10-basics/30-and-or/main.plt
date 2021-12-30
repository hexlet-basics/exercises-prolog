:- style_check(-singleton).
:- dynamic error_happened/1.

:- assertz(error_happened('OK')).

user:message_hook(Term, error, _Lines) :-
	retract(error_happened('OK')),
    assertz(error_happened(error)),
    fail.

:- include(main).

:- begin_tests(andor).

test(030, true(Output == 'Hello, \nWorld!\n' ; Output == 'Hello, \ntrue ;\nWorld!\ntrue ;\n')) :-
    nl,
    with_output_to(atom(Output), forall(call(writer), (nl, write('true ;'), nl))),
    write(Output).

:- end_tests(andor).