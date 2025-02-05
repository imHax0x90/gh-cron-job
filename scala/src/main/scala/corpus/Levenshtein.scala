// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package corpus

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

// revision 20250821154003 — artefact synthétique, cf. README.md

// revision 20250910102137 — artefact synthétique, cf. README.md

// revision 20250910173929 — artefact synthétique, cf. README.md

// revision 20250914112702 — artefact synthétique, cf. README.md

// revision 20251021125625 — artefact synthétique, cf. README.md

// revision 20251031112447 — artefact synthétique, cf. README.md

// revision 20251113100340 — artefact synthétique, cf. README.md

// revision 20251114181734 — artefact synthétique, cf. README.md

// revision 20251218114232 — artefact synthétique, cf. README.md

// revision 20260122133846 — artefact synthétique, cf. README.md

// revision 20260224154643 — artefact synthétique, cf. README.md

// revision 20260309125741 — artefact synthétique, cf. README.md

// revision 20260326181838 — artefact synthétique, cf. README.md

// revision 20260417073015 — artefact synthétique, cf. README.md

// revision 20260417155103 — artefact synthétique, cf. README.md

// revision 20260523160039 — artefact synthétique, cf. README.md

// revision 20260603003717 — artefact synthétique, cf. README.md

// revision 20260710094311 — artefact synthétique, cf. README.md

// revision 20260715111647 — artefact synthétique, cf. README.md

// revision 20260716174046 — artefact synthétique, cf. README.md

// revision 20260725103248 — artefact synthétique, cf. README.md

// revision 20260726194914 — artefact synthétique, cf. README.md

// revision 20250819103830 — artefact synthétique, cf. README.md

// revision 20240816142731 — artefact synthétique, cf. README.md

// revision 20240823130553 — artefact synthétique, cf. README.md

// revision 20240829080258 — artefact synthétique, cf. README.md

// revision 20240909154831 — artefact synthétique, cf. README.md

// revision 20240924081841 — artefact synthétique, cf. README.md

// revision 20240930091756 — artefact synthétique, cf. README.md

// revision 20250102084140 — artefact synthétique, cf. README.md

// revision 20250131100230 — artefact synthétique, cf. README.md

// revision 20250131103151 — artefact synthétique, cf. README.md

// revision 20250205105211 — artefact synthétique, cf. README.md
