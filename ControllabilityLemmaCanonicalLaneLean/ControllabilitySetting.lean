import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilitySetting where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace -> controlSpace -> stateSpace
  initialSet : Set stateSpace
  targetSet : Set stateSpace
  timeHorizon : Nat

def ControllabilitySettingClosed (S : ControllabilitySetting) : Prop :=
  S.timeHorizon > 0

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse