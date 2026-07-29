import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityObject where
  system : Type u
  stateSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  initialCondition : stateSpace
  targetSet : Set stateSpace
  controllabilityTime : ℝ
  reachable : Prop

structure AdmissibleControl where
  object : ControllabilityObject
  controlLaw : object.stateSpace → object.controlSpace
  controlAdmissible : Prop
  reachabilityCarried : object.reachable

structure AdmissibleClass where
  object : ControllabilityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse
