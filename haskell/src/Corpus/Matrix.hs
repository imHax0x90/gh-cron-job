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
