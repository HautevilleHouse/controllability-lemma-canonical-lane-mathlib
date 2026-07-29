import canonicalLaneMathlib.ControllablePair

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ReachabilitySet {C : ControllablePair} where
  targetStates : Set C.stateSpace
  controllabilityTimes : Set ℝ
  reachabilityCondition : Prop

structure ReachabilitySetEvidence {C : ControllablePair} (R : ReachabilitySet C) where
  targetStatesClosed : R.targetStates = Set.univ
  controllabilityTimesClosed : R.controllabilityTimes = Set.Ioi 0
  reachabilityConditionClosed : R.reachabilityCondition

def ReachabilitySetClosed {C : ControllablePair} (R : ReachabilitySet C) : Prop :=
  R.targetStates = Set.univ ∧ R.controllabilityTimes = Set.Ioi 0 ∧ R.reachabilityCondition

theorem reachability_set_closed_from_evidence {C : ControllablePair} (R : ReachabilitySet C) (E : ReachabilitySetEvidence R) :
    ReachabilitySetClosed R := by
  exact And.intro E.targetStatesClosed (And.intro E.controllabilityTimesClosed E.reachabilityConditionClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse