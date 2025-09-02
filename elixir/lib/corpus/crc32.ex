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
