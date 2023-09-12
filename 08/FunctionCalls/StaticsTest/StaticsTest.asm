// init
    @256
    D=A
    @SP
    M=D
// call Sys.init 0
    // push returnAddress
    @Sys.init$ret.0
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
    @Sys.init
    0;JMP
(Sys.init$ret.0)
// function Class1.set 0
(Class1.set)

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
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Class1.0
    M=D
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Class1.1
    M=D
// push constant 0
    @0
    D=A
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
// function Class1.get 0
(Class1.get)

// push static 0
    @Class1.0
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 1
    @Class1.1
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
// function Class2.set 0
(Class2.set)

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
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Class2.0
    M=D
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Class2.1
    M=D
// push constant 0
    @0
    D=A
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
// function Class2.get 0
(Class2.get)

// push static 0
    @Class2.0
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 1
    @Class2.1
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

// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 8
    @8
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Class1.set 2
    // push returnAddress
    @Class1.set$ret.0
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
    // ARG = SP - 5 - 2
    @SP
    D=M
    @5
    D=D-A
    @2
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Class1.set
    @Class1.set
    0;JMP
(Class1.set$ret.0)
// pop temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 23
    @23
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 15
    @15
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Class2.set 2
    // push returnAddress
    @Class2.set$ret.1
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
    // ARG = SP - 5 - 2
    @SP
    D=M
    @5
    D=D-A
    @2
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Class2.set
    @Class2.set
    0;JMP
(Class2.set$ret.1)
// pop temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// call Class1.get 0
    // push returnAddress
    @Class1.get$ret.2
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
    // goto Class1.get
    @Class1.get
    0;JMP
(Class1.get$ret.2)
// call Class2.get 0
    // push returnAddress
    @Class2.get$ret.3
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
    // goto Class2.get
    @Class2.get
    0;JMP
(Class2.get$ret.3)
// label WHILE
(Sys.init$WHILE)
// goto WHILE
    @Sys.init$WHILE
    0;JMP
