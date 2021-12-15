:- style_check(-singleton).
:- dynamic error_happened/1.

:- assertz(error_happened('OK')).

user:message_hook(Term, error, _Lines) :-
	retract(error_happened('OK')),
    assertz(error_happened(error)),
    fail.

:- [main].

:- begin_tests(facts).

test(010, [true, nondet]) :-
    pet(P),
    father(F, S),
    mother(M, D),
    error_happened(X).

:- end_tests(facts).