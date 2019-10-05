/*
 * @lc app=leetcode.cn id=15 lang=rust
 *
 * [15] 三数之和
 */

impl Solution {
    
    pub fn three_sum(nums: Vec<i32>) -> Vec<Vec<i32>> {
        use std::collections::HashSet;
        let  mut result =vec![];
        let mut all_triple=Vec::<HashSet<i32>>::new();
        for i in 0..(nums.len()-2){
            for j in i+1..(nums.len()- 1){
                for k in j+1..nums.len(){
                    if nums[i]+nums[j]+nums[k]==0{
                        let mut triple=HashSet::new();
                        triple.insert(nums[i]);
                        triple.insert(nums[j]);
                        triple.insert(nums[k]);
                        if  !all_triple.contains(&triple){
                            all_triple.push(triple);
                             result.push(vec![nums[i],nums[j],nums[k]]);
                        }
                        
                    }
                }
            }
        }
        result
    }
}

