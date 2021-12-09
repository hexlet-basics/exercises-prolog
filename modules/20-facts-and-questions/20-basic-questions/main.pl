pet('Мурзик').
pet('Джек').
male('Дмитрий').
male('Анатолий').
female('Маша').
female('Настя').
father('Дмитрий', 'Анатолий').
father('Дмитрий', 'Настя').
mother('Маша', 'Анатолий').
mother('Маша', 'Настя').

% Проверить существует ли питомец по имени Джек
have_pet_jack :-
    % BEGIN
    pet('Джек').
    % END

% Найти всех детей Дмитрия
all_dmitriy_children(X) :-
    % BEGIN
    father('Дмитрий', X).
    % END

% Найти маму Насти
nastya_mother(X) :-
    % BEGIN
    mother(X, 'Настя').
    % END

% Найти всех сыновей Дмитрия
all_dmitriy_sons(X) :-
    % BEGIN
    all_dmitriy_children(X),
    male(X).
    % END


