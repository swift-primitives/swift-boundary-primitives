// Boundary.swift
// The box-boundary domain.

/// Namespace for the boundary elements of an axis-aligned box.
///
/// `Boundary` groups the named views of a box's boundary: ``Boundary/Edge`` (the four edges,
/// over the `Facet<2>` carrier) and ``Boundary/Corner`` (the four corners, over the
/// `Orthant<2>` carrier). Each is a distinct identity — a box edge is *not* a compass bearing
/// even though both ride `Facet<2>`, and a box corner is *not* a plane quadrant even though
/// both ride `Orthant<2>`.
public enum Boundary {}
