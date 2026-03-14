-- AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
-- Ce fichier ne reflète aucun travail humain. Il est produit par un
-- générateur dans le cadre d'une étude sur la fiabilité des signaux
-- d'activité GitHub utilisés par les outils de sourcing automatisés.
-- Référence de l'étude : GHSIG-2026-01
-- Contact : maximeabade@gmail.com
module Corpus.Matrix
  ( Matrix (..)
  , multiply
  , identity
  , transpose
  ) where

newtype Matrix a = Matrix { rows :: [[a]] }
  deriving (Eq, Show)

transpose :: Matrix a -> Matrix a
transpose (Matrix []) = Matrix []
transpose (Matrix xs)
  | any null xs = Matrix []
  | otherwise = Matrix (map head xs : rows (transpose (Matrix (map tail xs))))

multiply :: Num a => Matrix a -> Matrix a -> Matrix a
multiply (Matrix as) b =
  let Matrix bt = transpose b
   in Matrix [[sum (zipWith (*) row col) | col <- bt] | row <- as]

identity :: Num a => Int -> Matrix a
identity n = Matrix [[if i == j then 1 else 0 | j <- [1 .. n]] | i <- [1 .. n]]

-- revision 20250828142235 — artefact synthétique, cf. README.md

-- revision 20250831100943 — artefact synthétique, cf. README.md

-- revision 20250908144702 — artefact synthétique, cf. README.md

-- revision 20250910164639 — artefact synthétique, cf. README.md

-- revision 20250918141932 — artefact synthétique, cf. README.md

-- revision 20251001152354 — artefact synthétique, cf. README.md

-- revision 20251005141630 — artefact synthétique, cf. README.md

-- revision 20251012134706 — artefact synthétique, cf. README.md

-- revision 20251016141632 — artefact synthétique, cf. README.md

-- revision 20251018132640 — artefact synthétique, cf. README.md

-- revision 20251018162527 — artefact synthétique, cf. README.md

-- revision 20251105104945 — artefact synthétique, cf. README.md

-- revision 20251106122102 — artefact synthétique, cf. README.md

-- revision 20251106175346 — artefact synthétique, cf. README.md

-- revision 20251111112241 — artefact synthétique, cf. README.md

-- revision 20251114083346 — artefact synthétique, cf. README.md

-- revision 20251117073614 — artefact synthétique, cf. README.md

-- revision 20251118110525 — artefact synthétique, cf. README.md

-- revision 20251121171717 — artefact synthétique, cf. README.md

-- revision 20251203193708 — artefact synthétique, cf. README.md

-- revision 20251221131051 — artefact synthétique, cf. README.md

-- revision 20251224154729 — artefact synthétique, cf. README.md

-- revision 20251224182456 — artefact synthétique, cf. README.md

-- revision 20251225152411 — artefact synthétique, cf. README.md

-- revision 20251225202902 — artefact synthétique, cf. README.md

-- revision 20251229135407 — artefact synthétique, cf. README.md

-- revision 20260101153357 — artefact synthétique, cf. README.md

-- revision 20260105115428 — artefact synthétique, cf. README.md

-- revision 20260114154407 — artefact synthétique, cf. README.md

-- revision 20260114202624 — artefact synthétique, cf. README.md

-- revision 20260118150559 — artefact synthétique, cf. README.md

-- revision 20260120231826 — artefact synthétique, cf. README.md

-- revision 20260202183946 — artefact synthétique, cf. README.md

-- revision 20260216150534 — artefact synthétique, cf. README.md

-- revision 20260310192243 — artefact synthétique, cf. README.md

-- revision 20260314145113 — artefact synthétique, cf. README.md
