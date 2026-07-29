import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityMatrix where
  A : Matrix (Fin n) (Fin n) ℝ
  B : Matrix (Fin n) (Fin m) ℝ
  rankCondition : Prop
  controllabilityIndex : ℕ

structure ControllabilityMatrixEvidence (C : ControllabilityMatrix) where
  rankConditionClosed : C.rankCondition
  controllabilityIndexPositive : C.controllabilityIndex > 0

def ControllabilityMatrixClosed (C : ControllabilityMatrix) : Prop :=
  C.rankCondition ∧ C.controllabilityIndex > 0

theorem controllability_matrix_closed_from_evidence (C : ControllabilityMatrix)
    (E : ControllabilityMatrixEvidence C) : ControllabilityMatrixClosed C := by
  exact And.intro E.rankConditionClosed E.controllabilityIndexPositive

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse