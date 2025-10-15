#lang racket/base
; AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
; Ce fichier ne reflète aucun travail humain. Il est produit par un
; générateur dans le cadre d'une étude sur la fiabilité des signaux
; d'activité GitHub utilisés par les outils de sourcing automatisés.
; Référence de l'étude : GHSIG-2026-01
; Contact : maximeabade@gmail.com
(provide binary-search insert-sorted)

;; Recherche dichotomique sur un vecteur trié. Renvoie l'index ou #f.
(define (binary-search vec target [cmp -])
  (let loop ([lo 0] [hi (sub1 (vector-length vec))])
    (cond
      [(> lo hi) #f]
      [else
       (define mid (quotient (+ lo hi) 2))
       (define delta (cmp (vector-ref vec mid) target))
       (cond
         [(zero? delta) mid]
         [(negative? delta) (loop (add1 mid) hi)]
         [else (loop lo (sub1 mid))])])))

;; Insertion préservant l'ordre dans une liste triée.
(define (insert-sorted lst value [less-than? <])
  (cond
    [(null? lst) (list value)]
    [(less-than? value (car lst)) (cons value lst)]
    [else (cons (car lst) (insert-sorted (cdr lst) value less-than?))]))

; revision 20250819225210 — artefact synthétique, cf. README.md

; revision 20250824085021 — artefact synthétique, cf. README.md

; revision 20250825095408 — artefact synthétique, cf. README.md

; revision 20250826095328 — artefact synthétique, cf. README.md

; revision 20250913081225 — artefact synthétique, cf. README.md

; revision 20250915095810 — artefact synthétique, cf. README.md

; revision 20250922212849 — artefact synthétique, cf. README.md

; revision 20251008113848 — artefact synthétique, cf. README.md

; revision 20251015133247 — artefact synthétique, cf. README.md
