import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedCategoryPackage where
  abelianCategory : Type u
  chainComplexCategory : Type u
  derivedCategory : Type u
  quotientByQuasiIsos : Prop
  derivedFunctorDefined : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  quotientClosed : D.quotientByQuasiIsos
  derivedFunctorClosed : D.derivedFunctorDefined

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.quotientByQuasiIsos ∧ D.derivedFunctorDefined

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage) (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.quotientClosed E.derivedFunctorClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse