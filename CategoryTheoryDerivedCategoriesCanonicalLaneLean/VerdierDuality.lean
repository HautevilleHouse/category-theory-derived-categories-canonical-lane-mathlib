import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure VerdierDualityPackage {D : DerivedCategoryPackage} where
  dualizingComplex : D.derivedCategory
  dualityFunctor : CategoryTheory.Functor D.derivedCategory D.derivedCategory
  dualityFunctorInvolutive : Prop
  bidualityIsomorphism : Prop
  compatSixFunctor : Prop

structure VerdierDualityEvidence {D : DerivedCategoryPackage}
  (V : VerdierDualityPackage D) where
  dualityFunctorInvolutiveClosed : V.dualityFunctorInvolutive
  bidualityIsomorphismClosed : V.bidualityIsomorphism
  compatSixFunctorClosed : V.compatSixFunctor

def VerdierDualityClosed {D : DerivedCategoryPackage}
  (V : VerdierDualityPackage D) : Prop :=
  V.dualityFunctorInvolutive ∧ V.bidualityIsomorphism ∧ V.compatSixFunctor

theorem verdier_duality_closed_from_evidence {D : DerivedCategoryPackage}
  (V : VerdierDualityPackage D) (E : VerdierDualityEvidence V) :
  VerdierDualityClosed V := by
  exact And.intro E.dualityFunctorInvolutiveClosed
    (And.intro E.bidualityIsomorphismClosed E.compatSixFunctorClosed)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse