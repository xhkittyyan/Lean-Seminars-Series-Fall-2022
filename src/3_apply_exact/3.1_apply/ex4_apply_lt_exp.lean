import analysis.special_functions.exp

open real

variables a b c d e : â

#check le_refl
#check add_lt_add_of_lt_of_le
#check add_lt_add_of_le_of_lt
#check exp_lt_exp.mpr

-- BEGIN
example (hâ : a â¤ b) (hâ : c < d) : a + exp c + e < b + exp d + e :=
begin
  apply add_lt_add_of_lt_of_le,
  { sorry, },
  sorry,
end
-- END