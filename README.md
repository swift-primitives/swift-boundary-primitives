# swift-boundary-primitives

Box-boundary named views for the Swift Institute primitives layer.

`Boundary.Edge` is the four edges of an axis-aligned 2D box (over the `Facet<2>` carrier);
`Boundary.Corner` is the four corners (over the `Orthant<2>` carrier). Each is a thin named
view with its own identity — a box edge is not a compass bearing, a box corner is not a plane
quadrant, even though they share carriers with `Compass.Cardinal` / `Sector.Quadrant`.

```swift
import Boundary_Primitives

Boundary.Edge.top.opposite          // .bottom
Boundary.Corner.topLeft.opposite    // .bottomRight
Boundary.Corner.topLeft.isTop       // true
```

The lossless carrier projections (`Edge.facet`, `Corner.orthant`) live in the per-carrier
bridge packages `swift-boundary-facet-primitives` and `swift-boundary-orthant-primitives`.

## License

Apache License 2.0. See [LICENSE](LICENSE.md).
