-- Theorems about List operations
theorem list_append_nil (l : List α) : l ++ [] = l := by
  induction l with
  | nil => rfl
  | cons h t ih => simp

theorem list_length_append (l₁ l₂ : List α) :
    (l₁ ++ l₂).length = l₁.length + l₂.length := by
  induction l₁ with
  | nil => simp
  | cons h t ih => simp [ih]; omega

theorem list_reverse_length (l : List α) :
    l.reverse.length = l.length := by
  simp [List.length_reverse]
