import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure YonedaEmbeddingPackage where
  sourceCategory : Type u
  targetCategory : Type v
  yonedaFunctor : sourceCategory → (sourceCategory ᵒᵖ → Type max u v)
  fullFaithfulness : Prop
  naturaleIsomorphism : Prop

structure YonedaEvidence (Y : YonedaEmbeddingPackage) where
  fullFaithfulnessClosed : Y.fullFaithfulness
  naturaleIsomorphismClosed : Y.naturaleIsomorphism

def YonedaClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullFaithfulness ∧ Y.naturaleIsomorphism

theorem yoneda_closed_from_evidence (Y : YonedaEmbeddingPackage) (E : YonedaEvidence Y) :
    YonedaClosed Y := by
  exact And.intro E.fullFaithfulnessClosed E.naturaleIsomorphismClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse