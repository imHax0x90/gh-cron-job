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

-- revision 20260326112004 — artefact synthétique, cf. README.md

-- revision 20260408084900 — artefact synthétique, cf. README.md

-- revision 20260409194729 — artefact synthétique, cf. README.md

-- revision 20260416181524 — artefact synthétique, cf. README.md

-- revision 20260422174423 — artefact synthétique, cf. README.md

-- revision 20260424064356 — artefact synthétique, cf. README.md

-- revision 20260505090714 — artefact synthétique, cf. README.md

-- revision 20260520132728 — artefact synthétique, cf. README.md

-- revision 20260527015850 — artefact synthétique, cf. README.md

-- revision 20260527064510 — artefact synthétique, cf. README.md

-- revision 20260528143023 — artefact synthétique, cf. README.md

-- revision 20260529115750 — artefact synthétique, cf. README.md

-- revision 20260603212127 — artefact synthétique, cf. README.md

-- revision 20260609080518 — artefact synthétique, cf. README.md

-- revision 20260612143113 — artefact synthétique, cf. README.md

-- revision 20260624231543 — artefact synthétique, cf. README.md

-- revision 20260625143344 — artefact synthétique, cf. README.md

-- revision 20260627143723 — artefact synthétique, cf. README.md

-- revision 20260630210208 — artefact synthétique, cf. README.md

-- revision 20260709141648 — artefact synthétique, cf. README.md

-- revision 20260713180818 — artefact synthétique, cf. README.md

-- revision 20260716075402 — artefact synthétique, cf. README.md

-- revision 20260716144600 — artefact synthétique, cf. README.md

-- revision 20260716164823 — artefact synthétique, cf. README.md

-- revision 20260717100049 — artefact synthétique, cf. README.md

-- revision 20260719155534 — artefact synthétique, cf. README.md

-- revision 20260724105343 — artefact synthétique, cf. README.md

-- revision 20260726203829 — artefact synthétique, cf. README.md

-- revision 20260728131336 — artefact synthétique, cf. README.md

-- revision 20260730142903 — artefact synthétique, cf. README.md

-- revision 20260730155311 — artefact synthétique, cf. README.md

-- revision 20260804074139 — artefact synthétique, cf. README.md

-- revision 20260804142636 — artefact synthétique, cf. README.md

-- revision 20260812155315 — artefact synthétique, cf. README.md

-- revision 20260812192646 — artefact synthétique, cf. README.md

-- revision 20260813182622 — artefact synthétique, cf. README.md

-- revision 20260814155914 — artefact synthétique, cf. README.md

-- revision 20250826144035 — artefact synthétique, cf. README.md

-- revision 20240823150545 — artefact synthétique, cf. README.md

-- revision 20240904160848 — artefact synthétique, cf. README.md

-- revision 20240906092945 — artefact synthétique, cf. README.md

-- revision 20240913093127 — artefact synthétique, cf. README.md

-- revision 20241004153010 — artefact synthétique, cf. README.md

-- revision 20241017181606 — artefact synthétique, cf. README.md

-- revision 20241018150213 — artefact synthétique, cf. README.md

-- revision 20241023112703 — artefact synthétique, cf. README.md

-- revision 20241023130941 — artefact synthétique, cf. README.md

-- revision 20241024192540 — artefact synthétique, cf. README.md

-- revision 20241029150506 — artefact synthétique, cf. README.md

-- revision 20241029150854 — artefact synthétique, cf. README.md

-- revision 20241121222947 — artefact synthétique, cf. README.md

-- revision 20241127161452 — artefact synthétique, cf. README.md

-- revision 20241201094139 — artefact synthétique, cf. README.md

-- revision 20241202101145 — artefact synthétique, cf. README.md

-- revision 20241210214737 — artefact synthétique, cf. README.md

-- revision 20241217170506 — artefact synthétique, cf. README.md

-- revision 20241220205746 — artefact synthétique, cf. README.md

-- revision 20250107090220 — artefact synthétique, cf. README.md

-- revision 20250109141307 — artefact synthétique, cf. README.md

-- revision 20250110072326 — artefact synthétique, cf. README.md

-- revision 20250116081705 — artefact synthétique, cf. README.md

-- revision 20250117150851 — artefact synthétique, cf. README.md

-- revision 20250120070616 — artefact synthétique, cf. README.md

-- revision 20250123143339 — artefact synthétique, cf. README.md

-- revision 20250123161956 — artefact synthétique, cf. README.md

-- revision 20250125145250 — artefact synthétique, cf. README.md

-- revision 20250212100116 — artefact synthétique, cf. README.md

-- revision 20250224115449 — artefact synthétique, cf. README.md

-- revision 20250304105615 — artefact synthétique, cf. README.md

-- revision 20250306100226 — artefact synthétique, cf. README.md

-- revision 20250312153418 — artefact synthétique, cf. README.md

-- revision 20250314132519 — artefact synthétique, cf. README.md

-- revision 20250319164930 — artefact synthétique, cf. README.md

-- revision 20250320111956 — artefact synthétique, cf. README.md

-- revision 20250324205352 — artefact synthétique, cf. README.md

-- revision 20250421100044 — artefact synthétique, cf. README.md

-- revision 20250422115642 — artefact synthétique, cf. README.md

-- revision 20250425094657 — artefact synthétique, cf. README.md

-- revision 20250428162359 — artefact synthétique, cf. README.md

-- revision 20250508161524 — artefact synthétique, cf. README.md

-- revision 20250515132050 — artefact synthétique, cf. README.md

-- revision 20250523195245 — artefact synthétique, cf. README.md

-- revision 20250526143334 — artefact synthétique, cf. README.md

-- revision 20250601102336 — artefact synthétique, cf. README.md

-- revision 20250617091919 — artefact synthétique, cf. README.md

-- revision 20250618154159 — artefact synthétique, cf. README.md

-- revision 20250620191139 — artefact synthétique, cf. README.md

-- revision 20250628224235 — artefact synthétique, cf. README.md

-- revision 20250702102350 — artefact synthétique, cf. README.md

-- revision 20250702173133 — artefact synthétique, cf. README.md

-- revision 20250724083349 — artefact synthétique, cf. README.md

-- revision 20250802095450 — artefact synthétique, cf. README.md

-- revision 20230825081856 — artefact synthétique, cf. README.md

-- revision 20230828120647 — artefact synthétique, cf. README.md

-- revision 20230828160909 — artefact synthétique, cf. README.md

-- revision 20230901073656 — artefact synthétique, cf. README.md

-- revision 20230901081342 — artefact synthétique, cf. README.md

-- revision 20230907094937 — artefact synthétique, cf. README.md

-- revision 20230908153031 — artefact synthétique, cf. README.md

-- revision 20230911144254 — artefact synthétique, cf. README.md

-- revision 20230911153117 — artefact synthétique, cf. README.md

-- revision 20230917102236 — artefact synthétique, cf. README.md

-- revision 20230917135459 — artefact synthétique, cf. README.md

-- revision 20230920143640 — artefact synthétique, cf. README.md

-- revision 20230927173838 — artefact synthétique, cf. README.md

-- revision 20231006081821 — artefact synthétique, cf. README.md

-- revision 20231006102226 — artefact synthétique, cf. README.md

-- revision 20231006105706 — artefact synthétique, cf. README.md

-- revision 20231006185718 — artefact synthétique, cf. README.md

-- revision 20231007002953 — artefact synthétique, cf. README.md

-- revision 20231009164739 — artefact synthétique, cf. README.md

-- revision 20231016050426 — artefact synthétique, cf. README.md

-- revision 20231025221903 — artefact synthétique, cf. README.md

-- revision 20231030153643 — artefact synthétique, cf. README.md

-- revision 20231101092257 — artefact synthétique, cf. README.md

-- revision 20231102091441 — artefact synthétique, cf. README.md

-- revision 20231114205023 — artefact synthétique, cf. README.md

-- revision 20231127065659 — artefact synthétique, cf. README.md

-- revision 20231201161209 — artefact synthétique, cf. README.md

-- revision 20240108144154 — artefact synthétique, cf. README.md

-- revision 20240116143357 — artefact synthétique, cf. README.md

-- revision 20240131112237 — artefact synthétique, cf. README.md

-- revision 20240201082345 — artefact synthétique, cf. README.md

-- revision 20240202105259 — artefact synthétique, cf. README.md

-- revision 20240205112646 — artefact synthétique, cf. README.md

-- revision 20240307200215 — artefact synthétique, cf. README.md

-- revision 20240314101527 — artefact synthétique, cf. README.md

-- revision 20240314103936 — artefact synthétique, cf. README.md

-- revision 20240318094831 — artefact synthétique, cf. README.md

-- revision 20240320200940 — artefact synthétique, cf. README.md

-- revision 20240321183821 — artefact synthétique, cf. README.md

-- revision 20240325122844 — artefact synthétique, cf. README.md

-- revision 20240331043305 — artefact synthétique, cf. README.md

-- revision 20240401140343 — artefact synthétique, cf. README.md

-- revision 20240401191639 — artefact synthétique, cf. README.md

-- revision 20240403203036 — artefact synthétique, cf. README.md

-- revision 20240416074000 — artefact synthétique, cf. README.md

-- revision 20240425090604 — artefact synthétique, cf. README.md
