import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivedCategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse