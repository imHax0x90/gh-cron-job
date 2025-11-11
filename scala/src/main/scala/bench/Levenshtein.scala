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
