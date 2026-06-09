# ``Boundary_Primitives``

@Metadata {
    @DisplayName("Boundary Primitives")
    @TitleHeading("Swift Institute — Primitives Layer")
}

Box-boundary named views — `Boundary.Edge` (four edges) and `Boundary.Corner` (four corners).

## Overview

`Boundary Primitives` ships ``Boundary_Primitive/Boundary/Edge`` and ``Boundary_Primitive/Boundary/Corner`` — thin named views of an axis-aligned box's boundary. `Edge` rides the `Facet<2>` carrier (distinct from `Compass.Cardinal`); `Corner` rides the `Orthant<2>` carrier (distinct from `Sector.Quadrant`). The distinctions — box edge ≠ compass bearing, box corner ≠ plane quadrant — are exactly what the spatial-atoms arc preserves by keeping these as separate nominal types over shared carriers.

The lossless carrier projections live in the per-carrier bridge packages `swift-boundary-facet-primitives` (`Edge.facet`) and `swift-boundary-orthant-primitives` (`Corner.orthant`).

## Topics

### Essentials

- <doc:Boundary-Scope>

### Core Types

- ``Boundary_Primitive/Boundary/Edge``
- ``Boundary_Primitive/Boundary/Corner``
