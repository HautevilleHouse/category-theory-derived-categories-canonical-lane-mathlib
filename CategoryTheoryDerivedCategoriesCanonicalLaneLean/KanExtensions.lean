import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure KanExtensionPackage where
  leftKan : Prop
  rightKan : Prop
  pointwiseFormula : Prop
  existenceCondition : Prop

structure KanExtensionEvidence (K : KanExtensionPackage) where
  leftKanClosed : K.leftKan
  rightKanClosed : K.rightKan
  pointwiseFormulaClosed : K.pointwiseFormula
  existenceConditionClosed : K.existenceCondition

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.leftKan ∧ K.rightKan ∧ K.pointwiseFormula ∧ K.existenceCondition

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage) (E : KanExtensionEvidence K) :
    KanExtensionClosed K := by
  exact And.intro E.leftKanClosed (And.intro E.rightKanClosed (And.intro E.pointwiseFormulaClosed E.existenceConditionClosed))

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse