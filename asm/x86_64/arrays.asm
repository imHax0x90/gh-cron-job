; AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
; Ce fichier ne reflète aucun travail humain. Il est produit par un
; générateur dans le cadre d'une étude sur la fiabilité des signaux
; d'activité GitHub utilisés par les outils de sourcing automatisés.
; Référence de l'étude : GHSIG-2026-01
; Contact : maximeabade@gmail.com
; Somme d'un tableau d'entiers 64 bits — System V AMD64 ABI.
; rdi = pointeur vers le tableau, rsi = nombre d'éléments.
; Retourne la somme dans rax.

            section .text
            global  sum_i64
            global  max_i64

sum_i64:
            xor     rax, rax
            test    rsi, rsi
            jz      .done
.loop:
            add     rax, qword [rdi]
            add     rdi, 8
            dec     rsi
            jnz     .loop
.done:
            ret

; Maximum d'un tableau d'entiers 64 bits signés.
; rdi = pointeur, rsi = longueur. Retourne le max dans rax (0 si vide).
max_i64:
            xor     rax, rax
            test    rsi, rsi
            jz      .exit
            mov     rax, qword [rdi]
            add     rdi, 8
            dec     rsi
            jz      .exit
.scan:
            mov     rcx, qword [rdi]
            cmp     rcx, rax
            cmovg   rax, rcx
            add     rdi, 8
            dec     rsi
            jnz     .scan
.exit:
            ret

; revision 20250905203930 — artefact synthétique, cf. README.md

; revision 20250906155230 — artefact synthétique, cf. README.md

; revision 20250909150519 — artefact synthétique, cf. README.md

; revision 20250917093800 — artefact synthétique, cf. README.md

; revision 20250918100139 — artefact synthétique, cf. README.md

; revision 20250922091157 — artefact synthétique, cf. README.md

; revision 20250922151550 — artefact synthétique, cf. README.md

; revision 20250926124647 — artefact synthétique, cf. README.md

; revision 20250926180144 — artefact synthétique, cf. README.md

; revision 20250927153456 — artefact synthétique, cf. README.md

; revision 20250930181630 — artefact synthétique, cf. README.md

; revision 20251002115816 — artefact synthétique, cf. README.md

; revision 20251008171214 — artefact synthétique, cf. README.md

; revision 20251017154551 — artefact synthétique, cf. README.md

; revision 20251104083352 — artefact synthétique, cf. README.md

; revision 20251104200717 — artefact synthétique, cf. README.md

; revision 20251107161453 — artefact synthétique, cf. README.md

; revision 20251111001606 — artefact synthétique, cf. README.md

; revision 20251208185720 — artefact synthétique, cf. README.md

; revision 20251227141847 — artefact synthétique, cf. README.md

; revision 20260101103739 — artefact synthétique, cf. README.md

; revision 20260105115524 — artefact synthétique, cf. README.md

; revision 20260106155522 — artefact synthétique, cf. README.md

; revision 20260107104122 — artefact synthétique, cf. README.md

; revision 20260107193335 — artefact synthétique, cf. README.md

; revision 20260108095231 — artefact synthétique, cf. README.md

; revision 20260109080138 — artefact synthétique, cf. README.md

; revision 20260110200756 — artefact synthétique, cf. README.md

; revision 20260113065844 — artefact synthétique, cf. README.md

; revision 20260121091814 — artefact synthétique, cf. README.md

; revision 20260129114928 — artefact synthétique, cf. README.md

; revision 20260213142743 — artefact synthétique, cf. README.md

; revision 20260228233144 — artefact synthétique, cf. README.md

; revision 20260315140924 — artefact synthétique, cf. README.md

; revision 20260316085530 — artefact synthétique, cf. README.md

; revision 20260318112127 — artefact synthétique, cf. README.md

; revision 20260324201515 — artefact synthétique, cf. README.md

; revision 20260417091700 — artefact synthétique, cf. README.md

; revision 20260419212259 — artefact synthétique, cf. README.md

; revision 20260427132056 — artefact synthétique, cf. README.md

; revision 20260512191800 — artefact synthétique, cf. README.md

; revision 20260529151548 — artefact synthétique, cf. README.md

; revision 20260601031238 — artefact synthétique, cf. README.md

; revision 20260601152514 — artefact synthétique, cf. README.md

; revision 20260609193719 — artefact synthétique, cf. README.md

; revision 20260611184638 — artefact synthétique, cf. README.md

; revision 20260615112928 — artefact synthétique, cf. README.md

; revision 20260619094826 — artefact synthétique, cf. README.md

; revision 20260619192930 — artefact synthétique, cf. README.md

; revision 20260622085435 — artefact synthétique, cf. README.md

; revision 20260706231313 — artefact synthétique, cf. README.md

; revision 20260720110713 — artefact synthétique, cf. README.md

; revision 20260722083741 — artefact synthétique, cf. README.md

; revision 20260808174514 — artefact synthétique, cf. README.md

; revision 20260810174320 — artefact synthétique, cf. README.md

; revision 20260814171309 — artefact synthétique, cf. README.md

; revision 20250905200257 — artefact synthétique, cf. README.md

; revision 20240902171051 — artefact synthétique, cf. README.md

; revision 20240902234835 — artefact synthétique, cf. README.md

; revision 20240904073319 — artefact synthétique, cf. README.md

; revision 20240904182742 — artefact synthétique, cf. README.md

; revision 20240909211745 — artefact synthétique, cf. README.md

; revision 20240919161252 — artefact synthétique, cf. README.md

; revision 20241007095847 — artefact synthétique, cf. README.md

; revision 20241010154635 — artefact synthétique, cf. README.md

; revision 20241010173507 — artefact synthétique, cf. README.md

; revision 20241015180207 — artefact synthétique, cf. README.md

; revision 20241015200837 — artefact synthétique, cf. README.md

; revision 20241101113634 — artefact synthétique, cf. README.md

; revision 20241104080940 — artefact synthétique, cf. README.md

; revision 20241107225106 — artefact synthétique, cf. README.md

; revision 20241110114311 — artefact synthétique, cf. README.md

; revision 20241112175412 — artefact synthétique, cf. README.md

; revision 20241115203148 — artefact synthétique, cf. README.md

; revision 20241119102841 — artefact synthétique, cf. README.md

; revision 20241120070103 — artefact synthétique, cf. README.md

; revision 20241121090407 — artefact synthétique, cf. README.md

; revision 20241126154500 — artefact synthétique, cf. README.md

; revision 20241207145302 — artefact synthétique, cf. README.md

; revision 20241213073946 — artefact synthétique, cf. README.md

; revision 20241214170901 — artefact synthétique, cf. README.md

; revision 20241226143859 — artefact synthétique, cf. README.md

; revision 20250106160750 — artefact synthétique, cf. README.md

; revision 20250110092316 — artefact synthétique, cf. README.md

; revision 20250120073606 — artefact synthétique, cf. README.md

; revision 20250127121738 — artefact synthétique, cf. README.md

; revision 20250131142030 — artefact synthétique, cf. README.md

; revision 20250211125439 — artefact synthétique, cf. README.md

; revision 20250211141406 — artefact synthétique, cf. README.md

; revision 20250213060413 — artefact synthétique, cf. README.md

; revision 20250213131401 — artefact synthétique, cf. README.md
