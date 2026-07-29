import canonicalLaneMathlib.ControllabilityGramian

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure KalmanRankCondition {C : ControllablePair} {G : ControllabilityGramian C} where
  controllabilityMatrixRank : ℕ
  fullRankCondition : Prop
  rankEqualsStateDimension : Prop

structure KalmanRankConditionEvidence {C : ControllablePair} {G : ControllabilityGramian C} (K : KalmanRankCondition G) where
  controllabilityMatrixRankClosed : K.controllabilityMatrixRank = dim C.stateSpace
  fullRankConditionClosed : K.fullRankCondition
  rankEqualsStateDimensionClosed : K.rankEqualsStateDimension

def KalmanRankConditionClosed {C : ControllablePair} {G : ControllabilityGramian C} (K : KalmanRankCondition G) : Prop :=
  K.controllabilityMatrixRank = dim C.stateSpace ∧ K.fullRankCondition ∧ K.rankEqualsStateDimension

theorem kalman_rank_condition_closed_from_evidence {C : ControllablePair} {G : ControllabilityGramian C} (K : KalmanRankCondition G) (E : KalmanRankConditionEvidence K) :
    KalmanRankConditionClosed K := by
  exact And.intro E.controllabilityMatrixRankClosed (And.intro E.fullRankConditionClosed E.rankEqualsStateDimensionClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse