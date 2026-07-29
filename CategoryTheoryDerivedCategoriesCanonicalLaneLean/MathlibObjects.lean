import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure ChainComplex (A : Type u) [AddCommGroup A] where
  objects : ℤ → A
  differentials : (n : ℤ) → objects n → objects (n+1)
  d_squared : (n : ℤ) → differentials (n+1) ∘ differentials n = 0

structure HomotopyCategory (A : Type u) [AddCommGroup A] where
  complex : ChainComplex A
  homotopyEquiv : Type

structure DerivedCategory (A : Type u) [AddCommGroup A] where
  homotopyCategory : HomotopyCategory A
  quasiIsomorphismsInverted : Prop

structure DerivedAdmittedObject (A : Type u) [AddCommGroup A] where
  category : DerivedCategory A
  conclusion : quasiIsomorphismsInverted category

def DerivedWitnessClosed (O : DerivedAdmittedObject A) : Prop :=
  O.conclusion

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse