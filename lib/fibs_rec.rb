def fibs_rec(target)
  (1..target).to_a.map { |i_target| fibs_rec_helper(i_target) }
end

def fibs_rec_helper(target)
  return 0 if target == 1
  return 1 if [2, 3].include?(target)

  fibs_rec_helper(target - 1) + fibs_rec_helper(target - 2)
end
