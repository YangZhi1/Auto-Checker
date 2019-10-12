# Auto-Checker

Automatic Checker for Mojo FPGA

Connect A to Pin51, B to Pin41, CarryIn to Pin35

Connect (outputs) sum to Pin33 and carryOut to Pin30

States go in the order of truth table, 000 -> 001 -> 010 -> 011 -> 100 -> 101 -> 110 -> 111

If an error is detected (Sum and CarryOut does not align with the inputs), all io_led will blink
