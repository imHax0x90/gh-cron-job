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

# revision 20241027131101 — artefact synthétique, cf. README.md

# revision 20241120140422 — artefact synthétique, cf. README.md

# revision 20241122183932 — artefact synthétique, cf. README.md

# revision 20241201160207 — artefact synthétique, cf. README.md

# revision 20241214162929 — artefact synthétique, cf. README.md

# revision 20241228093701 — artefact synthétique, cf. README.md

# revision 20250102171806 — artefact synthétique, cf. README.md

# revision 20250103114619 — artefact synthétique, cf. README.md

# revision 20250109165926 — artefact synthétique, cf. README.md

# revision 20250109170743 — artefact synthétique, cf. README.md

# revision 20250111132615 — artefact synthétique, cf. README.md

# revision 20250116223916 — artefact synthétique, cf. README.md

# revision 20250118083918 — artefact synthétique, cf. README.md

# revision 20250120084107 — artefact synthétique, cf. README.md

# revision 20250121100120 — artefact synthétique, cf. README.md

# revision 20250203191003 — artefact synthétique, cf. README.md

# revision 20250210145924 — artefact synthétique, cf. README.md

# revision 20250224151100 — artefact synthétique, cf. README.md

# revision 20250225142336 — artefact synthétique, cf. README.md

# revision 20250305081719 — artefact synthétique, cf. README.md

# revision 20250324184752 — artefact synthétique, cf. README.md

# revision 20250324195020 — artefact synthétique, cf. README.md

# revision 20250330200935 — artefact synthétique, cf. README.md

# revision 20250416133405 — artefact synthétique, cf. README.md

# revision 20250417162236 — artefact synthétique, cf. README.md

# revision 20250418135239 — artefact synthétique, cf. README.md

# revision 20250421130733 — artefact synthétique, cf. README.md

# revision 20250428114943 — artefact synthétique, cf. README.md

# revision 20250502100911 — artefact synthétique, cf. README.md

# revision 20250520212453 — artefact synthétique, cf. README.md

# revision 20250527155049 — artefact synthétique, cf. README.md

# revision 20250604145159 — artefact synthétique, cf. README.md

# revision 20250609093028 — artefact synthétique, cf. README.md

# revision 20250616160618 — artefact synthétique, cf. README.md

# revision 20250617081215 — artefact synthétique, cf. README.md

# revision 20250618175212 — artefact synthétique, cf. README.md

# revision 20250621155405 — artefact synthétique, cf. README.md

# revision 20250630114904 — artefact synthétique, cf. README.md

# revision 20250710163150 — artefact synthétique, cf. README.md

# revision 20250714135421 — artefact synthétique, cf. README.md

# revision 20250716082951 — artefact synthétique, cf. README.md

# revision 20250728114858 — artefact synthétique, cf. README.md

# revision 20250728140319 — artefact synthétique, cf. README.md

# revision 20250814113239 — artefact synthétique, cf. README.md

# revision 20230819094833 — artefact synthétique, cf. README.md

# revision 20230908164142 — artefact synthétique, cf. README.md

# revision 20230909204621 — artefact synthétique, cf. README.md

# revision 20230913142139 — artefact synthétique, cf. README.md

# revision 20230914101103 — artefact synthétique, cf. README.md

# revision 20230915212934 — artefact synthétique, cf. README.md

# revision 20230918164634 — artefact synthétique, cf. README.md

# revision 20230925125023 — artefact synthétique, cf. README.md

# revision 20230928233357 — artefact synthétique, cf. README.md

# revision 20231005090244 — artefact synthétique, cf. README.md

# revision 20231006090606 — artefact synthétique, cf. README.md

# revision 20231012172251 — artefact synthétique, cf. README.md

# revision 20231013174224 — artefact synthétique, cf. README.md

# revision 20231102195853 — artefact synthétique, cf. README.md

# revision 20231104155704 — artefact synthétique, cf. README.md

# revision 20231117195133 — artefact synthétique, cf. README.md

# revision 20231120121527 — artefact synthétique, cf. README.md

# revision 20231121084848 — artefact synthétique, cf. README.md

# revision 20231127162841 — artefact synthétique, cf. README.md

# revision 20231127183851 — artefact synthétique, cf. README.md

# revision 20231206152023 — artefact synthétique, cf. README.md

# revision 20231207222834 — artefact synthétique, cf. README.md

# revision 20231208132332 — artefact synthétique, cf. README.md

# revision 20231212191247 — artefact synthétique, cf. README.md

# revision 20231217182020 — artefact synthétique, cf. README.md

# revision 20231220174610 — artefact synthétique, cf. README.md

# revision 20231226150525 — artefact synthétique, cf. README.md

# revision 20231227093532 — artefact synthétique, cf. README.md

# revision 20231227142659 — artefact synthétique, cf. README.md

# revision 20240109110911 — artefact synthétique, cf. README.md

# revision 20240109144114 — artefact synthétique, cf. README.md

# revision 20240123103651 — artefact synthétique, cf. README.md

# revision 20240206201715 — artefact synthétique, cf. README.md

# revision 20240208142758 — artefact synthétique, cf. README.md

# revision 20240218203107 — artefact synthétique, cf. README.md

# revision 20240226100657 — artefact synthétique, cf. README.md

# revision 20240318094320 — artefact synthétique, cf. README.md

# revision 20240320103653 — artefact synthétique, cf. README.md

# revision 20240320171417 — artefact synthétique, cf. README.md

# revision 20240330212835 — artefact synthétique, cf. README.md

# revision 20240401134653 — artefact synthétique, cf. README.md

# revision 20240404101845 — artefact synthétique, cf. README.md

# revision 20240411085838 — artefact synthétique, cf. README.md

# revision 20240412183349 — artefact synthétique, cf. README.md
