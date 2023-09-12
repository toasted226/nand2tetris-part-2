// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 20
    @20
    D=A
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
// push constant 5
    @5
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
