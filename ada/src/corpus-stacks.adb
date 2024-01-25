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

-- revision 20251117145226 — artefact synthétique, cf. README.md

-- revision 20251202092553 — artefact synthétique, cf. README.md

-- revision 20251218162809 — artefact synthétique, cf. README.md

-- revision 20251230141152 — artefact synthétique, cf. README.md

-- revision 20260102091954 — artefact synthétique, cf. README.md

-- revision 20260105083100 — artefact synthétique, cf. README.md

-- revision 20260105100955 — artefact synthétique, cf. README.md

-- revision 20260109102339 — artefact synthétique, cf. README.md

-- revision 20260114102856 — artefact synthétique, cf. README.md

-- revision 20260202192855 — artefact synthétique, cf. README.md

-- revision 20260210223030 — artefact synthétique, cf. README.md

-- revision 20260211021740 — artefact synthétique, cf. README.md

-- revision 20260216151049 — artefact synthétique, cf. README.md

-- revision 20260222152620 — artefact synthétique, cf. README.md

-- revision 20260223172832 — artefact synthétique, cf. README.md

-- revision 20260224113357 — artefact synthétique, cf. README.md

-- revision 20260304214636 — artefact synthétique, cf. README.md

-- revision 20260310151223 — artefact synthétique, cf. README.md

-- revision 20260312154715 — artefact synthétique, cf. README.md

-- revision 20260313111242 — artefact synthétique, cf. README.md

-- revision 20260319110956 — artefact synthétique, cf. README.md

-- revision 20260324103051 — artefact synthétique, cf. README.md

-- revision 20260326111712 — artefact synthétique, cf. README.md

-- revision 20260401152742 — artefact synthétique, cf. README.md

-- revision 20260405203225 — artefact synthétique, cf. README.md

-- revision 20260413135914 — artefact synthétique, cf. README.md

-- revision 20260417083832 — artefact synthétique, cf. README.md

-- revision 20260423145759 — artefact synthétique, cf. README.md

-- revision 20260424195401 — artefact synthétique, cf. README.md

-- revision 20260427163154 — artefact synthétique, cf. README.md

-- revision 20260527082253 — artefact synthétique, cf. README.md

-- revision 20260604151622 — artefact synthétique, cf. README.md

-- revision 20260610162736 — artefact synthétique, cf. README.md

-- revision 20260611110446 — artefact synthétique, cf. README.md

-- revision 20260615130259 — artefact synthétique, cf. README.md

-- revision 20260623082511 — artefact synthétique, cf. README.md

-- revision 20260628112103 — artefact synthétique, cf. README.md

-- revision 20260629123702 — artefact synthétique, cf. README.md

-- revision 20260629201153 — artefact synthétique, cf. README.md

-- revision 20260630162820 — artefact synthétique, cf. README.md

-- revision 20260715150929 — artefact synthétique, cf. README.md

-- revision 20260715203746 — artefact synthétique, cf. README.md

-- revision 20260717132355 — artefact synthétique, cf. README.md

-- revision 20260724152140 — artefact synthétique, cf. README.md

-- revision 20260810084041 — artefact synthétique, cf. README.md

-- revision 20250818192723 — artefact synthétique, cf. README.md

-- revision 20240816174424 — artefact synthétique, cf. README.md

-- revision 20240819114332 — artefact synthétique, cf. README.md

-- revision 20240822100638 — artefact synthétique, cf. README.md

-- revision 20240822130659 — artefact synthétique, cf. README.md

-- revision 20240826080407 — artefact synthétique, cf. README.md

-- revision 20240906155906 — artefact synthétique, cf. README.md

-- revision 20240923151716 — artefact synthétique, cf. README.md

-- revision 20241010111743 — artefact synthétique, cf. README.md

-- revision 20241030141112 — artefact synthétique, cf. README.md

-- revision 20241112080735 — artefact synthétique, cf. README.md

-- revision 20241119145335 — artefact synthétique, cf. README.md

-- revision 20241122052654 — artefact synthétique, cf. README.md

-- revision 20241122162150 — artefact synthétique, cf. README.md

-- revision 20241123090324 — artefact synthétique, cf. README.md

-- revision 20241202134130 — artefact synthétique, cf. README.md

-- revision 20241203070719 — artefact synthétique, cf. README.md

-- revision 20241211124744 — artefact synthétique, cf. README.md

-- revision 20241211143727 — artefact synthétique, cf. README.md

-- revision 20241217090232 — artefact synthétique, cf. README.md

-- revision 20241226164759 — artefact synthétique, cf. README.md

-- revision 20250103112954 — artefact synthétique, cf. README.md

-- revision 20250108102913 — artefact synthétique, cf. README.md

-- revision 20250109005442 — artefact synthétique, cf. README.md

-- revision 20250109114215 — artefact synthétique, cf. README.md

-- revision 20250113150331 — artefact synthétique, cf. README.md

-- revision 20250113161434 — artefact synthétique, cf. README.md

-- revision 20250123174854 — artefact synthétique, cf. README.md

-- revision 20250124104833 — artefact synthétique, cf. README.md

-- revision 20250129125444 — artefact synthétique, cf. README.md

-- revision 20250206093733 — artefact synthétique, cf. README.md

-- revision 20250210090051 — artefact synthétique, cf. README.md

-- revision 20250211102840 — artefact synthétique, cf. README.md

-- revision 20250219064645 — artefact synthétique, cf. README.md

-- revision 20250221140038 — artefact synthétique, cf. README.md

-- revision 20250318085654 — artefact synthétique, cf. README.md

-- revision 20250321184614 — artefact synthétique, cf. README.md

-- revision 20250410205910 — artefact synthétique, cf. README.md

-- revision 20250414182305 — artefact synthétique, cf. README.md

-- revision 20250415160802 — artefact synthétique, cf. README.md

-- revision 20250416170635 — artefact synthétique, cf. README.md

-- revision 20250417171513 — artefact synthétique, cf. README.md

-- revision 20250612234820 — artefact synthétique, cf. README.md

-- revision 20250708114159 — artefact synthétique, cf. README.md

-- revision 20250710150327 — artefact synthétique, cf. README.md

-- revision 20250710153256 — artefact synthétique, cf. README.md

-- revision 20250718212227 — artefact synthétique, cf. README.md

-- revision 20250727054030 — artefact synthétique, cf. README.md

-- revision 20250731084122 — artefact synthétique, cf. README.md

-- revision 20250801135148 — artefact synthétique, cf. README.md

-- revision 20250804103919 — artefact synthétique, cf. README.md

-- revision 20250804162916 — artefact synthétique, cf. README.md

-- revision 20250806144213 — artefact synthétique, cf. README.md

-- revision 20230816060528 — artefact synthétique, cf. README.md

-- revision 20230822092139 — artefact synthétique, cf. README.md

-- revision 20230823085827 — artefact synthétique, cf. README.md

-- revision 20230901092409 — artefact synthétique, cf. README.md

-- revision 20230919100905 — artefact synthétique, cf. README.md

-- revision 20231004155047 — artefact synthétique, cf. README.md

-- revision 20231008145939 — artefact synthétique, cf. README.md

-- revision 20231011092950 — artefact synthétique, cf. README.md

-- revision 20231025172120 — artefact synthétique, cf. README.md

-- revision 20231027100449 — artefact synthétique, cf. README.md

-- revision 20231102192823 — artefact synthétique, cf. README.md

-- revision 20231104111912 — artefact synthétique, cf. README.md

-- revision 20231108190754 — artefact synthétique, cf. README.md

-- revision 20231114185142 — artefact synthétique, cf. README.md

-- revision 20231116081011 — artefact synthétique, cf. README.md

-- revision 20231121132123 — artefact synthétique, cf. README.md

-- revision 20231121144710 — artefact synthétique, cf. README.md

-- revision 20231129143357 — artefact synthétique, cf. README.md

-- revision 20231211124703 — artefact synthétique, cf. README.md

-- revision 20231214155551 — artefact synthétique, cf. README.md

-- revision 20231218154149 — artefact synthétique, cf. README.md

-- revision 20240105194458 — artefact synthétique, cf. README.md

-- revision 20240108110953 — artefact synthétique, cf. README.md

-- revision 20240125094744 — artefact synthétique, cf. README.md
