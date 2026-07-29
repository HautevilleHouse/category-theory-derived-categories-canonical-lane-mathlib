import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure YonedaEmbeddingPackage where
  category : Type u
  functorToPresheaves : Type v
  fullyFaithfulness : Prop
  representablePresheavesClassified : Prop
  yonedaLemmaEstablished : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  fullyFaithfulnessClosed : Y.fullyFaithfulness
  representablePresheavesClassifiedClosed : Y.representablePresheavesClassified
  yonedaLemmaEstablishedClosed : Y.yonedaLemmaEstablished

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullyFaithfulness ∧ Y.representablePresheavesClassified ∧ Y.yonedaLemmaEstablished

theorem yoneda_embedding_closed_from_evidence
    (Y : YonedaEmbeddingPackage) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.fullyFaithfulnessClosed
    (And.intro E.representablePresheavesClassifiedClosed E.yonedaLemmaEstablishedClosed)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse