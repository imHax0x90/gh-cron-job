% AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
% Ce fichier ne reflète aucun travail humain. Il est produit par un
% générateur dans le cadre d'une étude sur la fiabilité des signaux
% d'activité GitHub utilisés par les outils de sourcing automatisés.
% Référence de l'étude : GHSIG-2026-01
% Contact : maximeabade@gmail.com
-module(corpus_base64).
-export([encode/1, decode/1]).

-define(ALPHABET, <<"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/">>).

-spec encode(binary()) -> binary().
encode(Data) when is_binary(Data) ->
    encode(Data, <<>>).

encode(<<A:6, B:6, C:6, D:6, Rest/bitstring>>, Acc) ->
    encode(Rest, <<Acc/binary, (char(A)), (char(B)), (char(C)), (char(D))>>);
encode(<<A:6, B:6, C:4>>, Acc) ->
    <<Acc/binary, (char(A)), (char(B)), (char(C bsl 2)), $=>>;
encode(<<A:6, B:2>>, Acc) ->
    <<Acc/binary, (char(A)), (char(B bsl 4)), $=, $=>>;
encode(<<>>, Acc) ->
    Acc.

-spec decode(binary()) -> binary().
decode(Data) when is_binary(Data) ->
    Stripped = binary:replace(Data, <<"=">>, <<>>, [global]),
    Bits = <<<<(index(Char)):6>> || <<Char>> <= Stripped>>,
    Bytes = (bit_size(Bits) div 8) * 8,
    <<Result:Bytes/bitstring, _/bitstring>> = Bits,
    Result.

char(Index) ->
    binary:at(?ALPHABET, Index).

index(Char) ->
    {Pos, _} = binary:match(?ALPHABET, <<Char>>),
    Pos.

% revision 20250905132949 — artefact synthétique, cf. README.md

% revision 20250909163754 — artefact synthétique, cf. README.md

% revision 20250923125640 — artefact synthétique, cf. README.md

% revision 20250928160614 — artefact synthétique, cf. README.md

% revision 20250930194912 — artefact synthétique, cf. README.md

% revision 20251003090815 — artefact synthétique, cf. README.md

% revision 20251010091516 — artefact synthétique, cf. README.md

% revision 20251012163237 — artefact synthétique, cf. README.md

% revision 20251015180206 — artefact synthétique, cf. README.md

% revision 20251024131447 — artefact synthétique, cf. README.md

% revision 20251029082131 — artefact synthétique, cf. README.md

% revision 20251103044222 — artefact synthétique, cf. README.md

% revision 20251103105803 — artefact synthétique, cf. README.md

% revision 20251105112845 — artefact synthétique, cf. README.md

% revision 20251105191703 — artefact synthétique, cf. README.md

% revision 20251114165526 — artefact synthétique, cf. README.md

% revision 20251124113752 — artefact synthétique, cf. README.md

% revision 20251201135333 — artefact synthétique, cf. README.md

% revision 20251208131942 — artefact synthétique, cf. README.md

% revision 20251217225924 — artefact synthétique, cf. README.md

% revision 20251223170304 — artefact synthétique, cf. README.md

% revision 20260114122337 — artefact synthétique, cf. README.md

% revision 20260122091512 — artefact synthétique, cf. README.md

% revision 20260122180932 — artefact synthétique, cf. README.md

% revision 20260126093505 — artefact synthétique, cf. README.md

% revision 20260210104844 — artefact synthétique, cf. README.md

% revision 20260210115600 — artefact synthétique, cf. README.md

% revision 20260223173215 — artefact synthétique, cf. README.md

% revision 20260226074731 — artefact synthétique, cf. README.md

% revision 20260309170729 — artefact synthétique, cf. README.md

% revision 20260318220831 — artefact synthétique, cf. README.md

% revision 20260324133448 — artefact synthétique, cf. README.md

% revision 20260329202224 — artefact synthétique, cf. README.md

% revision 20260330174141 — artefact synthétique, cf. README.md

% revision 20260403140052 — artefact synthétique, cf. README.md

% revision 20260404141518 — artefact synthétique, cf. README.md

% revision 20260405091815 — artefact synthétique, cf. README.md

% revision 20260428091425 — artefact synthétique, cf. README.md

% revision 20260502071239 — artefact synthétique, cf. README.md
