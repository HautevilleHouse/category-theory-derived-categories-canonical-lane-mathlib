import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryDerivedCategoriesCanonicalLaneLean.AbelianCategory

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedCategoryPackage (A : AbelianCategoryPackage) where
  derivedCategory : Type u
  derivedCategoryDefined : Prop
  derivedFunctorExists : Prop

structure DerivedCategoryEvidence (A : AbelianCategoryPackage) (D : DerivedCategoryPackage A) where
  derivedCategoryDefinedClosed : D.derivedCategoryDefined
  derivedFunctorExistsClosed : D.derivedFunctorExists

def DerivedCategoryClosed (A : AbelianCategoryPackage) (D : DerivedCategoryPackage A) : Prop :=
  D.derivedCategoryDefined ∧ D.derivedFunctorExists

theorem derived_category_closed_from_evidence (A : AbelianCategoryPackage)
    (D : DerivedCategoryPackage A) (E : DerivedCategoryEvidence A D) :
    DerivedCategoryClosed A D := by
  exact And.intro E.derivedCategoryDefinedClosed E.derivedFunctorExistsClosed

structure DerivedCategoryCertificate (A : AbelianCategoryPackage) where
  derivedCategory : DerivedCategoryPackage A
  evidence : DerivedCategoryEvidence A derivedCategory

theorem derived_category_certificate_closed (A : AbelianCategoryPackage)
    (C : DerivedCategoryCertificate A) : DerivedCategoryClosed A C.derivedCategory := by
  exact derived_category_closed_from_evidence A C.derivedCategory C.evidence

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse