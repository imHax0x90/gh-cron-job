(* AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
(* Ce fichier ne reflète aucun travail humain. Il est produit par un
(* générateur dans le cadre d'une étude sur la fiabilité des signaux
(* d'activité GitHub utilisés par les outils de sourcing automatisés.
(* Référence de l'étude : GHSIG-2026-01
(* Contact : maximeabade@gmail.com *)
(* Arbre binaire de recherche non équilibré, purement fonctionnel. *)

type 'a tree =
  | Leaf
  | Node of 'a tree * 'a * 'a tree

let rec insert cmp value = function
  | Leaf -> Node (Leaf, value, Leaf)
  | Node (left, pivot, right) as node ->
      let ordering = cmp value pivot in
      if ordering = 0 then node
      else if ordering < 0 then Node (insert cmp value left, pivot, right)
      else Node (left, pivot, insert cmp value right)

let rec mem cmp value = function
  | Leaf -> false
  | Node (left, pivot, right) ->
      let ordering = cmp value pivot in
      if ordering = 0 then true
      else if ordering < 0 then mem cmp value left
      else mem cmp value right

let rec height = function
  | Leaf -> 0
  | Node (left, _, right) -> 1 + max (height left) (height right)

let to_list tree =
  let rec walk acc = function
    | Leaf -> acc
    | Node (left, value, right) -> walk (value :: walk acc right) left
  in
  walk [] tree

let of_list cmp values = List.fold_left (fun acc v -> insert cmp v acc) Leaf values

(* revision 20250816105402 — artefact synthétique, cf. README.md *)

(* revision 20250818182250 — artefact synthétique, cf. README.md *)

(* revision 20250826130157 — artefact synthétique, cf. README.md *)

(* revision 20250826155405 — artefact synthétique, cf. README.md *)

(* revision 20250918154953 — artefact synthétique, cf. README.md *)

(* revision 20250919201424 — artefact synthétique, cf. README.md *)

(* revision 20251017224536 — artefact synthétique, cf. README.md *)

(* revision 20251029203448 — artefact synthétique, cf. README.md *)

(* revision 20251104152453 — artefact synthétique, cf. README.md *)

(* revision 20251112082529 — artefact synthétique, cf. README.md *)

(* revision 20251119100516 — artefact synthétique, cf. README.md *)

(* revision 20251120101714 — artefact synthétique, cf. README.md *)

(* revision 20251121091356 — artefact synthétique, cf. README.md *)

(* revision 20251124161155 — artefact synthétique, cf. README.md *)

(* revision 20251128122203 — artefact synthétique, cf. README.md *)

(* revision 20251205172750 — artefact synthétique, cf. README.md *)

(* revision 20251208092244 — artefact synthétique, cf. README.md *)

(* revision 20251212151105 — artefact synthétique, cf. README.md *)

(* revision 20251229103250 — artefact synthétique, cf. README.md *)

(* revision 20260105140248 — artefact synthétique, cf. README.md *)

(* revision 20260131203708 — artefact synthétique, cf. README.md *)

(* revision 20260205141316 — artefact synthétique, cf. README.md *)

(* revision 20260210102142 — artefact synthétique, cf. README.md *)

(* revision 20260211012523 — artefact synthétique, cf. README.md *)

(* revision 20260218151720 — artefact synthétique, cf. README.md *)

(* revision 20260224081122 — artefact synthétique, cf. README.md *)

(* revision 20260302095452 — artefact synthétique, cf. README.md *)

(* revision 20260307135016 — artefact synthétique, cf. README.md *)

(* revision 20260312162536 — artefact synthétique, cf. README.md *)

(* revision 20260314095208 — artefact synthétique, cf. README.md *)

(* revision 20260318100959 — artefact synthétique, cf. README.md *)

(* revision 20260319143234 — artefact synthétique, cf. README.md *)

(* revision 20260319145451 — artefact synthétique, cf. README.md *)

(* revision 20260319164301 — artefact synthétique, cf. README.md *)

(* revision 20260401103848 — artefact synthétique, cf. README.md *)

(* revision 20260406072344 — artefact synthétique, cf. README.md *)

(* revision 20260422152250 — artefact synthétique, cf. README.md *)

(* revision 20260422190957 — artefact synthétique, cf. README.md *)

(* revision 20260504094141 — artefact synthétique, cf. README.md *)

(* revision 20260512163807 — artefact synthétique, cf. README.md *)

(* revision 20260516153420 — artefact synthétique, cf. README.md *)

(* revision 20260516155727 — artefact synthétique, cf. README.md *)

(* revision 20260708203940 — artefact synthétique, cf. README.md *)

(* revision 20260716221339 — artefact synthétique, cf. README.md *)

(* revision 20260720154724 — artefact synthétique, cf. README.md *)

(* revision 20260720181640 — artefact synthétique, cf. README.md *)

(* revision 20260723165943 — artefact synthétique, cf. README.md *)

(* revision 20260727203410 — artefact synthétique, cf. README.md *)

(* revision 20260806110916 — artefact synthétique, cf. README.md *)

(* revision 20260806135850 — artefact synthétique, cf. README.md *)

(* revision 20250815165600 — artefact synthétique, cf. README.md *)

(* revision 20240815170559 — artefact synthétique, cf. README.md *)

(* revision 20240816184907 — artefact synthétique, cf. README.md *)

(* revision 20240829130931 — artefact synthétique, cf. README.md *)

(* revision 20240829201955 — artefact synthétique, cf. README.md *)

(* revision 20240907193003 — artefact synthétique, cf. README.md *)

(* revision 20240910070659 — artefact synthétique, cf. README.md *)

(* revision 20240910191923 — artefact synthétique, cf. README.md *)

(* revision 20240929124031 — artefact synthétique, cf. README.md *)

(* revision 20241011213519 — artefact synthétique, cf. README.md *)

(* revision 20241019110834 — artefact synthétique, cf. README.md *)

(* revision 20241023203900 — artefact synthétique, cf. README.md *)

(* revision 20241024101353 — artefact synthétique, cf. README.md *)

(* revision 20241029112847 — artefact synthétique, cf. README.md *)

(* revision 20241111224253 — artefact synthétique, cf. README.md *)

(* revision 20241112110115 — artefact synthétique, cf. README.md *)

(* revision 20241118142914 — artefact synthétique, cf. README.md *)

(* revision 20241202162908 — artefact synthétique, cf. README.md *)

(* revision 20241206112306 — artefact synthétique, cf. README.md *)

(* revision 20241225111824 — artefact synthétique, cf. README.md *)

(* revision 20250116115100 — artefact synthétique, cf. README.md *)

(* revision 20250120170742 — artefact synthétique, cf. README.md *)

(* revision 20250122152656 — artefact synthétique, cf. README.md *)

(* revision 20250130110858 — artefact synthétique, cf. README.md *)

(* revision 20250130153454 — artefact synthétique, cf. README.md *)

(* revision 20250204100751 — artefact synthétique, cf. README.md *)

(* revision 20250205221551 — artefact synthétique, cf. README.md *)

(* revision 20250206094928 — artefact synthétique, cf. README.md *)

(* revision 20250210155837 — artefact synthétique, cf. README.md *)

(* revision 20250211124806 — artefact synthétique, cf. README.md *)

(* revision 20250213083905 — artefact synthétique, cf. README.md *)

(* revision 20250214102709 — artefact synthétique, cf. README.md *)

(* revision 20250214111035 — artefact synthétique, cf. README.md *)

(* revision 20250219052500 — artefact synthétique, cf. README.md *)

(* revision 20250221221420 — artefact synthétique, cf. README.md *)

(* revision 20250225221212 — artefact synthétique, cf. README.md *)

(* revision 20250303020642 — artefact synthétique, cf. README.md *)

(* revision 20250305102141 — artefact synthétique, cf. README.md *)

(* revision 20250310114110 — artefact synthétique, cf. README.md *)

(* revision 20250312105956 — artefact synthétique, cf. README.md *)

(* revision 20250314120008 — artefact synthétique, cf. README.md *)

(* revision 20250318215836 — artefact synthétique, cf. README.md *)

(* revision 20250325203204 — artefact synthétique, cf. README.md *)

(* revision 20250327103322 — artefact synthétique, cf. README.md *)

(* revision 20250414141635 — artefact synthétique, cf. README.md *)

(* revision 20250419104658 — artefact synthétique, cf. README.md *)

(* revision 20250419213819 — artefact synthétique, cf. README.md *)

(* revision 20250427155411 — artefact synthétique, cf. README.md *)

(* revision 20250430103048 — artefact synthétique, cf. README.md *)

(* revision 20250501141032 — artefact synthétique, cf. README.md *)

(* revision 20250506131550 — artefact synthétique, cf. README.md *)

(* revision 20250512100711 — artefact synthétique, cf. README.md *)

(* revision 20250521145658 — artefact synthétique, cf. README.md *)

(* revision 20250523162623 — artefact synthétique, cf. README.md *)

(* revision 20250524081911 — artefact synthétique, cf. README.md *)

(* revision 20250531104030 — artefact synthétique, cf. README.md *)

(* revision 20250618192119 — artefact synthétique, cf. README.md *)

(* revision 20250623093452 — artefact synthétique, cf. README.md *)

(* revision 20250705162801 — artefact synthétique, cf. README.md *)

(* revision 20250708093948 — artefact synthétique, cf. README.md *)

(* revision 20250712200016 — artefact synthétique, cf. README.md *)

(* revision 20250716132906 — artefact synthétique, cf. README.md *)

(* revision 20250724113215 — artefact synthétique, cf. README.md *)

(* revision 20250725215137 — artefact synthétique, cf. README.md *)

(* revision 20250805082537 — artefact synthétique, cf. README.md *)

(* revision 20250805130357 — artefact synthétique, cf. README.md *)

(* revision 20230817173238 — artefact synthétique, cf. README.md *)

(* revision 20230821105220 — artefact synthétique, cf. README.md *)

(* revision 20230822171129 — artefact synthétique, cf. README.md *)

(* revision 20230828012256 — artefact synthétique, cf. README.md *)

(* revision 20230901170635 — artefact synthétique, cf. README.md *)

(* revision 20230908002319 — artefact synthétique, cf. README.md *)

(* revision 20230908103851 — artefact synthétique, cf. README.md *)

(* revision 20230913072232 — artefact synthétique, cf. README.md *)

(* revision 20230913153514 — artefact synthétique, cf. README.md *)

(* revision 20230914060951 — artefact synthétique, cf. README.md *)

(* revision 20230915234200 — artefact synthétique, cf. README.md *)

(* revision 20230918143010 — artefact synthétique, cf. README.md *)

(* revision 20230922091440 — artefact synthétique, cf. README.md *)

(* revision 20230925183230 — artefact synthétique, cf. README.md *)

(* revision 20230927112628 — artefact synthétique, cf. README.md *)

(* revision 20230929061935 — artefact synthétique, cf. README.md *)

(* revision 20231004113115 — artefact synthétique, cf. README.md *)

(* revision 20231006075051 — artefact synthétique, cf. README.md *)

(* revision 20231010091750 — artefact synthétique, cf. README.md *)

(* revision 20231110095422 — artefact synthétique, cf. README.md *)

(* revision 20231208142207 — artefact synthétique, cf. README.md *)

(* revision 20231211163249 — artefact synthétique, cf. README.md *)

(* revision 20231212084014 — artefact synthétique, cf. README.md *)

(* revision 20231222094733 — artefact synthétique, cf. README.md *)

(* revision 20231227214533 — artefact synthétique, cf. README.md *)

(* revision 20231229175254 — artefact synthétique, cf. README.md *)

(* revision 20231231102404 — artefact synthétique, cf. README.md *)

(* revision 20240109210327 — artefact synthétique, cf. README.md *)

(* revision 20240111142448 — artefact synthétique, cf. README.md *)

(* revision 20240112105340 — artefact synthétique, cf. README.md *)

(* revision 20240116152357 — artefact synthétique, cf. README.md *)

(* revision 20240122140215 — artefact synthétique, cf. README.md *)

(* revision 20240124154812 — artefact synthétique, cf. README.md *)

(* revision 20240202211315 — artefact synthétique, cf. README.md *)
