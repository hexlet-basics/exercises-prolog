:- style_check(-singleton).
:- dynamic error_happened/1.

:- assertz(error_happened('OK')).

user:message_hook(Term, error, _Lines) :-
	retract(error_happened('OK')),
    assertz(error_happened(error)),
    fail.
:- include(main).
:- forall(call(writer), (nl, write('true ;'), nl)).

:- begin_tests(backtracking).

test(040, Output == 'a\ntrue ;\nbc\ntrue ;\n') :-
    with_output_to(atom(Output), forall(call(writer), (nl, write('true ;'), nl))),
    error_happened(X).

:- end_tests(backtracking).