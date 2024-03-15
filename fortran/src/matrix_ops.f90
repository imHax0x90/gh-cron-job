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

! revision 20260525072739 — artefact synthétique, cf. README.md

! revision 20260602131353 — artefact synthétique, cf. README.md

! revision 20260609151456 — artefact synthétique, cf. README.md

! revision 20260611164227 — artefact synthétique, cf. README.md

! revision 20260613124520 — artefact synthétique, cf. README.md

! revision 20260622084159 — artefact synthétique, cf. README.md

! revision 20260622173107 — artefact synthétique, cf. README.md

! revision 20260625134919 — artefact synthétique, cf. README.md

! revision 20260702112024 — artefact synthétique, cf. README.md

! revision 20260704092545 — artefact synthétique, cf. README.md

! revision 20260722222813 — artefact synthétique, cf. README.md

! revision 20260727093018 — artefact synthétique, cf. README.md

! revision 20260727222125 — artefact synthétique, cf. README.md

! revision 20260804140315 — artefact synthétique, cf. README.md

! revision 20260806114205 — artefact synthétique, cf. README.md

! revision 20250818152122 — artefact synthétique, cf. README.md

! revision 20240822114237 — artefact synthétique, cf. README.md

! revision 20240905204953 — artefact synthétique, cf. README.md

! revision 20240912095758 — artefact synthétique, cf. README.md

! revision 20240917140855 — artefact synthétique, cf. README.md

! revision 20240922170138 — artefact synthétique, cf. README.md

! revision 20241002162436 — artefact synthétique, cf. README.md

! revision 20241006160129 — artefact synthétique, cf. README.md

! revision 20241011090317 — artefact synthétique, cf. README.md

! revision 20241011113928 — artefact synthétique, cf. README.md

! revision 20241018184752 — artefact synthétique, cf. README.md

! revision 20241020151419 — artefact synthétique, cf. README.md

! revision 20241119191422 — artefact synthétique, cf. README.md

! revision 20241121095336 — artefact synthétique, cf. README.md

! revision 20241202102335 — artefact synthétique, cf. README.md

! revision 20241221090924 — artefact synthétique, cf. README.md

! revision 20241226183733 — artefact synthétique, cf. README.md

! revision 20241230174403 — artefact synthétique, cf. README.md

! revision 20250106160545 — artefact synthétique, cf. README.md

! revision 20250110071625 — artefact synthétique, cf. README.md

! revision 20250113113538 — artefact synthétique, cf. README.md

! revision 20250122225936 — artefact synthétique, cf. README.md

! revision 20250124103631 — artefact synthétique, cf. README.md

! revision 20250129164942 — artefact synthétique, cf. README.md

! revision 20250206230359 — artefact synthétique, cf. README.md

! revision 20250214101820 — artefact synthétique, cf. README.md

! revision 20250214105241 — artefact synthétique, cf. README.md

! revision 20250214142704 — artefact synthétique, cf. README.md

! revision 20250220160820 — artefact synthétique, cf. README.md

! revision 20250223113227 — artefact synthétique, cf. README.md

! revision 20250304104008 — artefact synthétique, cf. README.md

! revision 20250304142432 — artefact synthétique, cf. README.md

! revision 20250304195723 — artefact synthétique, cf. README.md

! revision 20250305072846 — artefact synthétique, cf. README.md

! revision 20250305091248 — artefact synthétique, cf. README.md

! revision 20250313104316 — artefact synthétique, cf. README.md

! revision 20250313183846 — artefact synthétique, cf. README.md

! revision 20250318151727 — artefact synthétique, cf. README.md

! revision 20250319102425 — artefact synthétique, cf. README.md

! revision 20250320151203 — artefact synthétique, cf. README.md

! revision 20250330115533 — artefact synthétique, cf. README.md

! revision 20250402110657 — artefact synthétique, cf. README.md

! revision 20250407113036 — artefact synthétique, cf. README.md

! revision 20250408172449 — artefact synthétique, cf. README.md

! revision 20250415190318 — artefact synthétique, cf. README.md

! revision 20250416213808 — artefact synthétique, cf. README.md

! revision 20250418085656 — artefact synthétique, cf. README.md

! revision 20250420001103 — artefact synthétique, cf. README.md

! revision 20250503151455 — artefact synthétique, cf. README.md

! revision 20250504092326 — artefact synthétique, cf. README.md

! revision 20250514110528 — artefact synthétique, cf. README.md

! revision 20250523110637 — artefact synthétique, cf. README.md

! revision 20250603134455 — artefact synthétique, cf. README.md

! revision 20250613113945 — artefact synthétique, cf. README.md

! revision 20250620095229 — artefact synthétique, cf. README.md

! revision 20250709014955 — artefact synthétique, cf. README.md

! revision 20250709093909 — artefact synthétique, cf. README.md

! revision 20250716101527 — artefact synthétique, cf. README.md

! revision 20250725150053 — artefact synthétique, cf. README.md

! revision 20250806074858 — artefact synthétique, cf. README.md

! revision 20250806153423 — artefact synthétique, cf. README.md

! revision 20250810143720 — artefact synthétique, cf. README.md

! revision 20250813111204 — artefact synthétique, cf. README.md

! revision 20250814234857 — artefact synthétique, cf. README.md

! revision 20230822112820 — artefact synthétique, cf. README.md

! revision 20230822132412 — artefact synthétique, cf. README.md

! revision 20230825133711 — artefact synthétique, cf. README.md

! revision 20230903092537 — artefact synthétique, cf. README.md

! revision 20230916132628 — artefact synthétique, cf. README.md

! revision 20230921114606 — artefact synthétique, cf. README.md

! revision 20231013061355 — artefact synthétique, cf. README.md

! revision 20231019031355 — artefact synthétique, cf. README.md

! revision 20231031165831 — artefact synthétique, cf. README.md

! revision 20231107141700 — artefact synthétique, cf. README.md

! revision 20231110113725 — artefact synthétique, cf. README.md

! revision 20231117152721 — artefact synthétique, cf. README.md

! revision 20231202131256 — artefact synthétique, cf. README.md

! revision 20231204154102 — artefact synthétique, cf. README.md

! revision 20231208162418 — artefact synthétique, cf. README.md

! revision 20231211152146 — artefact synthétique, cf. README.md

! revision 20231221085951 — artefact synthétique, cf. README.md

! revision 20231224093441 — artefact synthétique, cf. README.md

! revision 20231227211027 — artefact synthétique, cf. README.md

! revision 20240110164801 — artefact synthétique, cf. README.md

! revision 20240111114138 — artefact synthétique, cf. README.md

! revision 20240116131108 — artefact synthétique, cf. README.md

! revision 20240118103854 — artefact synthétique, cf. README.md

! revision 20240118131836 — artefact synthétique, cf. README.md

! revision 20240119094507 — artefact synthétique, cf. README.md

! revision 20240126224951 — artefact synthétique, cf. README.md

! revision 20240202094618 — artefact synthétique, cf. README.md

! revision 20240208144001 — artefact synthétique, cf. README.md

! revision 20240212083145 — artefact synthétique, cf. README.md

! revision 20240305082129 — artefact synthétique, cf. README.md

! revision 20240307122910 — artefact synthétique, cf. README.md

! revision 20240313091418 — artefact synthétique, cf. README.md

! revision 20240314152350 — artefact synthétique, cf. README.md

! revision 20240315105041 — artefact synthétique, cf. README.md
