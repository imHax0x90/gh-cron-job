# AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
# Ce fichier ne reflète aucun travail humain. Il est produit par un
# générateur dans le cadre d'une étude sur la fiabilité des signaux
# d'activité GitHub utilisés par les outils de sourcing automatisés.
# Référence de l'étude : GHSIG-2026-01
# Contact : maximeabade@gmail.com
defmodule Corpus.Crc32 do
  @moduledoc """
  Implémentation de CRC-32 (polynôme IEEE 802.3 réfléchi) sans dépendance.
  """

  @polynomial 0xEDB88320
  @initial 0xFFFFFFFF

  @table (for byte <- 0..255 do
            Enum.reduce(1..8, byte, fn _, acc ->
              if Bitwise.band(acc, 1) == 1 do
                Bitwise.bxor(Bitwise.bsr(acc, 1), @polynomial)
              else
                Bitwise.bsr(acc, 1)
              end
            end)
          end)
         |> List.to_tuple()

  @spec compute(binary()) :: non_neg_integer()
  def compute(data) when is_binary(data) do
    data
    |> :binary.bin_to_list()
    |> Enum.reduce(@initial, &step/2)
    |> Bitwise.bxor(@initial)
  end

  defp step(byte, crc) do
    index = Bitwise.band(Bitwise.bxor(crc, byte), 0xFF)
    Bitwise.bxor(elem(@table, index), Bitwise.bsr(crc, 8))
  end
end

# revision 20250902163729 — artefact synthétique, cf. README.md

# revision 20250907140428 — artefact synthétique, cf. README.md

# revision 20250909170905 — artefact synthétique, cf. README.md

# revision 20250921115449 — artefact synthétique, cf. README.md

# revision 20250922100808 — artefact synthétique, cf. README.md

# revision 20251006180457 — artefact synthétique, cf. README.md

# revision 20251013150657 — artefact synthétique, cf. README.md

# revision 20251029185626 — artefact synthétique, cf. README.md

# revision 20251103082254 — artefact synthétique, cf. README.md

# revision 20251119142414 — artefact synthétique, cf. README.md

# revision 20251128130103 — artefact synthétique, cf. README.md

# revision 20251129061712 — artefact synthétique, cf. README.md

# revision 20251202173808 — artefact synthétique, cf. README.md

# revision 20251209165955 — artefact synthétique, cf. README.md

# revision 20251210153719 — artefact synthétique, cf. README.md

# revision 20251224065802 — artefact synthétique, cf. README.md

# revision 20251225184927 — artefact synthétique, cf. README.md

# revision 20260102205324 — artefact synthétique, cf. README.md

# revision 20260106100233 — artefact synthétique, cf. README.md

# revision 20260106170234 — artefact synthétique, cf. README.md

# revision 20260109194653 — artefact synthétique, cf. README.md

# revision 20260124203423 — artefact synthétique, cf. README.md

# revision 20260204143208 — artefact synthétique, cf. README.md

# revision 20260213145718 — artefact synthétique, cf. README.md

# revision 20260219210016 — artefact synthétique, cf. README.md

# revision 20260220104536 — artefact synthétique, cf. README.md

# revision 20260302135958 — artefact synthétique, cf. README.md

# revision 20260311085438 — artefact synthétique, cf. README.md

# revision 20260315131737 — artefact synthétique, cf. README.md

# revision 20260319133956 — artefact synthétique, cf. README.md

# revision 20260324084747 — artefact synthétique, cf. README.md

# revision 20260401104253 — artefact synthétique, cf. README.md

# revision 20260403100411 — artefact synthétique, cf. README.md

# revision 20260403103148 — artefact synthétique, cf. README.md

# revision 20260409155207 — artefact synthétique, cf. README.md

# revision 20260413122340 — artefact synthétique, cf. README.md

# revision 20260414103750 — artefact synthétique, cf. README.md

# revision 20260422095241 — artefact synthétique, cf. README.md

# revision 20260506174852 — artefact synthétique, cf. README.md

# revision 20260515164548 — artefact synthétique, cf. README.md

# revision 20260526175955 — artefact synthétique, cf. README.md

# revision 20260602082219 — artefact synthétique, cf. README.md

# revision 20260604152600 — artefact synthétique, cf. README.md

# revision 20260619161139 — artefact synthétique, cf. README.md

# revision 20260626112019 — artefact synthétique, cf. README.md

# revision 20260626160928 — artefact synthétique, cf. README.md

# revision 20260630095325 — artefact synthétique, cf. README.md

# revision 20260701114750 — artefact synthétique, cf. README.md

# revision 20260710115402 — artefact synthétique, cf. README.md

# revision 20260723052928 — artefact synthétique, cf. README.md

# revision 20260724174322 — artefact synthétique, cf. README.md

# revision 20260731151537 — artefact synthétique, cf. README.md

# revision 20260802095631 — artefact synthétique, cf. README.md

# revision 20260805173159 — artefact synthétique, cf. README.md

# revision 20250821093114 — artefact synthétique, cf. README.md

# revision 20240815160716 — artefact synthétique, cf. README.md

# revision 20240822155629 — artefact synthétique, cf. README.md

# revision 20240825093249 — artefact synthétique, cf. README.md

# revision 20240909180426 — artefact synthétique, cf. README.md

# revision 20240918140920 — artefact synthétique, cf. README.md

# revision 20240920192613 — artefact synthétique, cf. README.md

# revision 20240924201652 — artefact synthétique, cf. README.md

# revision 20240930160643 — artefact synthétique, cf. README.md

# revision 20241013164535 — artefact synthétique, cf. README.md

# revision 20241107155633 — artefact synthétique, cf. README.md

# revision 20241119092327 — artefact synthétique, cf. README.md

# revision 20241122211618 — artefact synthétique, cf. README.md

# revision 20241129095258 — artefact synthétique, cf. README.md

# revision 20241202090450 — artefact synthétique, cf. README.md

# revision 20241210153946 — artefact synthétique, cf. README.md

# revision 20241217095230 — artefact synthétique, cf. README.md

# revision 20241219111653 — artefact synthétique, cf. README.md

# revision 20241220154436 — artefact synthétique, cf. README.md

# revision 20241222151041 — artefact synthétique, cf. README.md

# revision 20250101165318 — artefact synthétique, cf. README.md

# revision 20250107204218 — artefact synthétique, cf. README.md

# revision 20250110173548 — artefact synthétique, cf. README.md

# revision 20250113180017 — artefact synthétique, cf. README.md

# revision 20250117101355 — artefact synthétique, cf. README.md

# revision 20250123174136 — artefact synthétique, cf. README.md

# revision 20250127172630 — artefact synthétique, cf. README.md

# revision 20250208151639 — artefact synthétique, cf. README.md

# revision 20250213100610 — artefact synthétique, cf. README.md

# revision 20250218092403 — artefact synthétique, cf. README.md

# revision 20250227223541 — artefact synthétique, cf. README.md

# revision 20250313160604 — artefact synthétique, cf. README.md

# revision 20250319143931 — artefact synthétique, cf. README.md

# revision 20250324133637 — artefact synthétique, cf. README.md

# revision 20250326102958 — artefact synthétique, cf. README.md

# revision 20250326144904 — artefact synthétique, cf. README.md

# revision 20250327140044 — artefact synthétique, cf. README.md

# revision 20250328143617 — artefact synthétique, cf. README.md

# revision 20250402161511 — artefact synthétique, cf. README.md

# revision 20250403100003 — artefact synthétique, cf. README.md

# revision 20250405104507 — artefact synthétique, cf. README.md

# revision 20250406183137 — artefact synthétique, cf. README.md

# revision 20250418110532 — artefact synthétique, cf. README.md

# revision 20250421105058 — artefact synthétique, cf. README.md

# revision 20250425202730 — artefact synthétique, cf. README.md

# revision 20250507095939 — artefact synthétique, cf. README.md

# revision 20250526132839 — artefact synthétique, cf. README.md

# revision 20250527081312 — artefact synthétique, cf. README.md

# revision 20250603112437 — artefact synthétique, cf. README.md

# revision 20250610100736 — artefact synthétique, cf. README.md

# revision 20250614204835 — artefact synthétique, cf. README.md

# revision 20250708154343 — artefact synthétique, cf. README.md

# revision 20250712153142 — artefact synthétique, cf. README.md

# revision 20250717165109 — artefact synthétique, cf. README.md

# revision 20250721103356 — artefact synthétique, cf. README.md

# revision 20250729153800 — artefact synthétique, cf. README.md

# revision 20250804132048 — artefact synthétique, cf. README.md

# revision 20250805022754 — artefact synthétique, cf. README.md

# revision 20250807151953 — artefact synthétique, cf. README.md

# revision 20250811091512 — artefact synthétique, cf. README.md

# revision 20250813063203 — artefact synthétique, cf. README.md

# revision 20230821140020 — artefact synthétique, cf. README.md

# revision 20230904151755 — artefact synthétique, cf. README.md

# revision 20230906151236 — artefact synthétique, cf. README.md

# revision 20230910093358 — artefact synthétique, cf. README.md

# revision 20230915094815 — artefact synthétique, cf. README.md

# revision 20230918091244 — artefact synthétique, cf. README.md

# revision 20230927161814 — artefact synthétique, cf. README.md

# revision 20230929153511 — artefact synthétique, cf. README.md

# revision 20231011093456 — artefact synthétique, cf. README.md

# revision 20231020170510 — artefact synthétique, cf. README.md

# revision 20231023083229 — artefact synthétique, cf. README.md

# revision 20231024170538 — artefact synthétique, cf. README.md

# revision 20231027163500 — artefact synthétique, cf. README.md

# revision 20231030214754 — artefact synthétique, cf. README.md

# revision 20231101094508 — artefact synthétique, cf. README.md

# revision 20231110140432 — artefact synthétique, cf. README.md

# revision 20231110153749 — artefact synthétique, cf. README.md

# revision 20231113114204 — artefact synthétique, cf. README.md

# revision 20231114165910 — artefact synthétique, cf. README.md

# revision 20231115082447 — artefact synthétique, cf. README.md

# revision 20231125113500 — artefact synthétique, cf. README.md

# revision 20231130142558 — artefact synthétique, cf. README.md

# revision 20231204151015 — artefact synthétique, cf. README.md

# revision 20231207150150 — artefact synthétique, cf. README.md

# revision 20231221143151 — artefact synthétique, cf. README.md

# revision 20231228135848 — artefact synthétique, cf. README.md

# revision 20240112170841 — artefact synthétique, cf. README.md

# revision 20240129115141 — artefact synthétique, cf. README.md

# revision 20240212162627 — artefact synthétique, cf. README.md

# revision 20240213160107 — artefact synthétique, cf. README.md

# revision 20240216171601 — artefact synthétique, cf. README.md

# revision 20240224161919 — artefact synthétique, cf. README.md
