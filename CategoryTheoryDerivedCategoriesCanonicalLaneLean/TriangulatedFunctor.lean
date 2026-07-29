import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedFunctor (T1 T2 : TriangulatedObject) where
  underlyingFunctor : T1.chainComplex → T2.chainComplex
  commutesWithTranslation : ∀ x, underlyingFunctor (T1.translation x) = T2.translation (underlyingFunctor x)
  sendsDistinguished : ∀ (a,b,c) : T1.chainComplex × T1.chainComplex × T1.chainComplex,
    (a,b,c) ∈ T1.distinguishedTriangles → 
    (underlyingFunctor a, underlyingFunctor b, underlyingFunctor c) ∈ T2.distinguishedTriangles

def TriangulatedFunctorClosed {T1 T2 : TriangulatedObject} (F : TriangulatedFunctor T1 T2) : Prop :=
  F.commutesWithTranslation = True ∧ F.sendsDistinguished = True

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse