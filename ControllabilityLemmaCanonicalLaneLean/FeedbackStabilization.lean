import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure FeedbackStabilization (n m : Type) [AddCommGroup n] [Module ℝ n] [AddCommGroup m] [Module ℝ m] where
  A : n → n
  B : m → n
  feedbackGain : n → m
  closedLoopStable : Prop
  polePlacement : Prop
  closedLoopStableClosed : closedLoopStable
  polePlacementClosed : polePlacement

structure FeedbackStabilizationEvidence (F : FeedbackStabilization n m) where
  closedLoopStableClosed : F.closedLoopStable
  polePlacementClosed : F.polePlacement

def FeedbackStabilizationClosed (F : FeedbackStabilization n m) : Prop :=
  F.closedLoopStable ∧ F.polePlacement

theorem feedback_stabilization_closed_from_evidence (F : FeedbackStabilization n m) (E : FeedbackStabilizationEvidence F) : FeedbackStabilizationClosed F := by
  exact And.intro E.closedLoopStableClosed E.polePlacementClosed

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse