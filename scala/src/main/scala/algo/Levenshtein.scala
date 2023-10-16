// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package algo

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

// revision 20250903192046 — artefact synthétique, cf. README.md

// revision 20251013141252 — artefact synthétique, cf. README.md

// revision 20251017210424 — artefact synthétique, cf. README.md

// revision 20251028173729 — artefact synthétique, cf. README.md

// revision 20251030211702 — artefact synthétique, cf. README.md

// revision 20251111211353 — artefact synthétique, cf. README.md

// revision 20251113140853 — artefact synthétique, cf. README.md

// revision 20260126113258 — artefact synthétique, cf. README.md

// revision 20260227215857 — artefact synthétique, cf. README.md

// revision 20260305133250 — artefact synthétique, cf. README.md

// revision 20260313184401 — artefact synthétique, cf. README.md

// revision 20260423070907 — artefact synthétique, cf. README.md

// revision 20260615082137 — artefact synthétique, cf. README.md

// revision 20260617084117 — artefact synthétique, cf. README.md

// revision 20260617224832 — artefact synthétique, cf. README.md

// revision 20260621135533 — artefact synthétique, cf. README.md

// revision 20260626090048 — artefact synthétique, cf. README.md

// revision 20260806155504 — artefact synthétique, cf. README.md

// revision 20260812080203 — artefact synthétique, cf. README.md

// revision 20250818154001 — artefact synthétique, cf. README.md

// revision 20240820153806 — artefact synthétique, cf. README.md

// revision 20241016163558 — artefact synthétique, cf. README.md

// revision 20241027090522 — artefact synthétique, cf. README.md

// revision 20241112104738 — artefact synthétique, cf. README.md

// revision 20241118125217 — artefact synthétique, cf. README.md

// revision 20241213150212 — artefact synthétique, cf. README.md

// revision 20241223092716 — artefact synthétique, cf. README.md

// revision 20250104233011 — artefact synthétique, cf. README.md

// revision 20250220160307 — artefact synthétique, cf. README.md

// revision 20250224192407 — artefact synthétique, cf. README.md

// revision 20250226153332 — artefact synthétique, cf. README.md

// revision 20250307124306 — artefact synthétique, cf. README.md

// revision 20250412161807 — artefact synthétique, cf. README.md

// revision 20250422155808 — artefact synthétique, cf. README.md

// revision 20250619160753 — artefact synthétique, cf. README.md

// revision 20250619183108 — artefact synthétique, cf. README.md

// revision 20250620202212 — artefact synthétique, cf. README.md

// revision 20250625180839 — artefact synthétique, cf. README.md

// revision 20250627173835 — artefact synthétique, cf. README.md

// revision 20250720104939 — artefact synthétique, cf. README.md

// revision 20250729102902 — artefact synthétique, cf. README.md

// revision 20250811205248 — artefact synthétique, cf. README.md

// revision 20230924175554 — artefact synthétique, cf. README.md

// revision 20231001173935 — artefact synthétique, cf. README.md

// revision 20231002133057 — artefact synthétique, cf. README.md

// revision 20231009093854 — artefact synthétique, cf. README.md

// revision 20231012120758 — artefact synthétique, cf. README.md

// revision 20231016225829 — artefact synthétique, cf. README.md
