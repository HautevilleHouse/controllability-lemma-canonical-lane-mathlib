import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ReachabilitySubspace where
  subspace : Submodule ℝ (Fin n → ℝ)
  invariantUnderA : Prop
  containsImageB : Prop
  minimalityCondition : Prop

structure ReachabilitySubspaceEvidence (R : ReachabilitySubspace) where
  invariantUnderAClosed : R.invariantUnderA
  containsImageBClosed : R.containsImageB
  minimalityConditionClosed : R.minimalityCondition

def ReachabilitySubspaceClosed (R : ReachabilitySubspace) : Prop :=
  R.invariantUnderA ∧ R.containsImageB ∧ R.minimalityCondition

theorem reachability_subspace_closed_from_evidence (R : ReachabilitySubspace)
    (E : ReachabilitySubspaceEvidence R) : ReachabilitySubspaceClosed R := by
  exact And.intro E.invariantUnderAClosed
    (And.intro E.containsImageBClosed E.minimalityConditionClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse