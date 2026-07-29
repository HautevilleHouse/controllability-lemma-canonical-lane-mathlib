import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControllabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse