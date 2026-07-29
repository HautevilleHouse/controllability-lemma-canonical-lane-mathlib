import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Control.Controllability

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityAdmittedObject where
  system : Type
  stateSpace : Type
  inputSpace : Type
  dynamics : system → stateSpace → inputSpace → stateSpace
  reachableSetDefinition : Prop
  controllabilityCondition : Prop
  conclusion : controllabilityCondition

def ControllabilityWitnessClosed (O : ControllabilityAdmittedObject) : Prop :=
  O.controllabilityCondition

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse