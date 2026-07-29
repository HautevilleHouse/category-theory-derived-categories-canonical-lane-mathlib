import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure DerivedAdmittedObject where
  derivedCategory : Type u
  triangulatedStructure : Prop
  tStructure : Prop
  derivedEquivalence : Prop
  conclusion : derivedEquivalence

def DerivedWitnessClosed (O : DerivedAdmittedObject) : Prop :=
  O.derivedEquivalence

theorem derived_witness_closed_from_object (O : DerivedAdmittedObject) :
    DerivedWitnessClosed O := by
  exact O.conclusion

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse