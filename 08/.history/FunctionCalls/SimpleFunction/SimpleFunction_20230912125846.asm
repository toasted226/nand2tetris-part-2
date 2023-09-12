// function SimpleFunction.test 2
(SimpleFunction.SimpleFunction.test)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// push local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// add
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D+M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// not
    @SP
    M=M-1
    A=M
    D=!M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// add
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D+M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// sub
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @SP
    A=M
    M=D
    @SP
    M=M+1
// return
    // endframe = LCL
    @LCL
    D=M
    @R14
    M=D
    // retAddr = *(endframe - 5)
    @5
    A=D-A
    D=M
    @R15
    M=D
    // *ARG = pop()
    @SP
    M=M-1
    A=M
    D=M
    @ARG
    A=M
    M=D
    // SP = ARG + 1
    @ARG
    D=M+1
    @SP
    M=D
    // THAT = *(endframe - 1)
    @R14
    D=M-1
    @THAT
    M=D
    // THIS = *(endframe - 2)
    @R14
    D=M
    @2
    D=D-A
    @THIS
    M=D
    // ARG = *(endframe - 3)
    @R14
    D=M
    @3
    D=D-A
    @ARG
    M=D
    // LCL *(endframe - 4)
    @R14
    D=M
    @4
    D=D-A
    @LCL
    M=D
    // goto retAddr
    @R15
    A=M
    0;JMP
