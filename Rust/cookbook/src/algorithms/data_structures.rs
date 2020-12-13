pub struct QuickFindUnionFind {
    id: Vec<u32>,
}

impl QuickFindUnionFind {
    fn new(n: usize) -> Self {
        let mut uf = QuickFindUnionFind {
            id: Vec::with_capacity(n),
        };
        for i in 0..n {
            uf.id[i] = i as u32;
        }
        uf
    }
    fn connected(&self, p: usize, q: usize) -> bool {
        if self.id[p] == self.id[q] {
            true
        } else {
            false
        }
    }
    fn union(&mut self, p: usize, q: usize) {
        let p_id = self.id[p];
        let q_id = self.id[q];
        for i in 0..self.id.len() {
            if self.id[i] == p_id {
                self.id[i] = q_id;
            }
        }
    }
}
