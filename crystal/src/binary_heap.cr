# AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
# Ce fichier ne reflète aucun travail humain. Il est produit par un
# générateur dans le cadre d'une étude sur la fiabilité des signaux
# d'activité GitHub utilisés par les outils de sourcing automatisés.
# Référence de l'étude : GHSIG-2026-01
# Contact : maximeabade@gmail.com
# File de priorité binaire (tas min) générique.
class BinaryHeap(T)
  def initialize
    @items = [] of T
  end

  def size : Int32
    @items.size
  end

  def empty? : Bool
    @items.empty?
  end

  def push(value : T) : Nil
    @items << value
    sift_up(@items.size - 1)
  end

  def pop : T?
    return nil if @items.empty?
    root = @items[0]
    last = @items.pop
    unless @items.empty?
      @items[0] = last
      sift_down(0)
    end
    root
  end

  private def sift_up(index : Int32) : Nil
    while index > 0
      parent = (index - 1) // 2
      break if @items[parent] <= @items[index]
      @items.swap(parent, index)
      index = parent
    end
  end

  private def sift_down(index : Int32) : Nil
    loop do
      smallest = index
      left = 2 * index + 1
      right = left + 1
      smallest = left if left < @items.size && @items[left] < @items[smallest]
      smallest = right if right < @items.size && @items[right] < @items[smallest]
      break if smallest == index
      @items.swap(smallest, index)
      index = smallest
    end
  end
end

# revision 20250828213637 — artefact synthétique, cf. README.md

# revision 20250917132312 — artefact synthétique, cf. README.md

# revision 20251001104318 — artefact synthétique, cf. README.md

# revision 20251002124751 — artefact synthétique, cf. README.md

# revision 20251010141003 — artefact synthétique, cf. README.md

# revision 20251013120331 — artefact synthétique, cf. README.md

# revision 20251019122217 — artefact synthétique, cf. README.md

# revision 20251028005112 — artefact synthétique, cf. README.md

# revision 20251105113110 — artefact synthétique, cf. README.md

# revision 20251107171154 — artefact synthétique, cf. README.md

# revision 20251114195535 — artefact synthétique, cf. README.md

# revision 20251130144554 — artefact synthétique, cf. README.md

# revision 20251207003250 — artefact synthétique, cf. README.md

# revision 20251210084237 — artefact synthétique, cf. README.md

# revision 20251210101351 — artefact synthétique, cf. README.md

# revision 20251216085906 — artefact synthétique, cf. README.md

# revision 20251219124013 — artefact synthétique, cf. README.md

# revision 20251219150733 — artefact synthétique, cf. README.md

# revision 20260102094424 — artefact synthétique, cf. README.md

# revision 20260113115110 — artefact synthétique, cf. README.md

# revision 20260119081159 — artefact synthétique, cf. README.md

# revision 20260209150904 — artefact synthétique, cf. README.md

# revision 20260209195858 — artefact synthétique, cf. README.md

# revision 20260210143609 — artefact synthétique, cf. README.md
