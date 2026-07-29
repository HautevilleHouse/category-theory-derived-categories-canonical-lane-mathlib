import CategoryTheoryDerivedCategoriesCanonicalLaneLean.DerivedHom

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedTensorProductPackage (A : AdmissibleClass) (D : DerivedCategoryPackage A) where
  derivedTensorProduct : A.object.derivedCategory → A.object.derivedCategory → A.object.derivedCategory
  associativity : Prop
  unitProperty : Prop

structure DerivedTensorProductEvidence (A : AdmissibleClass) (D : DerivedCategoryPackage A) (T : DerivedTensorProductPackage A D) where
  associativityClosed : T.associativity
  unitPropertyClosed : T.unitProperty

def DerivedTensorProductClosed (A : AdmissibleClass) (D : DerivedCategoryPackage A) (T : DerivedTensorProductPackage A D) : Prop :=
  T.associativity ∧ T.unitProperty

theorem derived_tensor_product_closed_from_evidence
    (A : AdmissibleClass) (D : DerivedCategoryPackage A) (T : DerivedTensorProductPackage A D)
    (E : DerivedTensorProductEvidence A D T) : DerivedTensorProductClosed A D T := by
  exact And.intro E.associativityClosed E.unitPropertyClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse