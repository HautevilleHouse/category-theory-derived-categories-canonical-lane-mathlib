import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TriangulatedObject where
  carrier : Type u
  shift : carrier → carrier
  distinguishedTriangle : Prop

structure AdmissibleClass where
  object : TriangulatedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TriangulatedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse