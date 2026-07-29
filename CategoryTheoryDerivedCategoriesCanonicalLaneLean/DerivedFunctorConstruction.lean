import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedFunctorPackage {C : CategoryTheory.Category} {D : DerivedCategoryPackage}
  (F : CategoryTheory.Functor C D.chainComplexCategory) where
  totalDerivedFunctor : CategoryTheory.Functor (DerivedCategory C) D.derivedCategory
  leftDerivedExists : Prop
  rightDerivedExists : Prop
  spectralSequenceConverges : Prop

structure DerivedFunctorEvidence {C : CategoryTheory.Category} {D : DerivedCategoryPackage}
  {F : CategoryTheory.Functor C D.chainComplexCategory}
  (R : DerivedFunctorPackage F) where
  leftDerivedExistsClosed : R.leftDerivedExists
  rightDerivedExistsClosed : R.rightDerivedExists
  spectralSequenceConvergesClosed : R.spectralSequenceConverges

def DerivedFunctorClosed {C : CategoryTheory.Category} {D : DerivedCategoryPackage}
  {F : CategoryTheory.Functor C D.chainComplexCategory}
  (R : DerivedFunctorPackage F) : Prop :=
  R.leftDerivedExists ∧ R.rightDerivedExists ∧ R.spectralSequenceConverges

theorem derived_functor_closed_from_evidence {C : CategoryTheory.Category}
  {D : DerivedCategoryPackage}
  {F : CategoryTheory.Functor C D.chainComplexCategory}
  (R : DerivedFunctorPackage F) (E : DerivedFunctorEvidence R) :
  DerivedFunctorClosed R := by
  exact And.intro E.leftDerivedExistsClosed
    (And.intro E.rightDerivedExistsClosed E.spectralSequenceConvergesClosed)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse