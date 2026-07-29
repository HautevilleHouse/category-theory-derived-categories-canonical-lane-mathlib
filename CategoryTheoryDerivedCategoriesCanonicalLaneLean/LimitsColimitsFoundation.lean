import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryDerivedCategoriesCanonicalLaneLean

structure LimitsColimitsPackage (C : Type u) [Category C] where
  hasSmallLimits : Prop
  hasSmallColimits : Prop
  limitExists : ∀ (F : Functor (Discrete Unit) C), HasLimit F
  colimitExists : ∀ (F : Functor (Discrete Unit) C), HasColimit F
  limitsClosed : hasSmallLimits
  colimitsClosed : hasSmallColimits

def LimitsColimitsClosed (L : LimitsColimitsPackage C) : Prop :=
  L.hasSmallLimits ∧ L.hasSmallColimits ∧ L.limitsClosed ∧ L.colimitsClosed

theorem limits_colimits_closed (L : LimitsColimitsPackage C) : LimitsColimitsClosed L := by
  exact And.intro L.hasSmallLimits (And.intro L.hasSmallColimits (And.intro L.limitsClosed L.colimitsClosed))

end CategoryTheoryDerivedCategoriesCanonicalLaneLean
end HautevilleHouse