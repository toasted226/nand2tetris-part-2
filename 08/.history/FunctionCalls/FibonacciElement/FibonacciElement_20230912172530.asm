// init
    @256
    D=A
    @SP
    A=M
    M=D
// call Sys.init 0
    // push returnAddress
    @FibonacciElement.Sys.init$ret.0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push LCL
    @LCL
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push ARG
    @ARG
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THIS
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THAT
    @THAT
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // ARG = SP - 5 - 0
    @SP
    D=M
    @5
    D=D-A
    @0
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Sys.init
    @FibonacciElement.Sys.init
    0;JMP
(FibonacciElement.Sys.init$ret.0)
// function Main.fibonacci 0
(Main.fibonacci)

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
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @FibonacciElement_LT_0
    D;JLT
    D=0
    @FibonacciElement_STK_UPDATE_0
    0;JMP
(FibonacciElement_LT_0)
    D=-1
(FibonacciElement_STK_UPDATE_0)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE
    @SP
    M=M-1
    A=M
    D=M
    @FibonacciElement.Main.fibonacci$IF_TRUE
    D;JNE
// goto IF_FALSE
    @FibonacciElement.Main.fibonacci$IF_FALSE
    0;JMP
// label IF_TRUE
(FibonacciElement.Main.fibonacci$IF_TRUE)
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
    A=D
    D=M
    @THAT
    M=D
    // THIS = *(endframe - 2)
    @R14
    D=M
    @2
    D=D-A
    A=D
    D=M
    @THIS
    M=D
    // ARG = *(endframe - 3)
    @R14
    D=M
    @3
    D=D-A
    A=D
    D=M
    @ARG
    M=D
    // LCL *(endframe - 4)
    @R14
    D=M
    @4
    D=D-A
    A=D
    D=M
    @LCL
    M=D
    // goto retAddr
    @R15
    A=M
    0;JMP
// label IF_FALSE
(FibonacciElement.Main.fibonacci$IF_FALSE)
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
// push constant 2
    @2
    D=A
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
// call Main.fibonacci 1
    // push returnAddress
    @FibonacciElement.Main.fibonacci$ret.1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push LCL
    @LCL
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push ARG
    @ARG
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THIS
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THAT
    @THAT
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // ARG = SP - 5 - 1
    @SP
    D=M
    @5
    D=D-A
    @1
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Main.fibonacci
    @FibonacciElement.Main.fibonacci
    0;JMP
(FibonacciElement.Main.fibonacci$ret.1)
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
// push constant 1
    @1
    D=A
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
// call Main.fibonacci 1
    // push returnAddress
    @FibonacciElement.Main.fibonacci$ret.2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push LCL
    @LCL
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push ARG
    @ARG
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THIS
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THAT
    @THAT
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // ARG = SP - 5 - 1
    @SP
    D=M
    @5
    D=D-A
    @1
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Main.fibonacci
    @FibonacciElement.Main.fibonacci
    0;JMP
(FibonacciElement.Main.fibonacci$ret.2)
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
    A=D
    D=M
    @THAT
    M=D
    // THIS = *(endframe - 2)
    @R14
    D=M
    @2
    D=D-A
    A=D
    D=M
    @THIS
    M=D
    // ARG = *(endframe - 3)
    @R14
    D=M
    @3
    D=D-A
    A=D
    D=M
    @ARG
    M=D
    // LCL *(endframe - 4)
    @R14
    D=M
    @4
    D=D-A
    A=D
    D=M
    @LCL
    M=D
    // goto retAddr
    @R15
    A=M
    0;JMP
// function Sys.init 0
(Sys.init)

// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Main.fibonacci 1
    // push returnAddress
    @FibonacciElement.Main.fibonacci$ret.0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push LCL
    @LCL
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push ARG
    @ARG
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THIS
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THAT
    @THAT
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // ARG = SP - 5 - 1
    @SP
    D=M
    @5
    D=D-A
    @1
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Main.fibonacci
    @FibonacciElement.Main.fibonacci
    0;JMP
(FibonacciElement.Main.fibonacci$ret.0)
// label WHILE
(FibonacciElement.Sys.init$WHILE)
// goto WHILE
    @FibonacciElement.Sys.init$WHILE
    0;JMP
