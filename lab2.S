.global lab2

.syntax unified

#define A #2

#define B #10

#define C #4

lab2:

push { r0, r1, r2, r3, r4, lr }

mov r1, A

mov r2, B

mov r3, C

sub r4, r1, r2

cmp r4, #0

// (a-b)

ite ge

addGE r0, r1, r2

subLT r0, r1, r2

// if (a-b) >= 0

// res = a + b

// res = a - b

sdiv r0, r0, r3

// res = res / c

pop { r0, r1, r2, r3, r4, pc }
