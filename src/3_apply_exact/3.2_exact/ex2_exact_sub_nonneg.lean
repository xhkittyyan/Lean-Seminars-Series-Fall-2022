import algebra.order.ring

variables {R : Type*} [ordered_ring R]
variables a b c : R

#check sub_nonneg

-- BEGIN
example : 0 ≤ b - a → a ≤ b := 
begin 
  intro h,
  rw sub_nonneg at h,
  sorry,
end

/- Alternatively -/
example : 0 ≤ b - a → a ≤ b := 
begin 
  intro h,
  exact sub_nonneg.mp h,
end

example : a ≤ b → 0 ≤ b - a := 
begin 
  intro h,
  rw ← sub_nonneg at h,
  sorry,
end

/- Alternatively -/
example : a ≤ b → 0 ≤ b - a := 
begin 
  intro h,
  sorry,
end
-- END