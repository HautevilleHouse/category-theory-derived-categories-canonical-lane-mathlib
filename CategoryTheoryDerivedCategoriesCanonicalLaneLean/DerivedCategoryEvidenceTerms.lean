import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryDerivedCategoriesCanonicalLaneLean.DerivedCategoryProof

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedCategoryEvidenceTerms (A : AbelianCategoryPackage) where
  derivedCategory : DerivedCategoryPackage A
  derivedCategoryClosed : DerivedCategoryClosed A

def DerivedCategoryCertificate.evidenceTerms (A : AbelianCategoryPackage)
    (C : DerivedCategoryCertificate A) : DerivedCategoryEvidenceTerms A :=
  { derivedCategory := C.derivedCategory,
    derivedCategoryClosed := derived_category_closed_from_evidence A C.derivedCategory C.evidence }

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse