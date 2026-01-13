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
