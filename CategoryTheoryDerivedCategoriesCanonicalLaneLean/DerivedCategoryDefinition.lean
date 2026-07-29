import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedCategoryPackage where
  category : Type u
  categoryTopology : CategoryTheory.CategoryStruct category
  chainComplexCategory : Type v
  chainComplexStruct : CategoryTheory.CategoryStruct chainComplexCategory
  quasiIsomorphisms : CategoryTheory.MorphismProperty chainComplexCategory
  derivedCategory : Type w
  derivedCategoryStruct : CategoryTheory.CategoryStruct derivedCategory
  localizationFunctor : CategoryTheory.Functor chainComplexCategory derivedCategory
  localizationFunctorInvertsQis : Prop
  universalProperty : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryPackage) where
  localizationFunctorInvertsQisClosed : D.localizationFunctorInvertsQis
  universalPropertyClosed : D.universalProperty

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.localizationFunctorInvertsQis ∧ D.universalProperty

theorem derived_category_closed_from_evidence (D : DerivedCategoryPackage)
  (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.localizationFunctorInvertsQisClosed E.universalPropertyClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse