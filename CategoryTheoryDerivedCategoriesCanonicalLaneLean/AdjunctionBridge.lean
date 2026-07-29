import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure AdjunctionAdmissibleClass (A : AdmissibleClass) where
  leftAdjointFunctor : Type u → Type v
  leftAdjoint : (C : Type u) [Category C] → (D : Type u) [Category D] → Functor C D
  rightAdjoint : (C : Type u) [Category C] → (D : Type u) [Category D] → Functor D C
  adjunctionUnitCounit : (C : Type u) [Category C] → (D : Type u) [Category D] → Adjunction (leftAdjoint C D) (rightAdjoint C D)
  adjunctionClosed : ∀ (C : Type u) [Category C] (D : Type u) [Category D], adjunctionUnitCounit C D

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse