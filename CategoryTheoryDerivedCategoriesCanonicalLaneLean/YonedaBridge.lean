import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure YonedaLemmasPackage (C : Type u) [Category C] where
  yonedaFunctor : C → Functor Cᵒᵖ (Type u)
  fullyFaithful : FullyFaithful yonedaFunctor
  yonedaLemma : ∀ (A : C) (F : Functor Cᵒᵖ (Type u)), NatTrans (yonedaFunctor A) F ≅ F.obj (Opposite.op A)
  yonedaEmbeddingClosed : fullyFaithful

def YonedaBridgeClosed (Y : YonedaLemmasPackage C) : Prop :=
  Y.fullyFaithful ∧ ∀ (A : C) (F : Functor Cᵒᵖ (Type u)), Nonempty (NatTrans (Y.yonedaFunctor A) F ≅ F.obj (Opposite.op A))

theorem yoneda_bridge_closed (Y : YonedaLemmasPackage C) : YonedaBridgeClosed Y := by
  refine And.intro Y.fullyFaithful ?_
  intro A F
  exact Nonempty.intro (Y.yonedaLemma A F)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse