import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryDerivedCategoriesCanonicalLaneLean.BridgeLemmas
import CategoryTheoryDerivedCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

def ConstrainedDerivedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_derived_endgame (A : AdmissibleClass) :
    ConstrainedDerivedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse