Check for string concatenation inside some iteration message. Since string concatenation is O(n^2), it is better to use streaming since it is O(n) - assuming that n is large enough. As a general principal avoid , since the receiver is copied. Therefore chaining , messages will lead to multiple useless copies of the receiver. 