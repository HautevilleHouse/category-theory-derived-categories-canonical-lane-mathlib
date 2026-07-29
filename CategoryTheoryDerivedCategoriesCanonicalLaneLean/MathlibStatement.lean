import canonicalLaneMathlib.AdmissibleClass
import CategoryTheory.Derived

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

open CategoryTheory

structure MathlibDerivedStatement (C : Type u) [Category C] [Abelian C] where
  derivedCategory : DerivedCategory C
  derivedCategoryDefined : Prop
  derivedCategoryDefinedTerm : derivedCategoryDefined

def mathlibDerivedStatementAvailable (C : Type u) [Category C] [Abelian C] : Prop :=
  Nonempty (MathlibDerivedStatement C)

theorem mathlib_derived_statement_instance (C : Type u) [Category C] [Abelian C] :
    mathlibDerivedStatementAvailable C :=
  by
    refine ⟨?_, trivial⟩
    exact { derivedCategory := (by infer_instance : DerivedCategory C),
           derivedCategoryDefined := True,
           derivedCategoryDefinedTerm := trivial }

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse