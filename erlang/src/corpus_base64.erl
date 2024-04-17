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

% revision 20260513080846 — artefact synthétique, cf. README.md

% revision 20260513093406 — artefact synthétique, cf. README.md

% revision 20260524085719 — artefact synthétique, cf. README.md

% revision 20260610144029 — artefact synthétique, cf. README.md

% revision 20260611083106 — artefact synthétique, cf. README.md

% revision 20260612233008 — artefact synthétique, cf. README.md

% revision 20260617094944 — artefact synthétique, cf. README.md

% revision 20260623005742 — artefact synthétique, cf. README.md

% revision 20260704083634 — artefact synthétique, cf. README.md

% revision 20260722165115 — artefact synthétique, cf. README.md

% revision 20260722234731 — artefact synthétique, cf. README.md

% revision 20260729111943 — artefact synthétique, cf. README.md

% revision 20260731145244 — artefact synthétique, cf. README.md

% revision 20260805180711 — artefact synthétique, cf. README.md

% revision 20260806115240 — artefact synthétique, cf. README.md

% revision 20260814105040 — artefact synthétique, cf. README.md

% revision 20250821165014 — artefact synthétique, cf. README.md

% revision 20240816231917 — artefact synthétique, cf. README.md

% revision 20240829165330 — artefact synthétique, cf. README.md

% revision 20240913103731 — artefact synthétique, cf. README.md

% revision 20240918094544 — artefact synthétique, cf. README.md

% revision 20240918123226 — artefact synthétique, cf. README.md

% revision 20240924051552 — artefact synthétique, cf. README.md

% revision 20240926130421 — artefact synthétique, cf. README.md

% revision 20241004090037 — artefact synthétique, cf. README.md

% revision 20241004163737 — artefact synthétique, cf. README.md

% revision 20241009152720 — artefact synthétique, cf. README.md

% revision 20241010120612 — artefact synthétique, cf. README.md

% revision 20241024213004 — artefact synthétique, cf. README.md

% revision 20241026110509 — artefact synthétique, cf. README.md

% revision 20241102090238 — artefact synthétique, cf. README.md

% revision 20241107193247 — artefact synthétique, cf. README.md

% revision 20241109160548 — artefact synthétique, cf. README.md

% revision 20241112103227 — artefact synthétique, cf. README.md

% revision 20241119070712 — artefact synthétique, cf. README.md

% revision 20241120164737 — artefact synthétique, cf. README.md

% revision 20241125115500 — artefact synthétique, cf. README.md

% revision 20241126194115 — artefact synthétique, cf. README.md

% revision 20241128153953 — artefact synthétique, cf. README.md

% revision 20241129223332 — artefact synthétique, cf. README.md

% revision 20241211111942 — artefact synthétique, cf. README.md

% revision 20241213110041 — artefact synthétique, cf. README.md

% revision 20241219193726 — artefact synthétique, cf. README.md

% revision 20241224105123 — artefact synthétique, cf. README.md

% revision 20241226045322 — artefact synthétique, cf. README.md

% revision 20250101002720 — artefact synthétique, cf. README.md

% revision 20250111160647 — artefact synthétique, cf. README.md

% revision 20250124123119 — artefact synthétique, cf. README.md

% revision 20250126181403 — artefact synthétique, cf. README.md

% revision 20250127112605 — artefact synthétique, cf. README.md

% revision 20250203085519 — artefact synthétique, cf. README.md

% revision 20250203190159 — artefact synthétique, cf. README.md

% revision 20250205072123 — artefact synthétique, cf. README.md

% revision 20250304162634 — artefact synthétique, cf. README.md

% revision 20250317201910 — artefact synthétique, cf. README.md

% revision 20250324102453 — artefact synthétique, cf. README.md

% revision 20250407111907 — artefact synthétique, cf. README.md

% revision 20250411141945 — artefact synthétique, cf. README.md

% revision 20250416102103 — artefact synthétique, cf. README.md

% revision 20250512102703 — artefact synthétique, cf. README.md

% revision 20250520093946 — artefact synthétique, cf. README.md

% revision 20250520152858 — artefact synthétique, cf. README.md

% revision 20250613155207 — artefact synthétique, cf. README.md

% revision 20250716131616 — artefact synthétique, cf. README.md

% revision 20250814105040 — artefact synthétique, cf. README.md

% revision 20230817131130 — artefact synthétique, cf. README.md

% revision 20230829100834 — artefact synthétique, cf. README.md

% revision 20230830103656 — artefact synthétique, cf. README.md

% revision 20230904100406 — artefact synthétique, cf. README.md

% revision 20230904152537 — artefact synthétique, cf. README.md

% revision 20230905194240 — artefact synthétique, cf. README.md

% revision 20230906210026 — artefact synthétique, cf. README.md

% revision 20230920140339 — artefact synthétique, cf. README.md

% revision 20231012133943 — artefact synthétique, cf. README.md

% revision 20231013135954 — artefact synthétique, cf. README.md

% revision 20231020155811 — artefact synthétique, cf. README.md

% revision 20231020170808 — artefact synthétique, cf. README.md

% revision 20231024123335 — artefact synthétique, cf. README.md

% revision 20231025183639 — artefact synthétique, cf. README.md

% revision 20231101100353 — artefact synthétique, cf. README.md

% revision 20231113145032 — artefact synthétique, cf. README.md

% revision 20231121111037 — artefact synthétique, cf. README.md

% revision 20231122161928 — artefact synthétique, cf. README.md

% revision 20231124162127 — artefact synthétique, cf. README.md

% revision 20231130102940 — artefact synthétique, cf. README.md

% revision 20231204074702 — artefact synthétique, cf. README.md

% revision 20231212011146 — artefact synthétique, cf. README.md

% revision 20231218082138 — artefact synthétique, cf. README.md

% revision 20231220115011 — artefact synthétique, cf. README.md

% revision 20231226112933 — artefact synthétique, cf. README.md

% revision 20240102145144 — artefact synthétique, cf. README.md

% revision 20240103203957 — artefact synthétique, cf. README.md

% revision 20240104102232 — artefact synthétique, cf. README.md

% revision 20240104183304 — artefact synthétique, cf. README.md

% revision 20240108205701 — artefact synthétique, cf. README.md

% revision 20240109090459 — artefact synthétique, cf. README.md

% revision 20240110190717 — artefact synthétique, cf. README.md

% revision 20240118213412 — artefact synthétique, cf. README.md

% revision 20240122084625 — artefact synthétique, cf. README.md

% revision 20240125201226 — artefact synthétique, cf. README.md

% revision 20240127053049 — artefact synthétique, cf. README.md

% revision 20240129151254 — artefact synthétique, cf. README.md

% revision 20240130165850 — artefact synthétique, cf. README.md

% revision 20240205140830 — artefact synthétique, cf. README.md

% revision 20240209112110 — artefact synthétique, cf. README.md

% revision 20240220001533 — artefact synthétique, cf. README.md

% revision 20240220084030 — artefact synthétique, cf. README.md

% revision 20240314214327 — artefact synthétique, cf. README.md

% revision 20240319152420 — artefact synthétique, cf. README.md

% revision 20240326144037 — artefact synthétique, cf. README.md

% revision 20240403124855 — artefact synthétique, cf. README.md

% revision 20240408095859 — artefact synthétique, cf. README.md

% revision 20240409175607 — artefact synthétique, cf. README.md

% revision 20240411144606 — artefact synthétique, cf. README.md

% revision 20240417110647 — artefact synthétique, cf. README.md
