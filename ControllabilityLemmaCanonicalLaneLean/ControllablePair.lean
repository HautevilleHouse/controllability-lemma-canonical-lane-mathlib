import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllablePair where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  reachableSet : stateSpace → Set stateSpace
  controllabilityProperty : Prop

structure ControllablePairEvidence (C : ControllablePair) where
  reachableSetClosed : C.reachabilityProperty
  controllabilityPropertyClosed : C.controllabilityProperty

def ControllablePairClosed (C : ControllablePair) : Prop :=
  C.reachabilityProperty ∧ C.controllabilityProperty

theorem controllable_pair_closed_from_evidence (C : ControllablePair) (E : ControllablePairEvidence C) :
    ControllablePairClosed C := by
  exact And.intro E.reachableSetClosed E.controllabilityPropertyClosed

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse