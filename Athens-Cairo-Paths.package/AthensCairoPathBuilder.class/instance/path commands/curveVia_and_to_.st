curveVia: p1 and: p2 to: aPoint
	|  pt1 pt2 |

	pt1 := self toAbsolute: p1.
	pt2 := self toAbsolute: p2.
	endPoint := self toAbsolute: aPoint.

	self curveViaX: pt1 x Y: pt1 y viaX: pt2 x Y: pt2 y toX: endPoint x Y: endPoint y