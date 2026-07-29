import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.remainderRecorded

def ConstrainedControllabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem controllability_endgame (A : AdmissibleClass) : ConstrainedControllabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse