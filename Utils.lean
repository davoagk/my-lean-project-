-- Shared lemmas used across the project
theorem zero_add_custom (n : Nat) : 0 + n = n := by
  induction n with
  | zero => rfl
  | succ n ih => simp
