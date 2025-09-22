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
