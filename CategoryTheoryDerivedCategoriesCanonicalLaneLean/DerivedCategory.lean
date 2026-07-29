import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedCategoryPackage where
  abelianCategory : Type u
  chainComplexCategory : Type v
  localizationAtQuasiIsomorphisms : Prop
  triangulatedStructure : Prop
  homotopyCategory : Prop

def DerivedCategoryClosed (D : DerivedCategoryPackage) : Prop :=
  D.localizationAtQuasiIsomorphisms ∧ D.triangulatedStructure ∧ D.homotopyCategory

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse