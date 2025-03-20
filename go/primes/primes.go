// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package primes

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

// revision 20250922083714 — artefact synthétique, cf. README.md

// revision 20251010113358 — artefact synthétique, cf. README.md

// revision 20251010154851 — artefact synthétique, cf. README.md

// revision 20251030165724 — artefact synthétique, cf. README.md

// revision 20251128100227 — artefact synthétique, cf. README.md

// revision 20251216090128 — artefact synthétique, cf. README.md

// revision 20260119171602 — artefact synthétique, cf. README.md

// revision 20260205155738 — artefact synthétique, cf. README.md

// revision 20260306131433 — artefact synthétique, cf. README.md

// revision 20260306145214 — artefact synthétique, cf. README.md

// revision 20260327184400 — artefact synthétique, cf. README.md

// revision 20260515113519 — artefact synthétique, cf. README.md

// revision 20260603125638 — artefact synthétique, cf. README.md

// revision 20260622140113 — artefact synthétique, cf. README.md

// revision 20260622152852 — artefact synthétique, cf. README.md

// revision 20260702153103 — artefact synthétique, cf. README.md

// revision 20260723131010 — artefact synthétique, cf. README.md

// revision 20260724143710 — artefact synthétique, cf. README.md

// revision 20250912162824 — artefact synthétique, cf. README.md

// revision 20240824121553 — artefact synthétique, cf. README.md

// revision 20240902103020 — artefact synthétique, cf. README.md

// revision 20240917190858 — artefact synthétique, cf. README.md

// revision 20241012121931 — artefact synthétique, cf. README.md

// revision 20241031145529 — artefact synthétique, cf. README.md

// revision 20241211174410 — artefact synthétique, cf. README.md

// revision 20241227153729 — artefact synthétique, cf. README.md

// revision 20250109163214 — artefact synthétique, cf. README.md

// revision 20250117062824 — artefact synthétique, cf. README.md

// revision 20250129200012 — artefact synthétique, cf. README.md

// revision 20250320100321 — artefact synthétique, cf. README.md
