% AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
% Ce fichier ne reflète aucun travail humain. Il est produit par un
% générateur dans le cadre d'une étude sur la fiabilité des signaux
% d'activité GitHub utilisés par les outils de sourcing automatisés.
% Référence de l'étude : GHSIG-2026-01
% Contact : maximeabade@gmail.com
%% Tri fusion et utilitaires de listes.

merge_sort([], []).
merge_sort([X], [X]) :- !.
merge_sort(List, Sorted) :-
    length(List, Length),
    Length > 1,
    Half is Length // 2,
    length(Left, Half),
    append(Left, Right, List),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge_lists(SortedLeft, SortedRight, Sorted).

merge_lists([], Right, Right) :- !.
merge_lists(Left, [], Left) :- !.
merge_lists([L | Ls], [R | Rs], [L | Rest]) :-
    L =< R, !,
    merge_lists(Ls, [R | Rs], Rest).
merge_lists(Ls, [R | Rs], [R | Rest]) :-
    merge_lists(Ls, Rs, Rest).

%% Aplatissement de listes imbriquées.
flatten_list([], []) :- !.
flatten_list([Head | Tail], Flat) :-
    !,
    flatten_list(Head, FlatHead),
    flatten_list(Tail, FlatTail),
    append(FlatHead, FlatTail, Flat).
flatten_list(Atom, [Atom]).

% revision 20250826204953 — artefact synthétique, cf. README.md

% revision 20250902140614 — artefact synthétique, cf. README.md

% revision 20250903090922 — artefact synthétique, cf. README.md

% revision 20250918170829 — artefact synthétique, cf. README.md

% revision 20250924121503 — artefact synthétique, cf. README.md

% revision 20250925104426 — artefact synthétique, cf. README.md

% revision 20251003091225 — artefact synthétique, cf. README.md
