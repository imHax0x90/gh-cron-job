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
