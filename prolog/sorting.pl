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

% revision 20251003120707 — artefact synthétique, cf. README.md

% revision 20251003152241 — artefact synthétique, cf. README.md

% revision 20251010175500 — artefact synthétique, cf. README.md

% revision 20251015103734 — artefact synthétique, cf. README.md

% revision 20251027120649 — artefact synthétique, cf. README.md

% revision 20251029091257 — artefact synthétique, cf. README.md

% revision 20251105113348 — artefact synthétique, cf. README.md

% revision 20251113083054 — artefact synthétique, cf. README.md

% revision 20251128173845 — artefact synthétique, cf. README.md

% revision 20251203172249 — artefact synthétique, cf. README.md

% revision 20251204091204 — artefact synthétique, cf. README.md

% revision 20251212085529 — artefact synthétique, cf. README.md

% revision 20251220090513 — artefact synthétique, cf. README.md

% revision 20251222100006 — artefact synthétique, cf. README.md

% revision 20251228083031 — artefact synthétique, cf. README.md

% revision 20251229142015 — artefact synthétique, cf. README.md

% revision 20260111143430 — artefact synthétique, cf. README.md

% revision 20260116121008 — artefact synthétique, cf. README.md

% revision 20260120145715 — artefact synthétique, cf. README.md

% revision 20260221170250 — artefact synthétique, cf. README.md

% revision 20260303130041 — artefact synthétique, cf. README.md

% revision 20260309112203 — artefact synthétique, cf. README.md

% revision 20260312160537 — artefact synthétique, cf. README.md

% revision 20260318142531 — artefact synthétique, cf. README.md

% revision 20260325084648 — artefact synthétique, cf. README.md

% revision 20260327184530 — artefact synthétique, cf. README.md

% revision 20260511161638 — artefact synthétique, cf. README.md

% revision 20260513142748 — artefact synthétique, cf. README.md

% revision 20260518114438 — artefact synthétique, cf. README.md

% revision 20260519142653 — artefact synthétique, cf. README.md

% revision 20260519144808 — artefact synthétique, cf. README.md

% revision 20260528165519 — artefact synthétique, cf. README.md

% revision 20260601115820 — artefact synthétique, cf. README.md

% revision 20260603232404 — artefact synthétique, cf. README.md

% revision 20260606163424 — artefact synthétique, cf. README.md

% revision 20260617104941 — artefact synthétique, cf. README.md

% revision 20260617154149 — artefact synthétique, cf. README.md

% revision 20260625231538 — artefact synthétique, cf. README.md

% revision 20260708101129 — artefact synthétique, cf. README.md

% revision 20260722153302 — artefact synthétique, cf. README.md

% revision 20260727092138 — artefact synthétique, cf. README.md

% revision 20260803075223 — artefact synthétique, cf. README.md

% revision 20260810165749 — artefact synthétique, cf. README.md

% revision 20260810212707 — artefact synthétique, cf. README.md

% revision 20260811184018 — artefact synthétique, cf. README.md

% revision 20260812152118 — artefact synthétique, cf. README.md

% revision 20250825153251 — artefact synthétique, cf. README.md

% revision 20240820082013 — artefact synthétique, cf. README.md

% revision 20240820092654 — artefact synthétique, cf. README.md

% revision 20240902165019 — artefact synthétique, cf. README.md

% revision 20240904095102 — artefact synthétique, cf. README.md

% revision 20240912105150 — artefact synthétique, cf. README.md

% revision 20240926090148 — artefact synthétique, cf. README.md

% revision 20241011094815 — artefact synthétique, cf. README.md

% revision 20241014130125 — artefact synthétique, cf. README.md

% revision 20241015092238 — artefact synthétique, cf. README.md

% revision 20241122140346 — artefact synthétique, cf. README.md

% revision 20241128104922 — artefact synthétique, cf. README.md

% revision 20241129174342 — artefact synthétique, cf. README.md

% revision 20241208115345 — artefact synthétique, cf. README.md

% revision 20250102152351 — artefact synthétique, cf. README.md

% revision 20250106165322 — artefact synthétique, cf. README.md

% revision 20250110084552 — artefact synthétique, cf. README.md

% revision 20250114193804 — artefact synthétique, cf. README.md

% revision 20250121200749 — artefact synthétique, cf. README.md

% revision 20250127190145 — artefact synthétique, cf. README.md

% revision 20250131163410 — artefact synthétique, cf. README.md

% revision 20250205083042 — artefact synthétique, cf. README.md

% revision 20250205151817 — artefact synthétique, cf. README.md

% revision 20250210210834 — artefact synthétique, cf. README.md

% revision 20250214055742 — artefact synthétique, cf. README.md

% revision 20250305112723 — artefact synthétique, cf. README.md

% revision 20250312120500 — artefact synthétique, cf. README.md

% revision 20250314180124 — artefact synthétique, cf. README.md

% revision 20250325152512 — artefact synthétique, cf. README.md

% revision 20250326153443 — artefact synthétique, cf. README.md

% revision 20250411161846 — artefact synthétique, cf. README.md

% revision 20250414105108 — artefact synthétique, cf. README.md

% revision 20250425115015 — artefact synthétique, cf. README.md

% revision 20250523084606 — artefact synthétique, cf. README.md

% revision 20250604130512 — artefact synthétique, cf. README.md

% revision 20250607074817 — artefact synthétique, cf. README.md

% revision 20250613222602 — artefact synthétique, cf. README.md

% revision 20250616193353 — artefact synthétique, cf. README.md

% revision 20250705065713 — artefact synthétique, cf. README.md

% revision 20250714182113 — artefact synthétique, cf. README.md

% revision 20250728115345 — artefact synthétique, cf. README.md

% revision 20250814215349 — artefact synthétique, cf. README.md

% revision 20230817001356 — artefact synthétique, cf. README.md

% revision 20230825144904 — artefact synthétique, cf. README.md

% revision 20230828092144 — artefact synthétique, cf. README.md

% revision 20230901100426 — artefact synthétique, cf. README.md

% revision 20230913110828 — artefact synthétique, cf. README.md

% revision 20230919100225 — artefact synthétique, cf. README.md

% revision 20230929091007 — artefact synthétique, cf. README.md

% revision 20231011094916 — artefact synthétique, cf. README.md

% revision 20231012182853 — artefact synthétique, cf. README.md

% revision 20231013150238 — artefact synthétique, cf. README.md

% revision 20231026140522 — artefact synthétique, cf. README.md

% revision 20231027120526 — artefact synthétique, cf. README.md

% revision 20231107174826 — artefact synthétique, cf. README.md

% revision 20231115114341 — artefact synthétique, cf. README.md

% revision 20231116120157 — artefact synthétique, cf. README.md

% revision 20231207155809 — artefact synthétique, cf. README.md

% revision 20231213221120 — artefact synthétique, cf. README.md

% revision 20231216132939 — artefact synthétique, cf. README.md

% revision 20231221194732 — artefact synthétique, cf. README.md

% revision 20231226131034 — artefact synthétique, cf. README.md

% revision 20231229110953 — artefact synthétique, cf. README.md

% revision 20240105174644 — artefact synthétique, cf. README.md

% revision 20240113223713 — artefact synthétique, cf. README.md

% revision 20240117215903 — artefact synthétique, cf. README.md

% revision 20240118201822 — artefact synthétique, cf. README.md

% revision 20240119152447 — artefact synthétique, cf. README.md

% revision 20240122101510 — artefact synthétique, cf. README.md

% revision 20240126153834 — artefact synthétique, cf. README.md

% revision 20240203143918 — artefact synthétique, cf. README.md

% revision 20240204150638 — artefact synthétique, cf. README.md

% revision 20240205140928 — artefact synthétique, cf. README.md

% revision 20240211092631 — artefact synthétique, cf. README.md

% revision 20240213160544 — artefact synthétique, cf. README.md

% revision 20240221145153 — artefact synthétique, cf. README.md

% revision 20240223142947 — artefact synthétique, cf. README.md

% revision 20240305133501 — artefact synthétique, cf. README.md

% revision 20240306164219 — artefact synthétique, cf. README.md

% revision 20240307204855 — artefact synthétique, cf. README.md

% revision 20240328174635 — artefact synthétique, cf. README.md

% revision 20240331115139 — artefact synthétique, cf. README.md

% revision 20240412153423 — artefact synthétique, cf. README.md

% revision 20240415113340 — artefact synthétique, cf. README.md

% revision 20240420184746 — artefact synthétique, cf. README.md

% revision 20240425210217 — artefact synthétique, cf. README.md

% revision 20240429103625 — artefact synthétique, cf. README.md

% revision 20240430172634 — artefact synthétique, cf. README.md

% revision 20240527074505 — artefact synthétique, cf. README.md

% revision 20240528114112 — artefact synthétique, cf. README.md

% revision 20240528130316 — artefact synthétique, cf. README.md

% revision 20240604153019 — artefact synthétique, cf. README.md

% revision 20240608174206 — artefact synthétique, cf. README.md

% revision 20240611142430 — artefact synthétique, cf. README.md

% revision 20240614225839 — artefact synthétique, cf. README.md

% revision 20240615094058 — artefact synthétique, cf. README.md

% revision 20240617164216 — artefact synthétique, cf. README.md

% revision 20240627100220 — artefact synthétique, cf. README.md

% revision 20240629094507 — artefact synthétique, cf. README.md

% revision 20240702164630 — artefact synthétique, cf. README.md
