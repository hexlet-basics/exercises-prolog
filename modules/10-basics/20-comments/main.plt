:- style_check(-singleton).
:- dynamic error_happened/1.

:- assertz(error_happened('OK')).

user:message_hook(Term, error, _Lines) :-
	retract(error_happened('OK')),
    assertz(error_happened(error)),
    fail.

:- [main].

:- begin_tests(comments).

test(020, Output == 'Это не комментарий') :-
    error_happened(X),
    with_output_to(atom(Output), [main]).

:- end_tests(comments).