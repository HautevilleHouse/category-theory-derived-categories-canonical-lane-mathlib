import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure AdjointFunctorTheoremPackage where
  sourceCategory : Type u
  targetCategory : Type v
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  adjunctionUnitCounitDefined : Prop
  universalPropertySatisfied : Prop

structure AdjointFunctorTheoremEvidence (A : AdjointFunctorTheoremPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  adjunctionUnitCounitDefinedClosed : A.adjunctionUnitCounitDefined
  universalPropertySatisfiedClosed : A.universalPropertySatisfied

def AdjointFunctorTheoremClosed (A : AdjointFunctorTheoremPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧
  A.adjunctionUnitCounitDefined ∧ A.universalPropertySatisfied

theorem adjoint_functor_theorem_closed_from_evidence
    (A : AdjointFunctorTheoremPackage) (E : AdjointFunctorTheoremEvidence A) :
    AdjointFunctorTheoremClosed A := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.adjunctionUnitCounitDefinedClosed E.universalPropertySatisfiedClosed))

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse