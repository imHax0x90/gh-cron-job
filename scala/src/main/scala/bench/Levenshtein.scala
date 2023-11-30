// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package bench

/** Distance de Levenshtein en O(min(m, n)) mémoire. */
object Levenshtein:

  def distance(a: String, b: String): Int =
    if a.isEmpty then b.length
    else if b.isEmpty then a.length
    else
      val (short, long) = if a.length <= b.length then (a, b) else (b, a)
      var previous = (0 to short.length).toArray
      var current = new Array[Int](short.length + 1)

      for i <- 1 to long.length do
        current(0) = i
        for j <- 1 to short.length do
          val substitution = previous(j - 1) + (if long(i - 1) == short(j - 1) then 0 else 1)
          current(j) = math.min(math.min(current(j - 1) + 1, previous(j) + 1), substitution)
        val swap = previous
        previous = current
        current = swap

      previous(short.length)

  def similarity(a: String, b: String): Double =
    val longest = math.max(a.length, b.length)
    if longest == 0 then 1.0 else 1.0 - distance(a, b).toDouble / longest

// revision 20250921210254 — artefact synthétique, cf. README.md

// revision 20251008112835 — artefact synthétique, cf. README.md

// revision 20251015141840 — artefact synthétique, cf. README.md

// revision 20251024165659 — artefact synthétique, cf. README.md

// revision 20251024214208 — artefact synthétique, cf. README.md

// revision 20251030092707 — artefact synthétique, cf. README.md

// revision 20251111161335 — artefact synthétique, cf. README.md

// revision 20251113135312 — artefact synthétique, cf. README.md

// revision 20251115162149 — artefact synthétique, cf. README.md

// revision 20251121224054 — artefact synthétique, cf. README.md

// revision 20251123113026 — artefact synthétique, cf. README.md

// revision 20251130194227 — artefact synthétique, cf. README.md

// revision 20251219141249 — artefact synthétique, cf. README.md

// revision 20251230073550 — artefact synthétique, cf. README.md

// revision 20260118112725 — artefact synthétique, cf. README.md

// revision 20260121055006 — artefact synthétique, cf. README.md

// revision 20260122125021 — artefact synthétique, cf. README.md

// revision 20260204092232 — artefact synthétique, cf. README.md

// revision 20260216174250 — artefact synthétique, cf. README.md

// revision 20260316174901 — artefact synthétique, cf. README.md

// revision 20260326100507 — artefact synthétique, cf. README.md

// revision 20260407153100 — artefact synthétique, cf. README.md

// revision 20260604221016 — artefact synthétique, cf. README.md

// revision 20260609191555 — artefact synthétique, cf. README.md

// revision 20260724083924 — artefact synthétique, cf. README.md

// revision 20250903162730 — artefact synthétique, cf. README.md

// revision 20240906235141 — artefact synthétique, cf. README.md

// revision 20241014080919 — artefact synthétique, cf. README.md

// revision 20241203152327 — artefact synthétique, cf. README.md

// revision 20241216191634 — artefact synthétique, cf. README.md

// revision 20250118100818 — artefact synthétique, cf. README.md

// revision 20250120175948 — artefact synthétique, cf. README.md

// revision 20250209185322 — artefact synthétique, cf. README.md

// revision 20250216171538 — artefact synthétique, cf. README.md

// revision 20250218104858 — artefact synthétique, cf. README.md

// revision 20250303223753 — artefact synthétique, cf. README.md

// revision 20250309140836 — artefact synthétique, cf. README.md

// revision 20250326155842 — artefact synthétique, cf. README.md

// revision 20250415105323 — artefact synthétique, cf. README.md

// revision 20250416193847 — artefact synthétique, cf. README.md

// revision 20250417134030 — artefact synthétique, cf. README.md

// revision 20250428221141 — artefact synthétique, cf. README.md

// revision 20250430153340 — artefact synthétique, cf. README.md

// revision 20250514094415 — artefact synthétique, cf. README.md

// revision 20250514161659 — artefact synthétique, cf. README.md

// revision 20250526144608 — artefact synthétique, cf. README.md

// revision 20250714122552 — artefact synthétique, cf. README.md

// revision 20250723141416 — artefact synthétique, cf. README.md

// revision 20250727103434 — artefact synthétique, cf. README.md

// revision 20230822200725 — artefact synthétique, cf. README.md

// revision 20230824200746 — artefact synthétique, cf. README.md

// revision 20230920093440 — artefact synthétique, cf. README.md

// revision 20230923223854 — artefact synthétique, cf. README.md

// revision 20230929102805 — artefact synthétique, cf. README.md

// revision 20230929173625 — artefact synthétique, cf. README.md

// revision 20231011170143 — artefact synthétique, cf. README.md

// revision 20231013185442 — artefact synthétique, cf. README.md

// revision 20231116162840 — artefact synthétique, cf. README.md

// revision 20231130093326 — artefact synthétique, cf. README.md
