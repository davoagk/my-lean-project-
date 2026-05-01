-- Theorems about natural number operations
theorem nat_add_comm (n m : Nat) : n + m = m + n := by
  induction n with
  | zero => simp
  | succ n ih => omega

theorem nat_mul_comm (n m : Nat) : n * m = m * n := by
  induction n with
  | zero => simp
  | succ n ih => simp [Nat.succ_mul, Nat.mul_succ, ih]
