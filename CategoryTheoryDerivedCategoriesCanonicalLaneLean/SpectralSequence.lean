import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure SpectralSequencePackage where
  filtration : Type u
  exactCouple : Type v
  convergence : Prop
  differentials : Prop

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  convergenceClosed : S.convergence
  differentialsClosed : S.differentials

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergence ∧ S.differentials

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.convergenceClosed E.differentialsClosed

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse