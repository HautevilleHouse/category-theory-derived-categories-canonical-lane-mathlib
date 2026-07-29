import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure SixFunctorFormalismPackage {D : DerivedCategoryPackage} where
  pullback : CategoryTheory.Functor D.derivedCategory D.derivedCategory
  pushforward : CategoryTheory.Functor D.derivedCategory D.derivedCategory
  exceptionalPullback : CategoryTheory.Functor D.derivedCategory D.derivedCategory
  exceptionalPushforward : CategoryTheory.Functor D.derivedCategory D.derivedCategory
  internalHom : CategoryTheory.Functor D.derivedCategory (D.derivedCategory ⥤ D.derivedCategory)
  tensorProduct : CategoryTheory.Functor D.derivedCategory (D.derivedCategory ⥤ D.derivedCategory)
  adjointnessPullbackPushforward : Prop
  adjointnessExceptional : Prop
  projectionFormula : Prop
  poincareDuality : Prop

structure SixFunctorFormalismEvidence {D : DerivedCategoryPackage}
  (S : SixFunctorFormalismPackage D) where
  adjointnessPullbackPushforwardClosed : S.adjointnessPullbackPushforward
  adjointnessExceptionalClosed : S.adjointnessExceptional
  projectionFormulaClosed : S.projectionFormula
  poincareDualityClosed : S.poincareDuality

def SixFunctorFormalismClosed {D : DerivedCategoryPackage}
  (S : SixFunctorFormalismPackage D) : Prop :=
  S.adjointnessPullbackPushforward ∧ S.adjointnessExceptional ∧
  S.projectionFormula ∧ S.poincareDuality

theorem six_functor_formalism_closed_from_evidence {D : DerivedCategoryPackage}
  (S : SixFunctorFormalismPackage D) (E : SixFunctorFormalismEvidence S) :
  SixFunctorFormalismClosed S := by
  exact And.intro E.adjointnessPullbackPushforwardClosed
    (And.intro E.adjointnessExceptionalClosed
      (And.intro E.projectionFormulaClosed E.poincareDualityClosed))

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse