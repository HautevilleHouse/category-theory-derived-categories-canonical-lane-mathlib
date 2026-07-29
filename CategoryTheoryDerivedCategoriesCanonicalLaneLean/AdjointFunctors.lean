import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitCounitAdjunction : Prop
  uniqueness : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  unitCounitAdjunctionClosed : A.unitCounitAdjunction
  uniquenessClosed : A.uniqueness

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitCounitAdjunction ∧ A.uniqueness

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointExistsClosed (And.intro E.rightAdjointExistsClosed (And.intro E.unitCounitAdjunctionClosed E.uniquenessClosed))

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse