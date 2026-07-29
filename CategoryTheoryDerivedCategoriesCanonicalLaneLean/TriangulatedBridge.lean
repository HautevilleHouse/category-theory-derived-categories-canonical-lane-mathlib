import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryDerivedCategoriesCanonicalLaneLean.DerivedCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedCategory where
  obj : Type u
  morphism : obj → obj → Type v
  shift : obj → obj
  distinguishedTriangles : Set (MorphismTriangle)
  axioms : Prop

structure ConeConstruction where
  T : TriangulatedCategory
  cone : (f : T.morphism X Y) → T.obj
  coneSequenceDistinguished : Prop

structure OctahedralAxiom where
  T : TriangulatedCategory
  octahedralHolds : Prop

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse