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

// revision 20250916151652 — artefact synthétique, cf. README.md

// revision 20250916152542 — artefact synthétique, cf. README.md

// revision 20250924135227 — artefact synthétique, cf. README.md

// revision 20250924151307 — artefact synthétique, cf. README.md

// revision 20250928073456 — artefact synthétique, cf. README.md

// revision 20250930170850 — artefact synthétique, cf. README.md

// revision 20251002221523 — artefact synthétique, cf. README.md

// revision 20251003094706 — artefact synthétique, cf. README.md

// revision 20251013220646 — artefact synthétique, cf. README.md

// revision 20251027200839 — artefact synthétique, cf. README.md

// revision 20251030112551 — artefact synthétique, cf. README.md

// revision 20251103130606 — artefact synthétique, cf. README.md

// revision 20251104174526 — artefact synthétique, cf. README.md

// revision 20251108162614 — artefact synthétique, cf. README.md

// revision 20251110165413 — artefact synthétique, cf. README.md

// revision 20251119174003 — artefact synthétique, cf. README.md

// revision 20251205192947 — artefact synthétique, cf. README.md

// revision 20251218140326 — artefact synthétique, cf. README.md

// revision 20251230155444 — artefact synthétique, cf. README.md

// revision 20260114154426 — artefact synthétique, cf. README.md

// revision 20260119161419 — artefact synthétique, cf. README.md

// revision 20260127080928 — artefact synthétique, cf. README.md

// revision 20260130114842 — artefact synthétique, cf. README.md

// revision 20260203155402 — artefact synthétique, cf. README.md

// revision 20260209105542 — artefact synthétique, cf. README.md

// revision 20260210110320 — artefact synthétique, cf. README.md

// revision 20260211151136 — artefact synthétique, cf. README.md

// revision 20260218191010 — artefact synthétique, cf. README.md

// revision 20260223073413 — artefact synthétique, cf. README.md

// revision 20260227145446 — artefact synthétique, cf. README.md

// revision 20260227194017 — artefact synthétique, cf. README.md

// revision 20260309152657 — artefact synthétique, cf. README.md

// revision 20260316105102 — artefact synthétique, cf. README.md

// revision 20260317142344 — artefact synthétique, cf. README.md

// revision 20260326214933 — artefact synthétique, cf. README.md

// revision 20260402150310 — artefact synthétique, cf. README.md

// revision 20260403191553 — artefact synthétique, cf. README.md

// revision 20260408203913 — artefact synthétique, cf. README.md

// revision 20260417115748 — artefact synthétique, cf. README.md

// revision 20260420163550 — artefact synthétique, cf. README.md

// revision 20260427194915 — artefact synthétique, cf. README.md

// revision 20260502150429 — artefact synthétique, cf. README.md

// revision 20260504072603 — artefact synthétique, cf. README.md

// revision 20260514170654 — artefact synthétique, cf. README.md

// revision 20260517101838 — artefact synthétique, cf. README.md

// revision 20260518152917 — artefact synthétique, cf. README.md

// revision 20260520190740 — artefact synthétique, cf. README.md

// revision 20260530073652 — artefact synthétique, cf. README.md

// revision 20260531091801 — artefact synthétique, cf. README.md

// revision 20260604152802 — artefact synthétique, cf. README.md

// revision 20260629150709 — artefact synthétique, cf. README.md

// revision 20260717030617 — artefact synthétique, cf. README.md

// revision 20260719172837 — artefact synthétique, cf. README.md

// revision 20260727180314 — artefact synthétique, cf. README.md

// revision 20260809065607 — artefact synthétique, cf. README.md

// revision 20250821165135 — artefact synthétique, cf. README.md

// revision 20240820102917 — artefact synthétique, cf. README.md

// revision 20240830144805 — artefact synthétique, cf. README.md

// revision 20240905095516 — artefact synthétique, cf. README.md

// revision 20240908131929 — artefact synthétique, cf. README.md

// revision 20241014210358 — artefact synthétique, cf. README.md

// revision 20241021183956 — artefact synthétique, cf. README.md

// revision 20241028090815 — artefact synthétique, cf. README.md

// revision 20241103073407 — artefact synthétique, cf. README.md

// revision 20241106160555 — artefact synthétique, cf. README.md

// revision 20241206162718 — artefact synthétique, cf. README.md

// revision 20241206195850 — artefact synthétique, cf. README.md

// revision 20241217120242 — artefact synthétique, cf. README.md

// revision 20241228130737 — artefact synthétique, cf. README.md

// revision 20241230141103 — artefact synthétique, cf. README.md

// revision 20250103120111 — artefact synthétique, cf. README.md

// revision 20250113180324 — artefact synthétique, cf. README.md

// revision 20250122191635 — artefact synthétique, cf. README.md

// revision 20250127155427 — artefact synthétique, cf. README.md

// revision 20250129170527 — artefact synthétique, cf. README.md

// revision 20250203070228 — artefact synthétique, cf. README.md

// revision 20250205195331 — artefact synthétique, cf. README.md

// revision 20250219162721 — artefact synthétique, cf. README.md

// revision 20250225112730 — artefact synthétique, cf. README.md

// revision 20250227150224 — artefact synthétique, cf. README.md

// revision 20250303153834 — artefact synthétique, cf. README.md

// revision 20250316163939 — artefact synthétique, cf. README.md

// revision 20250415172804 — artefact synthétique, cf. README.md

// revision 20250426074640 — artefact synthétique, cf. README.md

// revision 20250505051445 — artefact synthétique, cf. README.md

// revision 20250507151305 — artefact synthétique, cf. README.md

// revision 20250516182401 — artefact synthétique, cf. README.md

// revision 20250526124653 — artefact synthétique, cf. README.md

// revision 20250610102844 — artefact synthétique, cf. README.md

// revision 20250613182346 — artefact synthétique, cf. README.md

// revision 20250615070021 — artefact synthétique, cf. README.md

// revision 20250619205056 — artefact synthétique, cf. README.md

// revision 20250624151423 — artefact synthétique, cf. README.md

// revision 20250703112330 — artefact synthétique, cf. README.md

// revision 20250706165843 — artefact synthétique, cf. README.md

// revision 20250717173110 — artefact synthétique, cf. README.md

// revision 20250722123658 — artefact synthétique, cf. README.md

// revision 20250726171205 — artefact synthétique, cf. README.md

// revision 20250728183510 — artefact synthétique, cf. README.md

// revision 20230816104228 — artefact synthétique, cf. README.md

// revision 20230817150726 — artefact synthétique, cf. README.md

// revision 20230821083656 — artefact synthétique, cf. README.md

// revision 20230824105051 — artefact synthétique, cf. README.md

// revision 20230825090008 — artefact synthétique, cf. README.md

// revision 20230830112624 — artefact synthétique, cf. README.md

// revision 20230904151123 — artefact synthétique, cf. README.md

// revision 20230906193244 — artefact synthétique, cf. README.md

// revision 20230908143640 — artefact synthétique, cf. README.md

// revision 20230912095339 — artefact synthétique, cf. README.md

// revision 20230914093913 — artefact synthétique, cf. README.md

// revision 20230919144809 — artefact synthétique, cf. README.md

// revision 20230929182044 — artefact synthétique, cf. README.md

// revision 20231004211406 — artefact synthétique, cf. README.md

// revision 20231009090854 — artefact synthétique, cf. README.md

// revision 20231009150900 — artefact synthétique, cf. README.md

// revision 20231013113822 — artefact synthétique, cf. README.md

// revision 20231027192847 — artefact synthétique, cf. README.md

// revision 20231028171605 — artefact synthétique, cf. README.md

// revision 20231101105210 — artefact synthétique, cf. README.md

// revision 20231110091247 — artefact synthétique, cf. README.md

// revision 20231124175303 — artefact synthétique, cf. README.md

// revision 20231207210949 — artefact synthétique, cf. README.md

// revision 20231211154808 — artefact synthétique, cf. README.md

// revision 20231211174330 — artefact synthétique, cf. README.md

// revision 20231214160354 — artefact synthétique, cf. README.md

// revision 20231231141112 — artefact synthétique, cf. README.md

// revision 20240105163738 — artefact synthétique, cf. README.md

// revision 20240113145345 — artefact synthétique, cf. README.md

// revision 20240121222550 — artefact synthétique, cf. README.md

// revision 20240122103649 — artefact synthétique, cf. README.md
