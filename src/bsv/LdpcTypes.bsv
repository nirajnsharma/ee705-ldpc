package LdpcTypes;
import Vector :: *;

// Global types used across the design
// Soft-value bit pattern
typedef Bit #(4) Symbol;

// Number of symbols in a codeword
typedef 7 CodeLength;

// A coded/decoded word
typedef Vector #(CodeLength, Symbol) DataWord;

// Number of bit nodes
typedef CodeLength NBitNodes;

// Number of check nodes
typedef CodeLength NCheckNodes;

// Fanouts from an individual check-node. This is the number of 1s in a row of
// the H-matrix
typedef 3 NConnections;

// Number of iterations between bit nodes and check nodes
typedef 8 NIterations;
endpackage : LdpcTypes

