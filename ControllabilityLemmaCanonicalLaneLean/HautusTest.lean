import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure HautusTest (n m : Type) [AddCommGroup n] [Module ℝ n] [AddCommGroup m] [Module ℝ m] where
  A : n → n
  B : m → n
  eigenvalues : Set ℂ
  rankConditionForAllEigenvalues : Prop
  hautusCriterionPass : Prop
  rankConditionForAllEigenvaluesClosed : rankConditionForAllEigenvalues
  hautusCriterionPassClosed : hautusCriterionPass

structure HautusTestEvidence (H : HautusTest n m) where
  rankConditionForAllEigenvaluesClosed : H.rankConditionForAllEigenvalues
  hautusCriterionPassClosed : H.hautusCriterionPass

def HautusTestClosed (H : HautusTest n m) : Prop :=
  H.rankConditionForAllEigenvalues ∧ H.hautusCriterionPass

theorem hautus_test_closed_from_evidence (H : HautusTest n m) (E : HautusTestEvidence H) : HautusTestClosed H := by
  exact And.intro E.rankConditionForAllEigenvaluesClosed E.hautusCriterionPassClosed

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse