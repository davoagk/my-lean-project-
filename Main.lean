import MyLeanProject


-- A simple theorem about natural numbers
theorem add_zero_custom (n : Nat) : n + 0 = n := by
  rfl


def main : IO Unit :=
  IO.println s!"Hello, Lean and Git!"
