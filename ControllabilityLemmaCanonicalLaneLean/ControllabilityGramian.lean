import canonicalLaneMathlib.ControllablePair

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityGramian {C : ControllablePair} where
  gramianMatrix : Type w
  positiveDefinite : Prop
  invertibility : Prop
  rankCondition : Prop

structure ControllabilityGramianEvidence {C : ControllablePair} (G : ControllabilityGramian C) where
  positiveDefiniteClosed : G.positiveDefinite
  invertibilityClosed : G.invertibility
  rankConditionClosed : G.rankCondition

def ControllabilityGramianClosed {C : ControllablePair} (G : ControllabilityGramian C) : Prop :=
  G.positiveDefinite ∧ G.invertibility ∧ G.rankCondition

theorem controllability_gramian_closed_from_evidence {C : ControllablePair} (G : ControllabilityGramian C) (E : ControllabilityGramianEvidence G) :
    ControllabilityGramianClosed G := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.invertibilityClosed E.rankConditionClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse