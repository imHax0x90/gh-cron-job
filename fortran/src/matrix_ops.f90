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
