import CategoryTheoryDerivedCategoriesCanonicalLaneLean.DerivedCategory

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedHomPackage (A : AdmissibleClass) (D : DerivedCategoryPackage A) where
  derivedHomFunctor : A.object.derivedCategory → A.object.derivedCategory → A.object.derivedCategory
  exactnessProperties : Prop
  compositionLaw : Prop

structure DerivedHomEvidence (A : AdmissibleClass) (D : DerivedCategoryPackage A) (H : DerivedHomPackage A D) where
  exactnessPropertiesClosed : H.exactnessProperties
  compositionLawClosed : H.compositionLaw

def DerivedHomClosed (A : AdmissibleClass) (D : DerivedCategoryPackage A) (H : DerivedHomPackage A D) : Prop :=
  H.exactnessProperties ∧ H.compositionLaw

theorem derived_hom_closed_from_evidence
    (A : AdmissibleClass) (D : DerivedCategoryPackage A) (H : DerivedHomPackage A D)
    (E : DerivedHomEvidence A D H) : DerivedHomClosed A D H := by
  exact And.intro E.exactnessPropertiesClosed E.compositionLawClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse