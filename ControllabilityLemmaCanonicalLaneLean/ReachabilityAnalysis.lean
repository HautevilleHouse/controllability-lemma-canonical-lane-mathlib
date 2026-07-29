import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ReachableSet (stateSpace : Type u) where
  points : Set stateSpace
  isReachableFrom : stateSpace → Prop
  timeHorizon : ℝ
  closureUnderControl : Prop

def reachability_from_pin (R : ReachableSet α) (x : α) : Prop :=
  R.isReachableFrom x ∧ R.closureUnderControl

structure ReachabilityCertificate (stateSpace : Type u) where
  sourceState : stateSpace
  targetState : stateSpace
  controlTrajectory : ℝ → ℝ
  timeAllowed : ℝ
  trajectorySatisfiesDynamics : Prop
  targetReached : Prop

def reachability_closed (α : Type u) (R : ReachableSet α) (C : ReachabilityCertificate α) : Prop :=
  R.isReachableFrom C.sourceState ∧ C.targetReached

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse
