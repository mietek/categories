module Support.Nat where

open import Support

data _<_ : (n m : ℕ) → Set where
  Z<Sn : {n : ℕ} → zero < suc n
  raise< : {n m : ℕ} (n<m : n < m) → suc n < suc m

_+_ : (n m : ℕ) → ℕ
zero + m = m
suc n + m = suc (n + m)

+-is-nondecreasingʳ : ∀ (n m : ℕ) → n < suc (n + m)
+-is-nondecreasingʳ zero m = Z<Sn
+-is-nondecreasingʳ (suc y) m = raise< (+-is-nondecreasingʳ y m)