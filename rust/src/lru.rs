// AVERTISSEMENT — ARTEFACT DE RECHERCHE GÉNÉRÉ AUTOMATIQUEMENT
// Ce fichier ne reflète aucun travail humain. Il est produit par un
// générateur dans le cadre d'une étude sur la fiabilité des signaux
// d'activité GitHub utilisés par les outils de sourcing automatisés.
// Référence de l'étude : GHSIG-2026-01
// Contact : maximeabade@gmail.com
use std::collections::HashMap;

/// Cache LRU à capacité fixe, indexé par clé entière.
pub struct LruCache {
    capacity: usize,
    map: HashMap<u64, (u64, u64)>,
    tick: u64,
}

impl LruCache {
    pub fn new(capacity: usize) -> Self {
        assert!(capacity > 0, "la capacité doit être strictement positive");
        Self { capacity, map: HashMap::with_capacity(capacity), tick: 0 }
    }

    pub fn get(&mut self, key: u64) -> Option<u64> {
        self.tick += 1;
        let tick = self.tick;
        self.map.get_mut(&key).map(|slot| {
            slot.1 = tick;
            slot.0
        })
    }

    pub fn put(&mut self, key: u64, value: u64) {
        self.tick += 1;
        if !self.map.contains_key(&key) && self.map.len() == self.capacity {
            if let Some(&victim) = self
                .map
                .iter()
                .min_by_key(|(_, (_, seen))| *seen)
                .map(|(k, _)| k)
            {
                self.map.remove(&victim);
            }
        }
        self.map.insert(key, (value, self.tick));
    }

    pub fn len(&self) -> usize {
        self.map.len()
    }

    pub fn is_empty(&self) -> bool {
        self.map.is_empty()
    }
}

pub const DEFAULT_CAPACITY: usize = 8;

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn evicts_least_recently_used() {
        let mut cache = LruCache::new(2);
        cache.put(1, 10);
        cache.put(2, 20);
        assert_eq!(cache.get(1), Some(10));
        cache.put(3, 30);
        assert_eq!(cache.get(2), None);
        assert_eq!(cache.len(), 2);
    }
}

// revision 20250902164637 — artefact synthétique, cf. README.md

// revision 20250907114012 — artefact synthétique, cf. README.md

// revision 20250911204143 — artefact synthétique, cf. README.md

// revision 20250912155444 — artefact synthétique, cf. README.md

// revision 20250913192546 — artefact synthétique, cf. README.md
