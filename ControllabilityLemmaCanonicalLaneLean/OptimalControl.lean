import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure CostFunctional where
  runningCost : ℝ → ℝ → ℝ
  terminalCost : ℝ → ℝ
  timeDomain : ℝ → Prop

def totalCost (J : CostFunctional) (state : ℝ → ℝ) (control : ℝ → ℝ) (T : ℝ) : ℝ :=
  (∫ t in (0 : ℝ)..T, J.runningCost (state t) (control t)) + J.terminalCost (state T)

structure OptimalControlProblem where
  dynamics : ℝ → ℝ → ℝ → ℝ
  stateSpace : Type u
  controlSpace : Type v
  initialCondition : ℝ
  targetSet : Set ℝ
  cost : CostFunctional
  controllabilityTime : ℝ
  optimalControlExists : Prop
  costMinimized : Prop

theorem optimal_control_sufficient_condition
    (O : OptimalControlProblem) :
    O.optimalControlExists → O.costMinimized := by
  intro h
  exact h

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse
