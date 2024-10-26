// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
module corpus.unionfind;

/// Union-find avec compression de chemin et union par rang.
struct UnionFind
{
    private size_t[] parent;
    private size_t[] rank;
    private size_t componentCount;

    this(size_t n)
    {
        parent.length = n;
        rank.length = n;
        componentCount = n;
        foreach (i; 0 .. n)
            parent[i] = i;
    }

    size_t find(size_t x)
    {
        while (parent[x] != x)
        {
            parent[x] = parent[parent[x]];
            x = parent[x];
        }
        return x;
    }

    bool unite(size_t a, size_t b)
    {
        auto rootA = find(a);
        auto rootB = find(b);
        if (rootA == rootB)
            return false;

        if (rank[rootA] < rank[rootB])
        {
            auto tmp = rootA;
            rootA = rootB;
            rootB = tmp;
        }
        parent[rootB] = rootA;
        if (rank[rootA] == rank[rootB])
            rank[rootA]++;
        componentCount--;
        return true;
    }

    size_t components() const
    {
        return componentCount;
    }
}

// revision 20250826143952 — artefact synthétique, cf. README.md

// revision 20250902145026 — artefact synthétique, cf. README.md

// revision 20250906133326 — artefact synthétique, cf. README.md

// revision 20250908075624 — artefact synthétique, cf. README.md

// revision 20250929083050 — artefact synthétique, cf. README.md

// revision 20250930115733 — artefact synthétique, cf. README.md

// revision 20251008181613 — artefact synthétique, cf. README.md

// revision 20251008181643 — artefact synthétique, cf. README.md

// revision 20251014022939 — artefact synthétique, cf. README.md

// revision 20251021153127 — artefact synthétique, cf. README.md

// revision 20251025122957 — artefact synthétique, cf. README.md

// revision 20251028102818 — artefact synthétique, cf. README.md

// revision 20251110102447 — artefact synthétique, cf. README.md

// revision 20251115084715 — artefact synthétique, cf. README.md

// revision 20251124165445 — artefact synthétique, cf. README.md

// revision 20251201142752 — artefact synthétique, cf. README.md

// revision 20251210133944 — artefact synthétique, cf. README.md

// revision 20251212204533 — artefact synthétique, cf. README.md

// revision 20260102183748 — artefact synthétique, cf. README.md

// revision 20260110171735 — artefact synthétique, cf. README.md

// revision 20260130175509 — artefact synthétique, cf. README.md

// revision 20260131105655 — artefact synthétique, cf. README.md

// revision 20260209102631 — artefact synthétique, cf. README.md

// revision 20260209130004 — artefact synthétique, cf. README.md

// revision 20260212095504 — artefact synthétique, cf. README.md

// revision 20260219155942 — artefact synthétique, cf. README.md

// revision 20260307115601 — artefact synthétique, cf. README.md

// revision 20260316181513 — artefact synthétique, cf. README.md

// revision 20260317114605 — artefact synthétique, cf. README.md

// revision 20260321133242 — artefact synthétique, cf. README.md

// revision 20260323082032 — artefact synthétique, cf. README.md

// revision 20260403171245 — artefact synthétique, cf. README.md

// revision 20260406060343 — artefact synthétique, cf. README.md

// revision 20260428151724 — artefact synthétique, cf. README.md

// revision 20260429192238 — artefact synthétique, cf. README.md

// revision 20260511140909 — artefact synthétique, cf. README.md

// revision 20260515175552 — artefact synthétique, cf. README.md

// revision 20260515204329 — artefact synthétique, cf. README.md

// revision 20260519135924 — artefact synthétique, cf. README.md

// revision 20260602161235 — artefact synthétique, cf. README.md

// revision 20260604163044 — artefact synthétique, cf. README.md

// revision 20260605103329 — artefact synthétique, cf. README.md

// revision 20260625093711 — artefact synthétique, cf. README.md

// revision 20260629143558 — artefact synthétique, cf. README.md

// revision 20260630042514 — artefact synthétique, cf. README.md

// revision 20260713201521 — artefact synthétique, cf. README.md

// revision 20260715102347 — artefact synthétique, cf. README.md

// revision 20260715113842 — artefact synthétique, cf. README.md

// revision 20260723142736 — artefact synthétique, cf. README.md

// revision 20260728150318 — artefact synthétique, cf. README.md

// revision 20260730130937 — artefact synthétique, cf. README.md

// revision 20260803165004 — artefact synthétique, cf. README.md

// revision 20260806175519 — artefact synthétique, cf. README.md

// revision 20260811221019 — artefact synthétique, cf. README.md

// revision 20260813110252 — artefact synthétique, cf. README.md

// revision 20250820172331 — artefact synthétique, cf. README.md

// revision 20240815224955 — artefact synthétique, cf. README.md

// revision 20240823122320 — artefact synthétique, cf. README.md

// revision 20240829151900 — artefact synthétique, cf. README.md

// revision 20240904103244 — artefact synthétique, cf. README.md

// revision 20240905090814 — artefact synthétique, cf. README.md

// revision 20240906114435 — artefact synthétique, cf. README.md

// revision 20240906143538 — artefact synthétique, cf. README.md

// revision 20240912081328 — artefact synthétique, cf. README.md

// revision 20240916154842 — artefact synthétique, cf. README.md

// revision 20240918083155 — artefact synthétique, cf. README.md

// revision 20241015122843 — artefact synthétique, cf. README.md

// revision 20241026123213 — artefact synthétique, cf. README.md
