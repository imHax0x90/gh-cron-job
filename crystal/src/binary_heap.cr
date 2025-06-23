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

# revision 20260213151946 — artefact synthétique, cf. README.md

# revision 20260224104330 — artefact synthétique, cf. README.md

# revision 20260304145921 — artefact synthétique, cf. README.md

# revision 20260318143807 — artefact synthétique, cf. README.md

# revision 20260408091824 — artefact synthétique, cf. README.md

# revision 20260408205900 — artefact synthétique, cf. README.md

# revision 20260409094234 — artefact synthétique, cf. README.md

# revision 20260417151614 — artefact synthétique, cf. README.md

# revision 20260501082346 — artefact synthétique, cf. README.md

# revision 20260503161235 — artefact synthétique, cf. README.md

# revision 20260512075313 — artefact synthétique, cf. README.md

# revision 20260512104314 — artefact synthétique, cf. README.md

# revision 20260514162126 — artefact synthétique, cf. README.md

# revision 20260518132738 — artefact synthétique, cf. README.md

# revision 20260520102112 — artefact synthétique, cf. README.md

# revision 20260603124737 — artefact synthétique, cf. README.md

# revision 20260603213026 — artefact synthétique, cf. README.md

# revision 20260605173729 — artefact synthétique, cf. README.md

# revision 20260614150715 — artefact synthétique, cf. README.md

# revision 20260615095503 — artefact synthétique, cf. README.md

# revision 20260619165400 — artefact synthétique, cf. README.md

# revision 20260628090320 — artefact synthétique, cf. README.md

# revision 20260701213945 — artefact synthétique, cf. README.md

# revision 20260706122812 — artefact synthétique, cf. README.md

# revision 20260710194136 — artefact synthétique, cf. README.md

# revision 20260710225952 — artefact synthétique, cf. README.md

# revision 20260711165639 — artefact synthétique, cf. README.md

# revision 20260720072736 — artefact synthétique, cf. README.md

# revision 20260720124550 — artefact synthétique, cf. README.md

# revision 20260722094844 — artefact synthétique, cf. README.md

# revision 20260727153727 — artefact synthétique, cf. README.md

# revision 20260730100331 — artefact synthétique, cf. README.md

# revision 20250821121721 — artefact synthétique, cf. README.md

# revision 20240818145430 — artefact synthétique, cf. README.md

# revision 20240819112109 — artefact synthétique, cf. README.md

# revision 20240820161301 — artefact synthétique, cf. README.md

# revision 20240822101918 — artefact synthétique, cf. README.md

# revision 20240828134151 — artefact synthétique, cf. README.md

# revision 20240905101543 — artefact synthétique, cf. README.md

# revision 20240908152440 — artefact synthétique, cf. README.md

# revision 20240911115339 — artefact synthétique, cf. README.md

# revision 20240914101622 — artefact synthétique, cf. README.md

# revision 20240919151418 — artefact synthétique, cf. README.md

# revision 20240922011323 — artefact synthétique, cf. README.md

# revision 20240923193209 — artefact synthétique, cf. README.md

# revision 20240927110256 — artefact synthétique, cf. README.md

# revision 20241001101116 — artefact synthétique, cf. README.md

# revision 20241014084201 — artefact synthétique, cf. README.md

# revision 20241109075700 — artefact synthétique, cf. README.md

# revision 20241115091036 — artefact synthétique, cf. README.md

# revision 20241128083005 — artefact synthétique, cf. README.md

# revision 20241129185241 — artefact synthétique, cf. README.md

# revision 20241203091340 — artefact synthétique, cf. README.md

# revision 20241223151427 — artefact synthétique, cf. README.md

# revision 20250112111003 — artefact synthétique, cf. README.md

# revision 20250113165523 — artefact synthétique, cf. README.md

# revision 20250115193334 — artefact synthétique, cf. README.md

# revision 20250116220047 — artefact synthétique, cf. README.md

# revision 20250117114726 — artefact synthétique, cf. README.md

# revision 20250122112251 — artefact synthétique, cf. README.md

# revision 20250122135625 — artefact synthétique, cf. README.md

# revision 20250124162350 — artefact synthétique, cf. README.md

# revision 20250127225713 — artefact synthétique, cf. README.md

# revision 20250129154039 — artefact synthétique, cf. README.md

# revision 20250130114940 — artefact synthétique, cf. README.md

# revision 20250203135638 — artefact synthétique, cf. README.md

# revision 20250209143639 — artefact synthétique, cf. README.md

# revision 20250211091734 — artefact synthétique, cf. README.md

# revision 20250218110603 — artefact synthétique, cf. README.md

# revision 20250220094015 — artefact synthétique, cf. README.md

# revision 20250302154328 — artefact synthétique, cf. README.md

# revision 20250305152612 — artefact synthétique, cf. README.md

# revision 20250306095004 — artefact synthétique, cf. README.md

# revision 20250306173614 — artefact synthétique, cf. README.md

# revision 20250313195159 — artefact synthétique, cf. README.md

# revision 20250316232008 — artefact synthétique, cf. README.md

# revision 20250318045643 — artefact synthétique, cf. README.md

# revision 20250325102727 — artefact synthétique, cf. README.md

# revision 20250328094310 — artefact synthétique, cf. README.md

# revision 20250328143444 — artefact synthétique, cf. README.md

# revision 20250405152650 — artefact synthétique, cf. README.md

# revision 20250408163551 — artefact synthétique, cf. README.md

# revision 20250408200217 — artefact synthétique, cf. README.md

# revision 20250411105030 — artefact synthétique, cf. README.md

# revision 20250417105458 — artefact synthétique, cf. README.md

# revision 20250509090221 — artefact synthétique, cf. README.md

# revision 20250526151420 — artefact synthétique, cf. README.md

# revision 20250609163520 — artefact synthétique, cf. README.md

# revision 20250618181237 — artefact synthétique, cf. README.md

# revision 20250620223654 — artefact synthétique, cf. README.md

# revision 20250623064822 — artefact synthétique, cf. README.md
