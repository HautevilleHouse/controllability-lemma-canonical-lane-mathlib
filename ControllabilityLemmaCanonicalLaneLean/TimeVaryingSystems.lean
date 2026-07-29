import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure TimeVaryingSystem where
  timeDomain : ℝ → Prop
  stateSpace : Type u
  controlSpace : Type v
  timeDependentDynamics : ℝ → stateSpace → controlSpace → stateSpace
  initialTime : ℝ
  initialCondition : stateSpace
  targetSet : Set stateSpace
  controllabilityTime : ℝ
  reachable : Prop

structure TimeVaryingControllabilityEvidence {T : TimeVaryingSystem} where
  timeDomainClosed : T.timeDomain T.initialTime
  dynamicsContinuous : Prop
  reachabilityClosed : T.reachable

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse
