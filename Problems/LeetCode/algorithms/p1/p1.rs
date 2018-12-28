pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut num_to_index = std::collections::HashMap::new();
        let mut pair_indices=vec![];
        for (i,n) in num.iter().enumerate(){
            match num_to_index.get(&(target-n)){
                Some(&j)=>{
                    let mut value = vec![j as i32,i as i32];
                    pair_indices.append(&mut value);
                    break;
                }
                None=>{
                    num_to_index.insert(n,i as i32);
                    continue;
                }
            }
        }
        pair_indices
        
    }