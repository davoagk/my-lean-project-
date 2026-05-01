-- Theorems about List operations
theorem list_append_nil (l : List α) : l ++ [] = l := by
  induction l with
  | nil => rfl
  | cons h t ih => simp [List.cons_append, ih]

theorem list_length_append (l₁ l₂ : List α) :
    (l₁ ++ l₂).length = l₁.length + l₂.length := by
  induction l₁ with
  | nil => simp
  | cons h t ih => simp [List.cons_append, ih, Nat.add_assoc]
