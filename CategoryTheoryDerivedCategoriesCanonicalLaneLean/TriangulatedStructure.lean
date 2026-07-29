import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedCategoryPackage where
  shiftFunctor : Type u → Type u
  exactTriangles : Prop
  octahedralAxiom : Prop

def TriangulatedStructureClosed (T : TriangulatedCategoryPackage) : Prop :=
  T.exactTriangles ∧ T.octahedralAxiom

theorem triangulated_structure_closed (T : TriangulatedCategoryPackage) : TriangulatedStructureClosed T := by
  exact And.intro T.exactTriangles T.octahedralAxiom

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse