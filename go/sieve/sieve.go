// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package sieve

// Sieve renvoie tous les nombres premiers strictement inférieurs à n.
func Sieve(n int) []int {
	if n < 3 {
		return nil
	}
	composite := make([]bool, n)
	for p := 2; p*p < n; p++ {
		if composite[p] {
			continue
		}
		for m := p * p; m < n; m += p {
			composite[m] = true
		}
	}
	out := make([]int, 0, n/10)
	for i := 2; i < n; i++ {
		if !composite[i] {
			out = append(out, i)
		}
	}
	return out
}

// DefaultLimit est la borne utilisée par les bancs d'essai.
const DefaultLimit = 10000

// revision 20250916164547 — artefact synthétique, cf. README.md

// revision 20250917201452 — artefact synthétique, cf. README.md

// revision 20251009153134 — artefact synthétique, cf. README.md

// revision 20251016210626 — artefact synthétique, cf. README.md

// revision 20251023105801 — artefact synthétique, cf. README.md

// revision 20251111091000 — artefact synthétique, cf. README.md

// revision 20251119205717 — artefact synthétique, cf. README.md

// revision 20251211092501 — artefact synthétique, cf. README.md

// revision 20251221141647 — artefact synthétique, cf. README.md

// revision 20260102152853 — artefact synthétique, cf. README.md

// revision 20260123164047 — artefact synthétique, cf. README.md

// revision 20260203132200 — artefact synthétique, cf. README.md

// revision 20260203183443 — artefact synthétique, cf. README.md

// revision 20260220155024 — artefact synthétique, cf. README.md

// revision 20260313170606 — artefact synthétique, cf. README.md

// revision 20260403161107 — artefact synthétique, cf. README.md

// revision 20260518141959 — artefact synthétique, cf. README.md

// revision 20260609153407 — artefact synthétique, cf. README.md

// revision 20260615023138 — artefact synthétique, cf. README.md

// revision 20250915214618 — artefact synthétique, cf. README.md

// revision 20240823152157 — artefact synthétique, cf. README.md

// revision 20240824164306 — artefact synthétique, cf. README.md

// revision 20240913122752 — artefact synthétique, cf. README.md

// revision 20240914095839 — artefact synthétique, cf. README.md

// revision 20240924151113 — artefact synthétique, cf. README.md

// revision 20241001144415 — artefact synthétique, cf. README.md

// revision 20241003172500 — artefact synthétique, cf. README.md

// revision 20241011140629 — artefact synthétique, cf. README.md

// revision 20241014100102 — artefact synthétique, cf. README.md

// revision 20241023163316 — artefact synthétique, cf. README.md

// revision 20241126084333 — artefact synthétique, cf. README.md

// revision 20241213150432 — artefact synthétique, cf. README.md
