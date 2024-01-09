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

// revision 20260513084545 — artefact synthétique, cf. README.md

// revision 20260525170227 — artefact synthétique, cf. README.md

// revision 20260611090132 — artefact synthétique, cf. README.md

// revision 20260715150642 — artefact synthétique, cf. README.md

// revision 20260731142921 — artefact synthétique, cf. README.md

// revision 20260813164618 — artefact synthétique, cf. README.md

// revision 20250903091947 — artefact synthétique, cf. README.md

// revision 20240828172746 — artefact synthétique, cf. README.md

// revision 20241015063528 — artefact synthétique, cf. README.md

// revision 20241017122011 — artefact synthétique, cf. README.md

// revision 20241018162156 — artefact synthétique, cf. README.md

// revision 20241029153909 — artefact synthétique, cf. README.md

// revision 20241121140053 — artefact synthétique, cf. README.md

// revision 20241126110253 — artefact synthétique, cf. README.md

// revision 20241127142018 — artefact synthétique, cf. README.md

// revision 20241204105635 — artefact synthétique, cf. README.md

// revision 20250130145131 — artefact synthétique, cf. README.md

// revision 20250130153718 — artefact synthétique, cf. README.md

// revision 20250204125733 — artefact synthétique, cf. README.md

// revision 20250204174900 — artefact synthétique, cf. README.md

// revision 20250211172815 — artefact synthétique, cf. README.md

// revision 20250328200659 — artefact synthétique, cf. README.md

// revision 20250423103239 — artefact synthétique, cf. README.md

// revision 20250505173153 — artefact synthétique, cf. README.md

// revision 20250512095405 — artefact synthétique, cf. README.md

// revision 20250520100623 — artefact synthétique, cf. README.md

// revision 20250627091657 — artefact synthétique, cf. README.md

// revision 20250714102912 — artefact synthétique, cf. README.md

// revision 20250714104157 — artefact synthétique, cf. README.md

// revision 20250717170857 — artefact synthétique, cf. README.md

// revision 20230830161552 — artefact synthétique, cf. README.md

// revision 20231002164841 — artefact synthétique, cf. README.md

// revision 20231017080623 — artefact synthétique, cf. README.md

// revision 20231022233724 — artefact synthétique, cf. README.md

// revision 20231029153429 — artefact synthétique, cf. README.md

// revision 20231030091221 — artefact synthétique, cf. README.md

// revision 20231114183521 — artefact synthétique, cf. README.md

// revision 20231117174545 — artefact synthétique, cf. README.md

// revision 20231130114647 — artefact synthétique, cf. README.md

// revision 20231205180242 — artefact synthétique, cf. README.md

// revision 20231212131756 — artefact synthétique, cf. README.md

// revision 20240104090416 — artefact synthétique, cf. README.md

// revision 20240109081446 — artefact synthétique, cf. README.md
