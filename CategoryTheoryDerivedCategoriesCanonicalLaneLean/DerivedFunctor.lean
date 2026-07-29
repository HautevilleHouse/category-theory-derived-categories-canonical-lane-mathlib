import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedFunctorPackage {C D : Type u} [Category.{v} C] [Category.{v} D] where
  F : Functor C D
  leftDerived : Option (Functor (DerivedCategory C) (DerivedCategory D)) := none
  rightDerived : Option (Functor (DerivedCategory C) (DerivedCategory D)) := none
  exactness : F.PreservesFiniteLimits → F.PreservesFiniteColimits → Prop
  leftDerivedExists : Prop
  rightDerivedExists : Prop
  leftDerivedTriangle : ∀ (X : C) (Y : C) (f : X ⟶ Y), 
    leftDerived ≠ none → (leftDerived.get).map (Triangle.mk (F.obj X) (F.obj Y) (F.map f) 0) ∈ 
      distinguishedTriangles (DerivedCategory C) → Prop
  rightDerivedTriangle : ∀ (X : C) (Y : C) (f : X ⟶ Y),
    rightDerived ≠ none → (rightDerived.get).map (Triangle.mk (F.obj X) (F.obj Y) (F.map f) 0) ∈ 
      distinguishedTriangles (DerivedCategory C) → Prop

structure DerivedFunctorEvidence {C D : Type u} [Category.{v} C] [Category.{v} D]
  (P : DerivedFunctorPackage C D) where
  exactness_closed : P.exactness (by infer_instance) (by infer_instance)
  leftDerived_exists_closed : P.leftDerivedExists
  rightDerived_exists_closed : P.rightDerivedExists
  leftDerived_triangle_closed : ∀ (X : C) (Y : C) (f : X ⟶ Y), P.leftDerivedTriangle X Y f
  rightDerived_triangle_closed : ∀ (X : C) (Y : C) (f : X ⟶ Y), P.rightDerivedTriangle X Y f

def DerivedFunctorClosed {C D : Type u} [Category.{v} C] [Category.{v} D]
  (P : DerivedFunctorPackage C D) : Prop :=
  P.leftDerivedExists ∧ P.rightDerivedExists

theorem derived_functor_closed_from_evidence {C D : Type u} [Category.{v} C] [Category.{v} D]
  (P : DerivedFunctorPackage C D) (E : DerivedFunctorEvidence P) :
  DerivedFunctorClosed P := by
  exact And.intro E.leftDerived_exists_closed E.rightDerived_exists_closed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse