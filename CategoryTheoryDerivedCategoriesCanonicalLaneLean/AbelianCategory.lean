import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure AbelianCategoryPackage where
  category : Type u
  abelian : Prop
  enoughInjectives : Prop
  enoughProjectives : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  abelianClosed : A.abelian
  enoughInjectivesClosed : A.enoughInjectives
  enoughProjectivesClosed : A.enoughProjectives

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.abelian ∧ A.enoughInjectives ∧ A.enoughProjectives

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage)
    (E : AbelianCategoryEvidence A) : AbelianCategoryClosed A := by
  exact And.intro E.abelianClosed (And.intro E.enoughInjectivesClosed E.enoughProjectivesClosed)

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse