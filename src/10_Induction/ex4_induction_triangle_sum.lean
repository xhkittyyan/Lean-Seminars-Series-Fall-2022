import tactic
open_locale big_operators
open finset

#check mul_add
#check sum_range_succ
#check nat.succ_eq_add_one

theorem sum_id (n : ℕ) : ∑ i in range (n + 1), i = n * (n + 1) / 2 :=
begin
  symmetry, 
  apply nat.div_eq_of_eq_mul_right (by norm_num : 0 < 2),
  induction n with n ih,
   { simp },
  rw [finset.sum_range_succ, mul_add 2, ←ih, nat.succ_eq_add_one],
  ring,
end

example (n : ℕ) : 2 * ∑ j in range (n + 1), j = n * (n + 1) :=
begin
  induction n with k h,
  { simp },
  { rw sum_range_succ,
    rw mul_add,
    rw h,
    rw nat.succ_eq_add_one,
    ring },
end
