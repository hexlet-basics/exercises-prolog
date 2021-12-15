:- style_check(-singleton).
:- dynamic error_happened/1.

:- assertz(error_happened('OK')).

user:message_hook(Term, error, _Lines) :-
	retract(error_happened('OK')),
    assertz(error_happened(error)),
    fail.

:- include(main).

find_all_dmitry_children(List) :-
    findall(X, all_dmitriy_children(X), List).

find_all_dmitry_sons(List) :-
    findall(X, all_dmitriy_sons(X), List).

:- begin_tests(questions).

test(021, true) :-
    have_pet_jack.

test(022, Actual == ['Анатолий', 'Настя']) :-
    find_all_dmitry_children(Actual).

test(023, Actual == 'Маша') :-
    nastya_mother(Actual).

test(024, Actual == ['Анатолий']) :-
    find_all_dmitry_sons(Actual).


:- end_tests(questions).