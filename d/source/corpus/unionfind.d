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
