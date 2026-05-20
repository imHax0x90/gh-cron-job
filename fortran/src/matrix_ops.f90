! AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
! Ce fichier ne reflète aucun travail humain. Il est produit par un
! générateur dans le cadre d'une étude sur la fiabilité des signaux
! d'activité GitHub utilisés par les outils de sourcing automatisés.
! Référence de l'étude : GHSIG-2026-01
! Contact : maximeabade@gmail.com
module matrix_ops
    implicit none
    private
    public :: matmul_naive, trace

contains

    !> Produit matriciel classique, sans BLAS, pour référence de banc d'essai.
    pure function matmul_naive(a, b) result(c)
        real(kind=8), intent(in) :: a(:, :), b(:, :)
        real(kind=8) :: c(size(a, 1), size(b, 2))
        integer :: i, j, k

        c = 0.0d0
        do j = 1, size(b, 2)
            do k = 1, size(a, 2)
                do i = 1, size(a, 1)
                    c(i, j) = c(i, j) + a(i, k) * b(k, j)
                end do
            end do
        end do
    end function matmul_naive

    pure function trace(a) result(total)
        real(kind=8), intent(in) :: a(:, :)
        real(kind=8) :: total
        integer :: i

        total = 0.0d0
        do i = 1, min(size(a, 1), size(a, 2))
            total = total + a(i, i)
        end do
    end function trace

end module matrix_ops

! revision 20250819102537 — artefact synthétique, cf. README.md

! revision 20250819154152 — artefact synthétique, cf. README.md

! revision 20250822164043 — artefact synthétique, cf. README.md

! revision 20250828093856 — artefact synthétique, cf. README.md

! revision 20250919125651 — artefact synthétique, cf. README.md

! revision 20250925090230 — artefact synthétique, cf. README.md

! revision 20250926080829 — artefact synthétique, cf. README.md

! revision 20251006080241 — artefact synthétique, cf. README.md

! revision 20251007111101 — artefact synthétique, cf. README.md

! revision 20251024171853 — artefact synthétique, cf. README.md

! revision 20251027171856 — artefact synthétique, cf. README.md

! revision 20251028180103 — artefact synthétique, cf. README.md

! revision 20251104144225 — artefact synthétique, cf. README.md

! revision 20251110100245 — artefact synthétique, cf. README.md

! revision 20251113165559 — artefact synthétique, cf. README.md

! revision 20251117094636 — artefact synthétique, cf. README.md

! revision 20251126161147 — artefact synthétique, cf. README.md

! revision 20251215130852 — artefact synthétique, cf. README.md

! revision 20251218221134 — artefact synthétique, cf. README.md

! revision 20251230151421 — artefact synthétique, cf. README.md

! revision 20251230164213 — artefact synthétique, cf. README.md

! revision 20260105200812 — artefact synthétique, cf. README.md

! revision 20260126113332 — artefact synthétique, cf. README.md

! revision 20260201214646 — artefact synthétique, cf. README.md

! revision 20260203112040 — artefact synthétique, cf. README.md

! revision 20260205102103 — artefact synthétique, cf. README.md

! revision 20260215170617 — artefact synthétique, cf. README.md

! revision 20260218191541 — artefact synthétique, cf. README.md

! revision 20260309092738 — artefact synthétique, cf. README.md

! revision 20260310100538 — artefact synthétique, cf. README.md

! revision 20260310142649 — artefact synthétique, cf. README.md

! revision 20260313150933 — artefact synthétique, cf. README.md

! revision 20260316135054 — artefact synthétique, cf. README.md

! revision 20260323184223 — artefact synthétique, cf. README.md

! revision 20260324124705 — artefact synthétique, cf. README.md

! revision 20260324181536 — artefact synthétique, cf. README.md

! revision 20260327070026 — artefact synthétique, cf. README.md

! revision 20260401161035 — artefact synthétique, cf. README.md

! revision 20260404124535 — artefact synthétique, cf. README.md

! revision 20260420183739 — artefact synthétique, cf. README.md

! revision 20260427160814 — artefact synthétique, cf. README.md

! revision 20260427220520 — artefact synthétique, cf. README.md

! revision 20260507083303 — artefact synthétique, cf. README.md

! revision 20260520155510 — artefact synthétique, cf. README.md
