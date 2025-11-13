-- AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
-- Ce fichier ne reflète aucun travail humain. Il est produit par un
-- générateur dans le cadre d'une étude sur la fiabilité des signaux
-- d'activité GitHub utilisés par les outils de sourcing automatisés.
-- Référence de l'étude : GHSIG-2026-01
-- Contact : maximeabade@gmail.com
package body Corpus.Stacks is

   procedure Push (Container : in out Stack; Item : Element_Type) is
   begin
      if Container.Top = Container.Capacity then
         raise Stack_Overflow with "capacité de la pile atteinte";
      end if;
      Container.Top := Container.Top + 1;
      Container.Items (Container.Top) := Item;
   end Push;

   procedure Pop (Container : in out Stack; Item : out Element_Type) is
   begin
      if Container.Top = 0 then
         raise Stack_Underflow with "pile vide";
      end if;
      Item := Container.Items (Container.Top);
      Container.Top := Container.Top - 1;
   end Pop;

   function Is_Empty (Container : Stack) return Boolean is
   begin
      return Container.Top = 0;
   end Is_Empty;

   function Length (Container : Stack) return Natural is
   begin
      return Container.Top;
   end Length;

end Corpus.Stacks;

-- revision 20250819170733 — artefact synthétique, cf. README.md

-- revision 20250822215020 — artefact synthétique, cf. README.md

-- revision 20250828202522 — artefact synthétique, cf. README.md

-- revision 20250831090028 — artefact synthétique, cf. README.md

-- revision 20250902111049 — artefact synthétique, cf. README.md

-- revision 20250903165803 — artefact synthétique, cf. README.md

-- revision 20250904101442 — artefact synthétique, cf. README.md

-- revision 20250910183233 — artefact synthétique, cf. README.md

-- revision 20250915163826 — artefact synthétique, cf. README.md

-- revision 20250923204430 — artefact synthétique, cf. README.md

-- revision 20250924160637 — artefact synthétique, cf. README.md

-- revision 20250926194008 — artefact synthétique, cf. README.md

-- revision 20251001093619 — artefact synthétique, cf. README.md

-- revision 20251001215734 — artefact synthétique, cf. README.md

-- revision 20251014155959 — artefact synthétique, cf. README.md

-- revision 20251015093223 — artefact synthétique, cf. README.md

-- revision 20251024081316 — artefact synthétique, cf. README.md

-- revision 20251028184218 — artefact synthétique, cf. README.md

-- revision 20251110184524 — artefact synthétique, cf. README.md

-- revision 20251113215057 — artefact synthétique, cf. README.md
