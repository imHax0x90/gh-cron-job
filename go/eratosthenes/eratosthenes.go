// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
package eratosthenes

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

// revision 20250910125600 — artefact synthétique, cf. README.md

// revision 20251007112204 — artefact synthétique, cf. README.md

// revision 20251107075612 — artefact synthétique, cf. README.md

// revision 20251110131155 — artefact synthétique, cf. README.md

// revision 20251205092204 — artefact synthétique, cf. README.md

// revision 20251216204907 — artefact synthétique, cf. README.md

// revision 20251218193143 — artefact synthétique, cf. README.md

// revision 20251219184222 — artefact synthétique, cf. README.md

// revision 20251224182541 — artefact synthétique, cf. README.md

// revision 20260102165547 — artefact synthétique, cf. README.md

// revision 20260209103533 — artefact synthétique, cf. README.md

// revision 20260214133341 — artefact synthétique, cf. README.md

// revision 20260308095013 — artefact synthétique, cf. README.md

// revision 20260312172710 — artefact synthétique, cf. README.md

// revision 20260318165859 — artefact synthétique, cf. README.md

// revision 20260319101933 — artefact synthétique, cf. README.md

// revision 20260506091745 — artefact synthétique, cf. README.md
