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
