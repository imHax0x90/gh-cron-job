// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
const std = @import("std");

/// Tampon circulaire à capacité fixe déterminée à la compilation.
pub fn RingBuffer(comptime T: type, comptime capacity: usize) type {
    return struct {
        const Self = @This();

        items: [capacity]T = undefined,
        head: usize = 0,
        count: usize = 0,

        pub fn push(self: *Self, value: T) void {
            const slot = (self.head + self.count) % capacity;
            self.items[slot] = value;
            if (self.count == capacity) {
                self.head = (self.head + 1) % capacity;
            } else {
                self.count += 1;
            }
        }

        pub fn pop(self: *Self) ?T {
            if (self.count == 0) return null;
            const value = self.items[self.head];
            self.head = (self.head + 1) % capacity;
            self.count -= 1;
            return value;
        }

        pub fn len(self: *const Self) usize {
            return self.count;
        }
    };
}

pub const DefaultRing = RingBuffer(u64, 512);

test "wraps around when saturated" {
    var ring = DefaultRing{};
    var i: u64 = 0;
    while (i < 512 + 8) : (i += 1) ring.push(i);
    try std.testing.expectEqual(@as(usize, 512), ring.len());
    try std.testing.expectEqual(@as(?u64, 8), ring.pop());
}

// revision 20250925021523 — artefact synthétique, cf. README.md

// revision 20250926092805 — artefact synthétique, cf. README.md

// revision 20251013094256 — artefact synthétique, cf. README.md

// revision 20251021160527 — artefact synthétique, cf. README.md

// revision 20251027095034 — artefact synthétique, cf. README.md

// revision 20251031163045 — artefact synthétique, cf. README.md

// revision 20251103212006 — artefact synthétique, cf. README.md

// revision 20251109150528 — artefact synthétique, cf. README.md

// revision 20251110114503 — artefact synthétique, cf. README.md

// revision 20251114093916 — artefact synthétique, cf. README.md

// revision 20251114104432 — artefact synthétique, cf. README.md

// revision 20251117183306 — artefact synthétique, cf. README.md

// revision 20251118113831 — artefact synthétique, cf. README.md

// revision 20251128051302 — artefact synthétique, cf. README.md

// revision 20251129104630 — artefact synthétique, cf. README.md

// revision 20251201160256 — artefact synthétique, cf. README.md

// revision 20260113091042 — artefact synthétique, cf. README.md

// revision 20260113143051 — artefact synthétique, cf. README.md

// revision 20260119090034 — artefact synthétique, cf. README.md

// revision 20260204142349 — artefact synthétique, cf. README.md

// revision 20260208102608 — artefact synthétique, cf. README.md

// revision 20260223075852 — artefact synthétique, cf. README.md

// revision 20260223135502 — artefact synthétique, cf. README.md

// revision 20260227100630 — artefact synthétique, cf. README.md

// revision 20260227140842 — artefact synthétique, cf. README.md

// revision 20260313110009 — artefact synthétique, cf. README.md

// revision 20260316165112 — artefact synthétique, cf. README.md

// revision 20260325141418 — artefact synthétique, cf. README.md

// revision 20260327092747 — artefact synthétique, cf. README.md

// revision 20260329134252 — artefact synthétique, cf. README.md

// revision 20260401094116 — artefact synthétique, cf. README.md

// revision 20260501211020 — artefact synthétique, cf. README.md

// revision 20260509120534 — artefact synthétique, cf. README.md

// revision 20260515072506 — artefact synthétique, cf. README.md

// revision 20260517090022 — artefact synthétique, cf. README.md

// revision 20260519090837 — artefact synthétique, cf. README.md

// revision 20260520185426 — artefact synthétique, cf. README.md

// revision 20260529112638 — artefact synthétique, cf. README.md

// revision 20260530230438 — artefact synthétique, cf. README.md

// revision 20260531155809 — artefact synthétique, cf. README.md

// revision 20260608164839 — artefact synthétique, cf. README.md

// revision 20260609214625 — artefact synthétique, cf. README.md

// revision 20260610153316 — artefact synthétique, cf. README.md

// revision 20260626211415 — artefact synthétique, cf. README.md

// revision 20260709163720 — artefact synthétique, cf. README.md

// revision 20260721111812 — artefact synthétique, cf. README.md

// revision 20260728070257 — artefact synthétique, cf. README.md

// revision 20260730154537 — artefact synthétique, cf. README.md

// revision 20260805135549 — artefact synthétique, cf. README.md

// revision 20260810170350 — artefact synthétique, cf. README.md

// revision 20260812160859 — artefact synthétique, cf. README.md

// revision 20250828175657 — artefact synthétique, cf. README.md

// revision 20240819013159 — artefact synthétique, cf. README.md

// revision 20240823061616 — artefact synthétique, cf. README.md

// revision 20240823153355 — artefact synthétique, cf. README.md

// revision 20240827115309 — artefact synthétique, cf. README.md

// revision 20240902104710 — artefact synthétique, cf. README.md

// revision 20240906152549 — artefact synthétique, cf. README.md

// revision 20240915171153 — artefact synthétique, cf. README.md

// revision 20240915191429 — artefact synthétique, cf. README.md

// revision 20240919123703 — artefact synthétique, cf. README.md

// revision 20240921093242 — artefact synthétique, cf. README.md

// revision 20240930211925 — artefact synthétique, cf. README.md

// revision 20241010084630 — artefact synthétique, cf. README.md

// revision 20241015200931 — artefact synthétique, cf. README.md

// revision 20241017100437 — artefact synthétique, cf. README.md

// revision 20241030165800 — artefact synthétique, cf. README.md

// revision 20241106104501 — artefact synthétique, cf. README.md

// revision 20241120134110 — artefact synthétique, cf. README.md

// revision 20241120193034 — artefact synthétique, cf. README.md

// revision 20241130191713 — artefact synthétique, cf. README.md

// revision 20241223122409 — artefact synthétique, cf. README.md

// revision 20250107125855 — artefact synthétique, cf. README.md

// revision 20250107200630 — artefact synthétique, cf. README.md

// revision 20250107214445 — artefact synthétique, cf. README.md

// revision 20250123151239 — artefact synthétique, cf. README.md

// revision 20250124122015 — artefact synthétique, cf. README.md

// revision 20250124144650 — artefact synthétique, cf. README.md

// revision 20250206224728 — artefact synthétique, cf. README.md

// revision 20250213094229 — artefact synthétique, cf. README.md

// revision 20250301115928 — artefact synthétique, cf. README.md

// revision 20250307073228 — artefact synthétique, cf. README.md

// revision 20250313115515 — artefact synthétique, cf. README.md

// revision 20250318153558 — artefact synthétique, cf. README.md

// revision 20250327215922 — artefact synthétique, cf. README.md

// revision 20250402093458 — artefact synthétique, cf. README.md

// revision 20250407153723 — artefact synthétique, cf. README.md

// revision 20250410104620 — artefact synthétique, cf. README.md

// revision 20250417152811 — artefact synthétique, cf. README.md

// revision 20250418184112 — artefact synthétique, cf. README.md

// revision 20250418213134 — artefact synthétique, cf. README.md

// revision 20250424102756 — artefact synthétique, cf. README.md

// revision 20250502160326 — artefact synthétique, cf. README.md

// revision 20250509122602 — artefact synthétique, cf. README.md

// revision 20250514184156 — artefact synthétique, cf. README.md

// revision 20250523085738 — artefact synthétique, cf. README.md

// revision 20250527152316 — artefact synthétique, cf. README.md

// revision 20250530082153 — artefact synthétique, cf. README.md

// revision 20250616130840 — artefact synthétique, cf. README.md

// revision 20250624210116 — artefact synthétique, cf. README.md

// revision 20250701121109 — artefact synthétique, cf. README.md
