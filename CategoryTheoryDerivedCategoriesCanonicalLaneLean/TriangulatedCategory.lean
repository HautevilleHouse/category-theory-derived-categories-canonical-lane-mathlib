import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedCategoryPackage where
  shiftFunctor : Type u
  distinguishedTriangles : Prop
  octahedralAxiom : Prop

structure TriangulatedCategoryEvidence (T : TriangulatedCategoryPackage) where
  distinguishedTrianglesClosed : T.distinguishedTriangles
  octahedralAxiomClosed : T.octahedralAxiom

def TriangulatedCategoryClosed (T : TriangulatedCategoryPackage) : Prop :=
  T.distinguishedTriangles ∧ T.octahedralAxiom

theorem triangulated_category_closed_from_evidence (T : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence T) :
    TriangulatedCategoryClosed T := by
  exact And.intro E.distinguishedTrianglesClosed E.octahedralAxiomClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse