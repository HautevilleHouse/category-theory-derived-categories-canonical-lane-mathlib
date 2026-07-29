import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedCategoriesPackage where
  shiftFunctor : Type u
  distinguishedTriangles : Type v
  octahedralAxiom : Prop
  triangulatedStructure : Prop

structure TriangulatedCategoriesEvidence (T : TriangulatedCategoriesPackage) where
  octahedralAxiomClosed : T.octahedralAxiom
  triangulatedStructureClosed : T.triangulatedStructure

def TriangulatedCategoriesClosed (T : TriangulatedCategoriesPackage) : Prop :=
  T.octahedralAxiom ∧ T.triangulatedStructure

theorem triangulated_categories_closed_from_evidence (T : TriangulatedCategoriesPackage) (E : TriangulatedCategoriesEvidence T) :
    TriangulatedCategoriesClosed T := by
  exact And.intro E.octahedralAxiomClosed E.triangulatedStructureClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse