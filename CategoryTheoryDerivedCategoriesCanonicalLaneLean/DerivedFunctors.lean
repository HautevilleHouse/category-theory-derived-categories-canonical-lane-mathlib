import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedFunctorsPackage where
  abelianCategory : Type u
  leftDerived : Type v
  rightDerived : Type w
  longExactSequence : Prop
  deltaFunctor : Prop

structure DerivedFunctorsEvidence (D : DerivedFunctorsPackage) where
  longExactSequenceClosed : D.longExactSequence
  deltaFunctorClosed : D.deltaFunctor

def DerivedFunctorsClosed (D : DerivedFunctorsPackage) : Prop :=
  D.longExactSequence ∧ D.deltaFunctor

theorem derived_functors_closed_from_evidence (D : DerivedFunctorsPackage) (E : DerivedFunctorsEvidence D) :
    DerivedFunctorsClosed D := by
  exact And.intro E.longExactSequenceClosed E.deltaFunctorClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse