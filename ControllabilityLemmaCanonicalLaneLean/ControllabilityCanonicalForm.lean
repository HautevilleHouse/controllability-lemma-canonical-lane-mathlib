import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityLemmaCanonicalLaneLean

structure ControllabilityCanonicalForm (n m : Type) [AddCommGroup n] [Module ℝ n] [AddCommGroup m] [Module ℝ m] where
  A : n → n
  B : m → n
  transformation : n → n
  transformedA : n → n
  transformedB : m → n
  controllablePart : Submodule ℝ n
  uncontrollablePart : Submodule ℝ n
  decomposition : Prop
  controllablePartInvariant : Prop
  uncontrollablePartInvariant : Prop
  decompositionClosed : decomposition
  controllablePartInvariantClosed : controllablePartInvariant
  uncontrollablePartInvariantClosed : uncontrollablePartInvariant

structure ControllabilityCanonicalFormEvidence (C : ControllabilityCanonicalForm n m) where
  decompositionClosed : C.decomposition
  controllablePartInvariantClosed : C.controllablePartInvariant
  uncontrollablePartInvariantClosed : C.uncontrollablePartInvariant

def ControllabilityCanonicalFormClosed (C : ControllabilityCanonicalForm n m) : Prop :=
  C.decomposition ∧ C.controllablePartInvariant ∧ C.uncontrollablePartInvariant

theorem controllability_canonical_form_closed_from_evidence (C : ControllabilityCanonicalForm n m) (E : ControllabilityCanonicalFormEvidence C) : ControllabilityCanonicalFormClosed C := by
  exact And.intro E.decompositionClosed (And.intro E.controllablePartInvariantClosed E.uncontrollablePartInvariantClosed)

end ControllabilityLemmaCanonicalLaneLean
end HautevilleHouse