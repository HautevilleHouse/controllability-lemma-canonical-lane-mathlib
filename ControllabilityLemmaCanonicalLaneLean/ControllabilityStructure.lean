import canonicalLaneMathlib.AdmissibleClass
import ControllabilityLemmaCanonicalLaneLean.ControllabilitySetting

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityStructure (S : ControllabilitySetting) where
  reachableSet : Set S.stateSpace
  controllabilityCondition : Prop
  controlStrategy : Type u
  strategyExists : Prop

structure ControllabilityEvidence {S : ControllabilitySetting} (C : ControllabilityStructure S) where
  reachableSetClosed : C.reachableSet = Set.univ
  controllabilityConditionClosed : C.controllabilityCondition
  strategyExistsClosed : C.strategyExists

def ControllabilityStructureClosed {S : ControllabilitySetting} (C : ControllabilityStructure S) : Prop :=
  C.reachableSet = Set.univ ∧ C.controllabilityCondition ∧ C.strategyExists

theorem controllability_structure_closed_from_evidence
    {S : ControllabilitySetting} (C : ControllabilityStructure S)
    (E : ControllabilityEvidence C) : ControllabilityStructureClosed C := by
  exact And.intro E.reachableSetClosed (And.intro E.controllabilityConditionClosed E.strategyExistsClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse