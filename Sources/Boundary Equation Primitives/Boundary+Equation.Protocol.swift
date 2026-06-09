// Boundary+Equation.Protocol.swift
// Conformance of Boundary.Edge / Boundary.Corner to Equation.Protocol — unconditional.
//
// Both are payload-less enums (implicitly Equatable); the `==` witnesses live in the root.
// No gated stdlib shim (the implicit Equatable covers it).

public import Equation_Primitives
public import Boundary_Primitive

extension Boundary.Edge: Equation.`Protocol` {}
extension Boundary.Corner: Equation.`Protocol` {}
