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

; revision 20251022103103 — artefact synthétique, cf. README.md

; revision 20251103152947 — artefact synthétique, cf. README.md

; revision 20251106165343 — artefact synthétique, cf. README.md

; revision 20251117101314 — artefact synthétique, cf. README.md

; revision 20251125110304 — artefact synthétique, cf. README.md

; revision 20251125192206 — artefact synthétique, cf. README.md

; revision 20251202153350 — artefact synthétique, cf. README.md

; revision 20251207232206 — artefact synthétique, cf. README.md

; revision 20251214153511 — artefact synthétique, cf. README.md

; revision 20251220162707 — artefact synthétique, cf. README.md

; revision 20251223101949 — artefact synthétique, cf. README.md

; revision 20251229144556 — artefact synthétique, cf. README.md

; revision 20251229202644 — artefact synthétique, cf. README.md

; revision 20260109142951 — artefact synthétique, cf. README.md

; revision 20260109153736 — artefact synthétique, cf. README.md

; revision 20260120161418 — artefact synthétique, cf. README.md

; revision 20260121185023 — artefact synthétique, cf. README.md

; revision 20260125193016 — artefact synthétique, cf. README.md

; revision 20260202163728 — artefact synthétique, cf. README.md

; revision 20260203083500 — artefact synthétique, cf. README.md

; revision 20260205214501 — artefact synthétique, cf. README.md

; revision 20260211174424 — artefact synthétique, cf. README.md

; revision 20260213192428 — artefact synthétique, cf. README.md

; revision 20260225153048 — artefact synthétique, cf. README.md

; revision 20260310181017 — artefact synthétique, cf. README.md

; revision 20260322223614 — artefact synthétique, cf. README.md

; revision 20260328092818 — artefact synthétique, cf. README.md

; revision 20260409170230 — artefact synthétique, cf. README.md

; revision 20260419182847 — artefact synthétique, cf. README.md

; revision 20260423105902 — artefact synthétique, cf. README.md

; revision 20260504145928 — artefact synthétique, cf. README.md

; revision 20260511173631 — artefact synthétique, cf. README.md

; revision 20260513090312 — artefact synthétique, cf. README.md

; revision 20260513150744 — artefact synthétique, cf. README.md

; revision 20260518132648 — artefact synthétique, cf. README.md

; revision 20260521194116 — artefact synthétique, cf. README.md

; revision 20260525174138 — artefact synthétique, cf. README.md

; revision 20260602122008 — artefact synthétique, cf. README.md

; revision 20260606105906 — artefact synthétique, cf. README.md

; revision 20260610172001 — artefact synthétique, cf. README.md

; revision 20260612141045 — artefact synthétique, cf. README.md

; revision 20260616115307 — artefact synthétique, cf. README.md

; revision 20260619080743 — artefact synthétique, cf. README.md

; revision 20260629151117 — artefact synthétique, cf. README.md

; revision 20260708142540 — artefact synthétique, cf. README.md

; revision 20260713143347 — artefact synthétique, cf. README.md

; revision 20260723110119 — artefact synthétique, cf. README.md

; revision 20260724064900 — artefact synthétique, cf. README.md

; revision 20260730150655 — artefact synthétique, cf. README.md

; revision 20260731113448 — artefact synthétique, cf. README.md

; revision 20260731165540 — artefact synthétique, cf. README.md

; revision 20260805105105 — artefact synthétique, cf. README.md

; revision 20260813090146 — artefact synthétique, cf. README.md

; revision 20250819091903 — artefact synthétique, cf. README.md

; revision 20240815205854 — artefact synthétique, cf. README.md

; revision 20240816102539 — artefact synthétique, cf. README.md

; revision 20240827094336 — artefact synthétique, cf. README.md

; revision 20240827144033 — artefact synthétique, cf. README.md

; revision 20240827210851 — artefact synthétique, cf. README.md

; revision 20240827211900 — artefact synthétique, cf. README.md

; revision 20240904093751 — artefact synthétique, cf. README.md

; revision 20240913130930 — artefact synthétique, cf. README.md

; revision 20240918095846 — artefact synthétique, cf. README.md

; revision 20240924141928 — artefact synthétique, cf. README.md

; revision 20240926103122 — artefact synthétique, cf. README.md

; revision 20241013151636 — artefact synthétique, cf. README.md

; revision 20241017181901 — artefact synthétique, cf. README.md

; revision 20241024123644 — artefact synthétique, cf. README.md

; revision 20241029141637 — artefact synthétique, cf. README.md

; revision 20241106195813 — artefact synthétique, cf. README.md

; revision 20241107222536 — artefact synthétique, cf. README.md

; revision 20241114115332 — artefact synthétique, cf. README.md

; revision 20241119115002 — artefact synthétique, cf. README.md

; revision 20241121092119 — artefact synthétique, cf. README.md

; revision 20241205073804 — artefact synthétique, cf. README.md

; revision 20241206102352 — artefact synthétique, cf. README.md

; revision 20241211142028 — artefact synthétique, cf. README.md

; revision 20241223211036 — artefact synthétique, cf. README.md

; revision 20250103082047 — artefact synthétique, cf. README.md

; revision 20250108190651 — artefact synthétique, cf. README.md

; revision 20250114142036 — artefact synthétique, cf. README.md

; revision 20250115100155 — artefact synthétique, cf. README.md

; revision 20250115100804 — artefact synthétique, cf. README.md

; revision 20250120102908 — artefact synthétique, cf. README.md

; revision 20250131081958 — artefact synthétique, cf. README.md

; revision 20250203153245 — artefact synthétique, cf. README.md

; revision 20250210121853 — artefact synthétique, cf. README.md

; revision 20250303122330 — artefact synthétique, cf. README.md

; revision 20250312155128 — artefact synthétique, cf. README.md

; revision 20250313150913 — artefact synthétique, cf. README.md

; revision 20250315161727 — artefact synthétique, cf. README.md

; revision 20250401104157 — artefact synthétique, cf. README.md

; revision 20250411155120 — artefact synthétique, cf. README.md

; revision 20250414084627 — artefact synthétique, cf. README.md

; revision 20250415170432 — artefact synthétique, cf. README.md

; revision 20250422170747 — artefact synthétique, cf. README.md

; revision 20250501210801 — artefact synthétique, cf. README.md

; revision 20250502150220 — artefact synthétique, cf. README.md

; revision 20250509152607 — artefact synthétique, cf. README.md

; revision 20250510061222 — artefact synthétique, cf. README.md

; revision 20250619152215 — artefact synthétique, cf. README.md

; revision 20250710120641 — artefact synthétique, cf. README.md

; revision 20250715002154 — artefact synthétique, cf. README.md

; revision 20250725161101 — artefact synthétique, cf. README.md

; revision 20250730112006 — artefact synthétique, cf. README.md

; revision 20250801114941 — artefact synthétique, cf. README.md

; revision 20250806080643 — artefact synthétique, cf. README.md

; revision 20250806084310 — artefact synthétique, cf. README.md

; revision 20250809170013 — artefact synthétique, cf. README.md

; revision 20230821145032 — artefact synthétique, cf. README.md

; revision 20230829183433 — artefact synthétique, cf. README.md

; revision 20230830200144 — artefact synthétique, cf. README.md

; revision 20230904083825 — artefact synthétique, cf. README.md

; revision 20230906102727 — artefact synthétique, cf. README.md

; revision 20230908164036 — artefact synthétique, cf. README.md

; revision 20230919155241 — artefact synthétique, cf. README.md

; revision 20230919155339 — artefact synthétique, cf. README.md

; revision 20230920105231 — artefact synthétique, cf. README.md

; revision 20230925163020 — artefact synthétique, cf. README.md

; revision 20230928100636 — artefact synthétique, cf. README.md

; revision 20231015124758 — artefact synthétique, cf. README.md

; revision 20231021042451 — artefact synthétique, cf. README.md

; revision 20231024080049 — artefact synthétique, cf. README.md

; revision 20231024223747 — artefact synthétique, cf. README.md
