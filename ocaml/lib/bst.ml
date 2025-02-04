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
