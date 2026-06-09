// Boundary+Comparison.Protocol.swift
// Conformance of Boundary.Edge / Boundary.Corner to Comparison.Protocol — unconditional.
//
// The `<` / `<=` / `>` / `>=` witnesses live in the root. Enums are not auto-Comparable, so
// the stdlib `Comparable` conformances are declared here, guarded `#if swift(<6.4)`.

public import Comparison_Primitives
public import Boundary_Primitive

extension Boundary.Edge: Comparison.`Protocol` {}
extension Boundary.Corner: Comparison.`Protocol` {}

#if swift(<6.4)
    extension Boundary.Edge: Comparable {}
    extension Boundary.Corner: Comparable {}
#endif
