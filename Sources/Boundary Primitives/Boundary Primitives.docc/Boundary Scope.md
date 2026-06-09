# Boundary Scope

The identity surface of `swift-boundary-primitives` and what it deliberately excludes.

## Identity

`swift-boundary-primitives` provides the **named views of an axis-aligned box's boundary** —
`Boundary.Edge` (the four edges, over the `Facet<2>` carrier) and `Boundary.Corner` (the four
corners, over the `Orthant<2>` carrier). Each is a thin nominal type with its own identity and
canonical case order — NOT a typealias to its carrier, and NOT the same type as the other
named view that happens to share that carrier.

## Core targets

- `Boundary Primitive` — the `Boundary` namespace + the `Edge` and `Corner` enums, their
  semantics (`opposite`, corner `isTop`/`isLeft`), stdlib `CaseIterable`, and conditional
  `Codable`. Zero external dependencies ([MOD-017]).
- `Boundary Equation / Hash / Comparison Primitives` — the institute Equatable/Hashable/
  Comparable twins.

## Out of scope

- The `Facet<2>` / `Orthant<2>` carriers and the `.facet` / `.orthant` projections: the
  `swift-boundary-facet-primitives` / `swift-boundary-orthant-primitives` bridges.
- The compass-bearing view over the same `Facet<2>` carrier (`Compass.Cardinal`):
  `swift-compass-primitives`.
- The plane-quadrant view over the same `Orthant<2>` carrier (`Sector.Quadrant`):
  `swift-sector-primitives`.
- 3D box faces/edges/corners (general `Orthotope.Face<N, K>`): deferred.

## Evaluation rule

Sub-target additions are evaluated against this scope. If a proposed addition is OUT of
scope, it extracts to a sibling package, not into this one.
