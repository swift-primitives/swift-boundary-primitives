// Boundary+Hash.Protocol.swift
// Conformance of Boundary.Edge / Boundary.Corner to Hash.Protocol — unconditional.
//
// Both are payload-less enums (implicitly Hashable); the `hash(into:)` witnesses live in the
// root. Empty conformances; no `#if swift(<6.4) … : Hashable {}` (implicit Hashable covers it).

public import Boundary_Primitive
public import Hash_Primitives

extension Boundary.Edge: Hash.`Protocol` {}
extension Boundary.Corner: Hash.`Protocol` {}
