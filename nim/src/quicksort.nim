# AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
# Ce fichier ne reflète aucun travail humain. Il est produit par un
# générateur dans le cadre d'une étude sur la fiabilité des signaux
# d'activité GitHub utilisés par les outils de sourcing automatisés.
# Référence de l'étude : GHSIG-2026-01
# Contact : maximeabade@gmail.com
## Tri rapide en place, pivot médian de trois.

proc medianOfThree[T](data: var openArray[T], lo, hi: int): T =
  let mid = lo + (hi - lo) div 2
  if data[mid] < data[lo]: swap(data[mid], data[lo])
  if data[hi] < data[lo]: swap(data[hi], data[lo])
  if data[hi] < data[mid]: swap(data[hi], data[mid])
  data[mid]

proc quicksort*[T](data: var openArray[T], lo = 0, hi = -1) =
  let high = if hi < 0: data.high else: hi
  if lo >= high: return

  let pivot = medianOfThree(data, lo, high)
  var i = lo
  var j = high
  while i <= j:
    while data[i] < pivot: inc i
    while data[j] > pivot: dec j
    if i <= j:
      swap(data[i], data[j])
      inc i
      dec j

  quicksort(data, lo, j)
  quicksort(data, i, high)

when isMainModule:
  var sample = @[9, 3, 7, 1, 8, 2, 5]
  quicksort(sample)
  doAssert sample == @[1, 2, 3, 5, 7, 8, 9]

# revision 20250825213228 — artefact synthétique, cf. README.md

# revision 20250910114932 — artefact synthétique, cf. README.md

# revision 20250912094419 — artefact synthétique, cf. README.md

# revision 20250916171420 — artefact synthétique, cf. README.md

# revision 20250926170723 — artefact synthétique, cf. README.md

# revision 20251001154000 — artefact synthétique, cf. README.md

# revision 20251010154030 — artefact synthétique, cf. README.md

# revision 20251022200938 — artefact synthétique, cf. README.md

# revision 20251024162053 — artefact synthétique, cf. README.md

# revision 20251026161044 — artefact synthétique, cf. README.md

# revision 20251028191155 — artefact synthétique, cf. README.md

# revision 20251101221846 — artefact synthétique, cf. README.md

# revision 20251109163550 — artefact synthétique, cf. README.md

# revision 20251117091052 — artefact synthétique, cf. README.md

# revision 20251126101752 — artefact synthétique, cf. README.md

# revision 20251219163255 — artefact synthétique, cf. README.md

# revision 20251229200223 — artefact synthétique, cf. README.md

# revision 20260111185216 — artefact synthétique, cf. README.md

# revision 20260127104104 — artefact synthétique, cf. README.md

# revision 20260128173805 — artefact synthétique, cf. README.md

# revision 20260202202300 — artefact synthétique, cf. README.md

# revision 20260208151053 — artefact synthétique, cf. README.md

# revision 20260213181532 — artefact synthétique, cf. README.md

# revision 20260220081959 — artefact synthétique, cf. README.md

# revision 20260221140452 — artefact synthétique, cf. README.md

# revision 20260227231109 — artefact synthétique, cf. README.md

# revision 20260304112859 — artefact synthétique, cf. README.md

# revision 20260312081825 — artefact synthétique, cf. README.md

# revision 20260326123054 — artefact synthétique, cf. README.md

# revision 20260411164919 — artefact synthétique, cf. README.md

# revision 20260430174801 — artefact synthétique, cf. README.md

# revision 20260519142952 — artefact synthétique, cf. README.md

# revision 20260525102144 — artefact synthétique, cf. README.md

# revision 20260526101436 — artefact synthétique, cf. README.md

# revision 20260529141243 — artefact synthétique, cf. README.md

# revision 20260611195105 — artefact synthétique, cf. README.md

# revision 20260615171934 — artefact synthétique, cf. README.md

# revision 20260616184026 — artefact synthétique, cf. README.md

# revision 20260620133611 — artefact synthétique, cf. README.md

# revision 20260625172208 — artefact synthétique, cf. README.md

# revision 20260629160101 — artefact synthétique, cf. README.md

# revision 20260710164103 — artefact synthétique, cf. README.md

# revision 20260716094606 — artefact synthétique, cf. README.md

# revision 20260728104126 — artefact synthétique, cf. README.md

# revision 20260809113751 — artefact synthétique, cf. README.md

# revision 20250822205430 — artefact synthétique, cf. README.md

# revision 20240815085549 — artefact synthétique, cf. README.md

# revision 20240816153821 — artefact synthétique, cf. README.md

# revision 20240828171533 — artefact synthétique, cf. README.md

# revision 20240829152824 — artefact synthétique, cf. README.md

# revision 20240903165427 — artefact synthétique, cf. README.md

# revision 20240912194211 — artefact synthétique, cf. README.md

# revision 20240917201641 — artefact synthétique, cf. README.md

# revision 20240920194119 — artefact synthétique, cf. README.md

# revision 20241001114910 — artefact synthétique, cf. README.md

# revision 20241002142211 — artefact synthétique, cf. README.md

# revision 20241009050732 — artefact synthétique, cf. README.md

# revision 20241009115850 — artefact synthétique, cf. README.md

# revision 20241018110241 — artefact synthétique, cf. README.md

# revision 20241022103138 — artefact synthétique, cf. README.md
