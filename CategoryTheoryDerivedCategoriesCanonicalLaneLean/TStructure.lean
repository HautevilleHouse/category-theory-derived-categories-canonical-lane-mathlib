import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure TStructurePackage (C : Type u) [Category.{v} C] [Triangulated C] where
  heart : Subcategory C
  tEscape : C → ℤ
  tRigidity : Prop
  tExactness : Prop

structure TStructureEvidence (C : Type u) [Category.{v} C] [Triangulated C]
    (T : TStructurePackage C) where
  tRigidityClosed : T.tRigidity
  tExactnessClosed : T.tExactness

def TStructureClosed (C : Type u) [Category.{v} C] [Triangulated C]
    (T : TStructurePackage C) : Prop :=
  T.tRigidity ∧ T.tExactness

theorem t_structure_closed_from_evidence (C : Type u) [Category.{v} C] [Triangulated C]
    (T : TStructurePackage C) (E : TStructureEvidence T) :
    TStructureClosed T := by
  exact And.intro E.tRigidityClosed E.tExactnessClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse