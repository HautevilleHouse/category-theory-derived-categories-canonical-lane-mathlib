import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

def ConstrainedDerivedCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_derived_category_endgame (A : AdmissibleClass) :
    ConstrainedDerivedCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse