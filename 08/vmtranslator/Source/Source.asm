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
// function Array.new 0
(Array.new)

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
// push constant 0
    @0
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
    @Array_GT_0
    D;JGT
    D=0
    @Array_STK_UPDATE_0
    0;JMP
(Array_GT_0)
    D=-1
(Array_STK_UPDATE_0)
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
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Array.new$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Array.new$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Array.new$IF_TRUE0)
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.1
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.1)
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
// label IF_FALSE0
(Array.new$IF_FALSE0)
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
// call Memory.alloc 1
    // push returnAddress
    @Memory.alloc$ret.2
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
    // goto Memory.alloc
    @Memory.alloc
    0;JMP
(Memory.alloc$ret.2)
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
// function Array.dispose 0
(Array.dispose)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.deAlloc 1
    // push returnAddress
    @Memory.deAlloc$ret.3
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
    // goto Memory.deAlloc
    @Memory.deAlloc
    0;JMP
(Memory.deAlloc$ret.3)
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
// function Collectible.new 0
(Collectible.new)

// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.alloc 1
    // push returnAddress
    @Memory.alloc$ret.0
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
    // goto Memory.alloc
    @Memory.alloc
    0;JMP
(Memory.alloc$ret.0)
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
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
// pop this 0
    @0
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop this 1
    @1
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Collectible.draw 1
    // push returnAddress
    @Collectible.draw$ret.1
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
    // goto Collectible.draw
    @Collectible.draw
    0;JMP
(Collectible.draw$ret.1)
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
// push pointer 0
    @THIS
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
// function Collectible.draw 0
(Collectible.draw)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push constant 0
    @0
    D=A
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
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.2
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.2)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawCircle 3
    // push returnAddress
    @Screen.drawCircle$ret.3
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawCircle
    @Screen.drawCircle
    0;JMP
(Screen.drawCircle$ret.3)
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
// function Game.new 0
(Game.new)

// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.alloc 1
    // push returnAddress
    @Memory.alloc$ret.0
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
    // goto Memory.alloc
    @Memory.alloc
    0;JMP
(Memory.alloc$ret.0)
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.new 4
    // push returnAddress
    @Player.new$ret.1
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Player.new
    @Player.new
    0;JMP
(Player.new$ret.1)
// pop this 0
    @0
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 256
    @256
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 128
    @128
    D=A
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
// call Collectible.new 3
    // push returnAddress
    @Collectible.new$ret.2
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Collectible.new
    @Collectible.new
    0;JMP
(Collectible.new$ret.2)
// pop this 1
    @1
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push pointer 0
    @THIS
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
// function Game.run 3
(Game.run)
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
// init local 0
    @SP
    A=M
    M=0
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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Game.run$WHILE_EXP0)
// push local 2
    @2
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$WHILE_END0
    D;JNE
// call Keyboard.keyPressed 0
    // push returnAddress
    @Keyboard.keyPressed$ret.3
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
    // goto Keyboard.keyPressed
    @Keyboard.keyPressed
    0;JMP
(Keyboard.keyPressed$ret.3)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 131
    @131
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
    @Game_EQ_2
    D;JEQ
    D=0
    @Game_STK_UPDATE_2
    0;JMP
(Game_EQ_2)
    D=-1
(Game_STK_UPDATE_2)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Game.run$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Game.run$IF_TRUE0)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Game.run$IF_FALSE0)
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
// push constant 133
    @133
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
    @Game_EQ_3
    D;JEQ
    D=0
    @Game_STK_UPDATE_3
    0;JMP
(Game_EQ_3)
    D=-1
(Game_STK_UPDATE_3)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Game.run$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Game.run$IF_TRUE1)
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(Game.run$IF_FALSE1)
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
// push constant 130
    @130
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
    @Game_EQ_4
    D;JEQ
    D=0
    @Game_STK_UPDATE_4
    0;JMP
(Game_EQ_4)
    D=-1
(Game_STK_UPDATE_4)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Game.run$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Game.run$IF_TRUE2)
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE2
(Game.run$IF_FALSE2)
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
// push constant 132
    @132
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
    @Game_EQ_5
    D;JEQ
    D=0
    @Game_STK_UPDATE_5
    0;JMP
(Game_EQ_5)
    D=-1
(Game_STK_UPDATE_5)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Game.run$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Game.run$IF_TRUE3)
// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE3
(Game.run$IF_FALSE3)
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
// push constant 140
    @140
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
    @Game_EQ_6
    D;JEQ
    D=0
    @Game_STK_UPDATE_6
    0;JMP
(Game_EQ_6)
    D=-1
(Game_STK_UPDATE_6)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE4
    @SP
    M=M-1
    A=M
    D=M
    @Game.run$IF_TRUE4
    D;JNE
// goto IF_FALSE4
    @Game.run$IF_FALSE4
    0;JMP
// label IF_TRUE4
(Game.run$IF_TRUE4)
// push constant 0
    @0
    D=A
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE4
(Game.run$IF_FALSE4)
// push pointer 0
    @THIS
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
// call Game.movePlayer 2
    // push returnAddress
    @Game.movePlayer$ret.4
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
    // goto Game.movePlayer
    @Game.movePlayer
    0;JMP
(Game.movePlayer$ret.4)
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
// goto WHILE_EXP0
    @Game.run$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Game.run$WHILE_END0)
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
// function Game.movePlayer 0
(Game.movePlayer)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
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
// push constant 1
    @1
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
    @Game_EQ_8
    D;JEQ
    D=0
    @Game_STK_UPDATE_8
    0;JMP
(Game_EQ_8)
    D=-1
(Game_STK_UPDATE_8)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Game.movePlayer$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Game.movePlayer$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Game.movePlayer$IF_TRUE0)
// push this 0
    @0
    D=A
    @THIS
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
// call Player.moveUp 1
    // push returnAddress
    @Player.moveUp$ret.5
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
    // goto Player.moveUp
    @Player.moveUp
    0;JMP
(Player.moveUp$ret.5)
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
// label IF_FALSE0
(Game.movePlayer$IF_FALSE0)
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
    @Game_EQ_9
    D;JEQ
    D=0
    @Game_STK_UPDATE_9
    0;JMP
(Game_EQ_9)
    D=-1
(Game_STK_UPDATE_9)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Game.movePlayer$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Game.movePlayer$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Game.movePlayer$IF_TRUE1)
// push this 0
    @0
    D=A
    @THIS
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
// call Player.moveDown 1
    // push returnAddress
    @Player.moveDown$ret.6
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
    // goto Player.moveDown
    @Player.moveDown
    0;JMP
(Player.moveDown$ret.6)
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
// label IF_FALSE1
(Game.movePlayer$IF_FALSE1)
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
// push constant 3
    @3
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
    @Game_EQ_10
    D;JEQ
    D=0
    @Game_STK_UPDATE_10
    0;JMP
(Game_EQ_10)
    D=-1
(Game_STK_UPDATE_10)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Game.movePlayer$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Game.movePlayer$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Game.movePlayer$IF_TRUE2)
// push this 0
    @0
    D=A
    @THIS
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
// call Player.moveLeft 1
    // push returnAddress
    @Player.moveLeft$ret.7
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
    // goto Player.moveLeft
    @Player.moveLeft
    0;JMP
(Player.moveLeft$ret.7)
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
// label IF_FALSE2
(Game.movePlayer$IF_FALSE2)
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
// push constant 4
    @4
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
    @Game_EQ_11
    D;JEQ
    D=0
    @Game_STK_UPDATE_11
    0;JMP
(Game_EQ_11)
    D=-1
(Game_STK_UPDATE_11)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Game.movePlayer$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Game.movePlayer$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Game.movePlayer$IF_TRUE3)
// push this 0
    @0
    D=A
    @THIS
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
// call Player.moveRight 1
    // push returnAddress
    @Player.moveRight$ret.8
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
    // goto Player.moveRight
    @Player.moveRight
    0;JMP
(Player.moveRight$ret.8)
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
// label IF_FALSE3
(Game.movePlayer$IF_FALSE3)
// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.wait 1
    // push returnAddress
    @Sys.wait$ret.9
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
    // goto Sys.wait
    @Sys.wait
    0;JMP
(Sys.wait$ret.9)
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
// function Game.dispose 0
(Game.dispose)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// call Player.dispose 1
    // push returnAddress
    @Player.dispose$ret.10
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
    // goto Player.dispose
    @Player.dispose
    0;JMP
(Player.dispose$ret.10)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.deAlloc 1
    // push returnAddress
    @Memory.deAlloc$ret.11
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
    // goto Memory.deAlloc
    @Memory.deAlloc
    0;JMP
(Memory.deAlloc$ret.11)
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
// function Keyboard.init 0
(Keyboard.init)

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
// function Keyboard.keyPressed 0
(Keyboard.keyPressed)

// push constant 24576
    @24576
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.peek 1
    // push returnAddress
    @Memory.peek$ret.0
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
    // goto Memory.peek
    @Memory.peek
    0;JMP
(Memory.peek$ret.0)
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
// function Keyboard.readChar 2
(Keyboard.readChar)
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

// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.1
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.1)
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
// label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
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
// push constant 0
    @0
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
    @Keyboard_EQ_0
    D;JEQ
    D=0
    @Keyboard_STK_UPDATE_0
    0;JMP
(Keyboard_EQ_0)
    D=-1
(Keyboard_STK_UPDATE_0)
    @SP
    A=M
    M=D
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
// push constant 0
    @0
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
    @Keyboard_GT_1
    D;JGT
    D=0
    @Keyboard_STK_UPDATE_1
    0;JMP
(Keyboard_GT_1)
    D=-1
(Keyboard_STK_UPDATE_1)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Keyboard.readChar$WHILE_END0
    D;JNE
// call Keyboard.keyPressed 0
    // push returnAddress
    @Keyboard.keyPressed$ret.2
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
    // goto Keyboard.keyPressed
    @Keyboard.keyPressed
    0;JMP
(Keyboard.keyPressed$ret.2)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 0
    @0
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
    @Keyboard_GT_4
    D;JGT
    D=0
    @Keyboard_STK_UPDATE_4
    0;JMP
(Keyboard_GT_4)
    D=-1
(Keyboard_STK_UPDATE_4)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Keyboard.readChar$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Keyboard.readChar$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
// goto WHILE_EXP0
    @Keyboard.readChar$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Keyboard.readChar$WHILE_END0)
// call String.backSpace 0
    // push returnAddress
    @String.backSpace$ret.3
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
    // goto String.backSpace
    @String.backSpace
    0;JMP
(String.backSpace$ret.3)
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.4
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.4)
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
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.5
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.5)
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
// function Keyboard.readLine 5
(Keyboard.readLine)
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
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// push constant 80
    @80
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call String.new 1
    // push returnAddress
    @String.new$ret.6
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
    // goto String.new
    @String.new
    0;JMP
(String.new$ret.6)
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Output.printString 1
    // push returnAddress
    @Output.printString$ret.7
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
    // goto Output.printString
    @Output.printString
    0;JMP
(Output.printString$ret.7)
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
// call String.newLine 0
    // push returnAddress
    @String.newLine$ret.8
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
    // goto String.newLine
    @String.newLine
    0;JMP
(String.newLine$ret.8)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// call String.backSpace 0
    // push returnAddress
    @String.backSpace$ret.9
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
    // goto String.backSpace
    @String.backSpace
    0;JMP
(String.backSpace$ret.9)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
// push local 4
    @4
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Keyboard.readLine$WHILE_END0
    D;JNE
// call Keyboard.readChar 0
    // push returnAddress
    @Keyboard.readChar$ret.10
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
    // goto Keyboard.readChar
    @Keyboard.readChar
    0;JMP
(Keyboard.readChar$ret.10)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Keyboard_EQ_7
    D;JEQ
    D=0
    @Keyboard_STK_UPDATE_7
    0;JMP
(Keyboard_EQ_7)
    D=-1
(Keyboard_STK_UPDATE_7)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 4
    @4
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
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Keyboard.readLine$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Keyboard.readLine$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
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
// push local 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Keyboard_EQ_9
    D;JEQ
    D=0
    @Keyboard_STK_UPDATE_9
    0;JMP
(Keyboard_EQ_9)
    D=-1
(Keyboard_STK_UPDATE_9)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Keyboard.readLine$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Keyboard.readLine$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
// push local 3
    @3
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
// call String.eraseLastChar 1
    // push returnAddress
    @String.eraseLastChar$ret.11
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
    // goto String.eraseLastChar
    @String.eraseLastChar
    0;JMP
(String.eraseLastChar$ret.11)
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
// goto IF_END1
    @Keyboard.readLine$IF_END1
    0;JMP
// label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
// push local 3
    @3
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
// call String.appendChar 2
    // push returnAddress
    @String.appendChar$ret.12
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
    // goto String.appendChar
    @String.appendChar
    0;JMP
(String.appendChar$ret.12)
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END1
(Keyboard.readLine$IF_END1)
// label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
// goto WHILE_EXP0
    @Keyboard.readLine$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Keyboard.readLine$WHILE_END0)
// push local 3
    @3
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
// function Keyboard.readInt 2
(Keyboard.readInt)
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
// call Keyboard.readLine 1
    // push returnAddress
    @Keyboard.readLine$ret.13
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
    // goto Keyboard.readLine
    @Keyboard.readLine
    0;JMP
(Keyboard.readLine$ret.13)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call String.intValue 1
    // push returnAddress
    @String.intValue$ret.14
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
    // goto String.intValue
    @String.intValue
    0;JMP
(String.intValue$ret.14)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call String.dispose 1
    // push returnAddress
    @String.dispose$ret.15
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
    // goto String.dispose
    @String.dispose
    0;JMP
(String.dispose$ret.15)
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
// function Main.main 1
(Main.main)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// call Game.new 0
    // push returnAddress
    @Game.new$ret.0
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
    // goto Game.new
    @Game.new
    0;JMP
(Game.new$ret.0)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Game.run 1
    // push returnAddress
    @Game.run$ret.1
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
    // goto Game.run
    @Game.run
    0;JMP
(Game.run$ret.1)
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
// call Game.dispose 1
    // push returnAddress
    @Game.dispose$ret.2
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
    // goto Game.dispose
    @Game.dispose
    0;JMP
(Game.dispose$ret.2)
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
// function Math.init 1
(Math.init)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.0
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.0)
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Math.1
    M=D
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.1
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.1)
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Math.0
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 0
    @Math.0
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Math.init$WHILE_EXP0)
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
// push constant 15
    @15
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
    @Math_LT_1
    D;JLT
    D=0
    @Math_STK_UPDATE_1
    0;JMP
(Math_LT_1)
    D=-1
(Math_STK_UPDATE_1)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Math.init$WHILE_END0
    D;JNE
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push static 0
    @Math.0
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Math.init$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Math.init$WHILE_END0)
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
// function Math.abs 0
(Math.abs)

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
// push constant 0
    @0
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
    @Math_LT_10
    D;JLT
    D=0
    @Math_STK_UPDATE_10
    0;JMP
(Math_LT_10)
    D=-1
(Math_STK_UPDATE_10)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.abs$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.abs$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.abs$IF_TRUE0)
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Math.abs$IF_FALSE0)
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
// function Math.multiply 5
(Math.multiply)
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
// init local 0
    @SP
    A=M
    M=0
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
// push constant 0
    @0
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
    @Math_LT_12
    D;JLT
    D=0
    @Math_STK_UPDATE_12
    0;JMP
(Math_LT_12)
    D=-1
(Math_STK_UPDATE_12)
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
// push constant 0
    @0
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
    @Math_GT_13
    D;JGT
    D=0
    @Math_STK_UPDATE_13
    0;JMP
(Math_GT_13)
    D=-1
(Math_STK_UPDATE_13)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
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
// push constant 0
    @0
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
    @Math_GT_15
    D;JGT
    D=0
    @Math_STK_UPDATE_15
    0;JMP
(Math_GT_15)
    D=-1
(Math_STK_UPDATE_15)
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
// push constant 0
    @0
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
    @Math_LT_16
    D;JLT
    D=0
    @Math_STK_UPDATE_16
    0;JMP
(Math_LT_16)
    D=-1
(Math_STK_UPDATE_16)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.2
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.2)
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.3
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.3)
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_LT_19
    D;JLT
    D=0
    @Math_STK_UPDATE_19
    0;JMP
(Math_LT_19)
    D=-1
(Math_STK_UPDATE_19)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.multiply$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.multiply$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.multiply$IF_TRUE0)
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Math.multiply$IF_FALSE0)
// label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
// push local 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_LT_22
    D;JLT
    D=0
    @Math_STK_UPDATE_22
    0;JMP
(Math_LT_22)
    D=-1
(Math_STK_UPDATE_22)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Math.multiply$WHILE_END0
    D;JNE
// push local 3
    @3
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
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
    @Math_EQ_26
    D;JEQ
    D=0
    @Math_STK_UPDATE_26
    0;JMP
(Math_EQ_26)
    D=-1
(Math_STK_UPDATE_26)
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
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Math.multiply$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Math.multiply$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Math.multiply$IF_TRUE1)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// push local 3
    @3
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(Math.multiply$IF_FALSE1)
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
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// push constant 1
    @1
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Math.multiply$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Math.multiply$WHILE_END0)
// push local 4
    @4
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Math.multiply$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Math.multiply$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Math.multiply$IF_TRUE2)
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE2
(Math.multiply$IF_FALSE2)
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
// function Math.divide 4
(Math.divide)
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
// push constant 0
    @0
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
    @Math_EQ_34
    D;JEQ
    D=0
    @Math_STK_UPDATE_34
    0;JMP
(Math_EQ_34)
    D=-1
(Math_STK_UPDATE_34)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.divide$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.divide$IF_TRUE0)
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.4
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.4)
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
// label IF_FALSE0
(Math.divide$IF_FALSE0)
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
// push constant 0
    @0
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
    @Math_LT_35
    D;JLT
    D=0
    @Math_STK_UPDATE_35
    0;JMP
(Math_LT_35)
    D=-1
(Math_STK_UPDATE_35)
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
// push constant 0
    @0
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
    @Math_GT_36
    D;JGT
    D=0
    @Math_STK_UPDATE_36
    0;JMP
(Math_GT_36)
    D=-1
(Math_STK_UPDATE_36)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
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
// push constant 0
    @0
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
    @Math_GT_38
    D;JGT
    D=0
    @Math_STK_UPDATE_38
    0;JMP
(Math_GT_38)
    D=-1
(Math_STK_UPDATE_38)
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
// push constant 0
    @0
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
    @Math_LT_39
    D;JLT
    D=0
    @Math_STK_UPDATE_39
    0;JMP
(Math_LT_39)
    D=-1
(Math_STK_UPDATE_39)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 1
    @Math.1
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.5
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.5)
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.6
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.6)
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Math.divide$WHILE_EXP0)
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
// push constant 15
    @15
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
    @Math_LT_43
    D;JLT
    D=0
    @Math_STK_UPDATE_43
    0;JMP
(Math_LT_43)
    D=-1
(Math_STK_UPDATE_43)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 3
    @3
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$WHILE_END0
    D;JNE
// push constant 32767
    @32767
    D=A
    @SP
    A=M
    M=D
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_LT_52
    D;JLT
    D=0
    @Math_STK_UPDATE_52
    0;JMP
(Math_LT_52)
    D=-1
(Math_STK_UPDATE_52)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Math.divide$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Math.divide$IF_TRUE1)
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
// push constant 1
    @1
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
// push static 1
    @Math.1
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_GT_63
    D;JGT
    D=0
    @Math_STK_UPDATE_63
    0;JMP
(Math_GT_63)
    D=-1
(Math_STK_UPDATE_63)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Math.divide$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Math.divide$IF_TRUE2)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE2
(Math.divide$IF_FALSE2)
// label IF_FALSE1
(Math.divide$IF_FALSE1)
// goto WHILE_EXP0
    @Math.divide$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Math.divide$WHILE_END0)
// label WHILE_EXP1
(Math.divide$WHILE_EXP1)
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
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
    @Math_GT_67
    D;JGT
    D=0
    @Math_STK_UPDATE_67
    0;JMP
(Math_GT_67)
    D=-1
(Math_STK_UPDATE_67)
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
// if-goto WHILE_END1
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$WHILE_END1
    D;JNE
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_GT_72
    D;JGT
    D=0
    @Math_STK_UPDATE_72
    0;JMP
(Math_GT_72)
    D=-1
(Math_STK_UPDATE_72)
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
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Math.divide$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Math.divide$IF_TRUE3)
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push static 1
    @Math.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE3
(Math.divide$IF_FALSE3)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP1
    @Math.divide$WHILE_EXP1
    0;JMP
// label WHILE_END1
(Math.divide$WHILE_END1)
// push local 2
    @2
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
// if-goto IF_TRUE4
    @SP
    M=M-1
    A=M
    D=M
    @Math.divide$IF_TRUE4
    D;JNE
// goto IF_FALSE4
    @Math.divide$IF_FALSE4
    0;JMP
// label IF_TRUE4
(Math.divide$IF_TRUE4)
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE4
(Math.divide$IF_FALSE4)
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
// function Math.sqrt 4
(Math.sqrt)
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
// push constant 0
    @0
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
    @Math_LT_80
    D;JLT
    D=0
    @Math_STK_UPDATE_80
    0;JMP
(Math_LT_80)
    D=-1
(Math_STK_UPDATE_80)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.sqrt$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.sqrt$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.sqrt$IF_TRUE0)
// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.7
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.7)
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
// label IF_FALSE0
(Math.sqrt$IF_FALSE0)
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
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
    @Math_GT_82
    D;JGT
    D=0
    @Math_STK_UPDATE_82
    0;JMP
(Math_GT_82)
    D=-1
(Math_STK_UPDATE_82)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Math.sqrt$WHILE_END0
    D;JNE
// push local 3
    @3
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
// push static 0
    @Math.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.8
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.8)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_GT_86
    D;JGT
    D=0
    @Math_STK_UPDATE_86
    0;JMP
(Math_GT_86)
    D=-1
(Math_STK_UPDATE_86)
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
// push local 2
    @2
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
// push constant 0
    @0
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
    @Math_LT_88
    D;JLT
    D=0
    @Math_STK_UPDATE_88
    0;JMP
(Math_LT_88)
    D=-1
(Math_STK_UPDATE_88)
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Math.sqrt$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Math.sqrt$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Math.sqrt$IF_TRUE1)
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(Math.sqrt$IF_FALSE1)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Math.sqrt$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Math.sqrt$WHILE_END0)
// push local 3
    @3
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
// function Math.max 0
(Math.max)

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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_GT_92
    D;JGT
    D=0
    @Math_STK_UPDATE_92
    0;JMP
(Math_GT_92)
    D=-1
(Math_STK_UPDATE_92)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.max$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.max$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.max$IF_TRUE0)
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Math.max$IF_FALSE0)
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
// function Math.min 0
(Math.min)

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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Math_LT_93
    D;JLT
    D=0
    @Math_STK_UPDATE_93
    0;JMP
(Math_LT_93)
    D=-1
(Math_STK_UPDATE_93)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Math.min$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Math.min$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Math.min$IF_TRUE0)
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Math.min$IF_FALSE0)
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
// function Memory.init 0
(Memory.init)

// push constant 0
    @0
    D=A
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
    @Memory.0
    M=D
// push constant 2048
    @2048
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 0
    @Memory.0
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
// push constant 14334
    @14334
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 2049
    @2049
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 0
    @Memory.0
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
// push constant 2050
    @2050
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function Memory.peek 0
(Memory.peek)

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
// push static 0
    @Memory.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// function Memory.poke 0
(Memory.poke)

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
// push static 0
    @Memory.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function Memory.alloc 2
(Memory.alloc)
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
// push constant 0
    @0
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
    @Memory_LT_4
    D;JLT
    D=0
    @Memory_STK_UPDATE_4
    0;JMP
(Memory_LT_4)
    D=-1
(Memory_STK_UPDATE_4)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Memory.alloc$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Memory.alloc$IF_TRUE0)
// push constant 5
    @5
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.0
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.0)
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
// label IF_FALSE0
(Memory.alloc$IF_FALSE0)
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
// push constant 0
    @0
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
    @Memory_EQ_5
    D;JEQ
    D=0
    @Memory_STK_UPDATE_5
    0;JMP
(Memory_EQ_5)
    D=-1
(Memory_STK_UPDATE_5)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Memory.alloc$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Memory.alloc$IF_TRUE1)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(Memory.alloc$IF_FALSE1)
// push constant 2048
    @2048
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
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
// push constant 16383
    @16383
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
    @Memory_LT_6
    D;JLT
    D=0
    @Memory_STK_UPDATE_6
    0;JMP
(Memory_LT_6)
    D=-1
(Memory_STK_UPDATE_6)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Memory_LT_8
    D;JLT
    D=0
    @Memory_STK_UPDATE_8
    0;JMP
(Memory_LT_8)
    D=-1
(Memory_STK_UPDATE_8)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$WHILE_END0
    D;JNE
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 0
    @0
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
    @Memory_EQ_13
    D;JEQ
    D=0
    @Memory_STK_UPDATE_13
    0;JMP
(Memory_EQ_13)
    D=-1
(Memory_STK_UPDATE_13)
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
// push constant 16382
    @16382
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
    @Memory_GT_14
    D;JGT
    D=0
    @Memory_STK_UPDATE_14
    0;JMP
(Memory_GT_14)
    D=-1
(Memory_STK_UPDATE_14)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 0
    @0
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
    @Memory_EQ_17
    D;JEQ
    D=0
    @Memory_STK_UPDATE_17
    0;JMP
(Memory_EQ_17)
    D=-1
(Memory_STK_UPDATE_17)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Memory.alloc$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Memory.alloc$IF_TRUE2)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END2
    @Memory.alloc$IF_END2
    0;JMP
// label IF_FALSE2
(Memory.alloc$IF_FALSE2)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 0
    @0
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Memory_EQ_26
    D;JEQ
    D=0
    @Memory_STK_UPDATE_26
    0;JMP
(Memory_EQ_26)
    D=-1
(Memory_STK_UPDATE_26)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Memory.alloc$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Memory.alloc$IF_TRUE3)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push constant 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END3
    @Memory.alloc$IF_END3
    0;JMP
// label IF_FALSE3
(Memory.alloc$IF_FALSE3)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push constant 1
    @1
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END3
(Memory.alloc$IF_END3)
// label IF_END2
(Memory.alloc$IF_END2)
// goto WHILE_EXP0
    @Memory.alloc$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Memory.alloc$WHILE_END0)
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
// push constant 16379
    @16379
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
    @Memory_GT_32
    D;JGT
    D=0
    @Memory_STK_UPDATE_32
    0;JMP
(Memory_GT_32)
    D=-1
(Memory_STK_UPDATE_32)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE4
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE4
    D;JNE
// goto IF_FALSE4
    @Memory.alloc$IF_FALSE4
    0;JMP
// label IF_TRUE4
(Memory.alloc$IF_TRUE4)
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.1
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.1)
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
// label IF_FALSE4
(Memory.alloc$IF_FALSE4)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Memory_GT_35
    D;JGT
    D=0
    @Memory_STK_UPDATE_35
    0;JMP
(Memory_GT_35)
    D=-1
(Memory_STK_UPDATE_35)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE5
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE5
    D;JNE
// goto IF_FALSE5
    @Memory.alloc$IF_FALSE5
    0;JMP
// label IF_TRUE5
(Memory.alloc$IF_TRUE5)
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Memory_EQ_43
    D;JEQ
    D=0
    @Memory_STK_UPDATE_43
    0;JMP
(Memory_EQ_43)
    D=-1
(Memory_STK_UPDATE_43)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE6
    @SP
    M=M-1
    A=M
    D=M
    @Memory.alloc$IF_TRUE6
    D;JNE
// goto IF_FALSE6
    @Memory.alloc$IF_FALSE6
    0;JMP
// label IF_TRUE6
(Memory.alloc$IF_TRUE6)
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
// push constant 3
    @3
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
// push constant 4
    @4
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END6
    @Memory.alloc$IF_END6
    0;JMP
// label IF_FALSE6
(Memory.alloc$IF_FALSE6)
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
// push constant 3
    @3
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END6
(Memory.alloc$IF_END6)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push constant 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE5
(Memory.alloc$IF_FALSE5)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 2
    @2
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
// function Memory.deAlloc 2
(Memory.deAlloc)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 0
    @0
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
    @Memory_EQ_59
    D;JEQ
    D=0
    @Memory_STK_UPDATE_59
    0;JMP
(Memory_EQ_59)
    D=-1
(Memory_STK_UPDATE_59)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Memory.deAlloc$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Memory.deAlloc$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END0
    @Memory.deAlloc$IF_END0
    0;JMP
// label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 0
    @0
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Memory_EQ_71
    D;JEQ
    D=0
    @Memory_STK_UPDATE_71
    0;JMP
(Memory_EQ_71)
    D=-1
(Memory_STK_UPDATE_71)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Memory.deAlloc$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Memory.deAlloc$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push constant 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END1
    @Memory.deAlloc$IF_END1
    0;JMP
// label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push constant 1
    @1
    D=A
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END1
(Memory.deAlloc$IF_END1)
// label IF_END0
(Memory.deAlloc$IF_END0)
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
// function Output.init 0
(Output.init)

// push constant 16384
    @16384
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop static 4
    @SP
    M=M-1
    A=M
    D=M
    @Output.4
    M=D
// push constant 0
    @0
    D=A
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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// push constant 32
    @32
    D=A
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
    @Output.1
    M=D
// push constant 0
    @0
    D=A
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
    @Output.0
    M=D
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call String.new 1
    // push returnAddress
    @String.new$ret.0
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
    // goto String.new
    @String.new
    0;JMP
(String.new$ret.0)
// pop static 3
    @SP
    M=M-1
    A=M
    D=M
    @Output.3
    M=D
// call Output.initMap 0
    // push returnAddress
    @Output.initMap$ret.1
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
    // goto Output.initMap
    @Output.initMap
    0;JMP
(Output.initMap$ret.1)
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
// call Output.createShiftedMap 0
    // push returnAddress
    @Output.createShiftedMap$ret.2
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
    // goto Output.createShiftedMap
    @Output.createShiftedMap
    0;JMP
(Output.createShiftedMap$ret.2)
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
// function Output.initMap 0
(Output.initMap)

// push constant 127
    @127
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.3
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.3)
// pop static 5
    @SP
    M=M-1
    A=M
    D=M
    @Output.5
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.4
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.4)
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
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.5
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.5)
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
// push constant 33
    @33
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.6
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.6)
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
// push constant 34
    @34
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.7
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.7)
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
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.8
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.8)
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
// push constant 36
    @36
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.9
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.9)
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
// push constant 37
    @37
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 49
    @49
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.10
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.10)
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
// push constant 38
    @38
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.11
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.11)
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
// push constant 39
    @39
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.12
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.12)
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
// push constant 40
    @40
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.13
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.13)
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
// push constant 41
    @41
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.14
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.14)
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
// push constant 42
    @42
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.15
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.15)
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
// push constant 43
    @43
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.16
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.16)
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
// push constant 44
    @44
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.17
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.17)
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
// push constant 45
    @45
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.18
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.18)
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
// push constant 46
    @46
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.19
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.19)
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
// push constant 47
    @47
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.20
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.20)
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
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.21
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.21)
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
// push constant 49
    @49
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
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
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.22
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.22)
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
// push constant 50
    @50
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.23
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.23)
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
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.24
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.24)
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
// push constant 52
    @52
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 26
    @26
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 25
    @25
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 60
    @60
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.25
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.25)
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
// push constant 53
    @53
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.26
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.26)
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
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.27
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.27)
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
// push constant 55
    @55
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 49
    @49
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.28
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.28)
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
// push constant 56
    @56
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.29
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.29)
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
// push constant 57
    @57
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 62
    @62
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.30
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.30)
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
// push constant 58
    @58
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.31
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.31)
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
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.32
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.32)
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
// push constant 60
    @60
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.33
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.33)
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
// push constant 61
    @61
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.34
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.34)
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
// push constant 62
    @62
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.35
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.35)
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
// push constant 64
    @64
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.36
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.36)
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
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.37
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.37)
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
// push constant 65
    @65
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.38
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.38)
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
// push constant 66
    @66
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.39
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.39)
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
// push constant 67
    @67
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.40
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.40)
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
// push constant 68
    @68
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
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.41
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.41)
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
// push constant 69
    @69
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 11
    @11
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
// push constant 11
    @11
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.42
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.42)
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
// push constant 70
    @70
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 11
    @11
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
// push constant 11
    @11
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.43
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.43)
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
// push constant 71
    @71
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 44
    @44
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.44
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.44)
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
// push constant 72
    @72
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.45
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.45)
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
// push constant 73
    @73
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.46
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.46)
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
// push constant 74
    @74
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 60
    @60
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.47
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.47)
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
// push constant 75
    @75
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
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
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.48
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.48)
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
// push constant 76
    @76
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.49
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.49)
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
// push constant 77
    @77
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 33
    @33
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.50
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.50)
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
// push constant 78
    @78
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 55
    @55
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 55
    @55
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.51
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.51)
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
// push constant 79
    @79
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.52
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.52)
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
// push constant 80
    @80
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.53
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.53)
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
// push constant 81
    @81
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 59
    @59
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.54
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.54)
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
// push constant 82
    @82
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.55
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.55)
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
// push constant 83
    @83
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.56
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.56)
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
// push constant 84
    @84
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 45
    @45
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.57
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.57)
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
// push constant 85
    @85
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.58
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.58)
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
// push constant 86
    @86
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.59
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.59)
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
// push constant 87
    @87
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.60
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.60)
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
// push constant 88
    @88
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.61
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.61)
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
// push constant 89
    @89
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.62
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.62)
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
// push constant 90
    @90
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 49
    @49
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 35
    @35
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.63
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.63)
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
// push constant 91
    @91
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.64
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.64)
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
// push constant 92
    @92
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
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
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.65
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.65)
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
// push constant 93
    @93
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.66
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.66)
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
// push constant 94
    @94
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
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.67
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.67)
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
// push constant 95
    @95
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.68
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.68)
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
// push constant 96
    @96
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.69
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.69)
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
// push constant 97
    @97
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.70
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.70)
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
// push constant 98
    @98
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
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
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.71
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.71)
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
// push constant 99
    @99
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.72
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.72)
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
// push constant 100
    @100
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 60
    @60
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.73
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.73)
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
// push constant 101
    @101
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.74
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.74)
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
// push constant 102
    @102
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 38
    @38
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
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
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.75
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.75)
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
// push constant 103
    @103
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 62
    @62
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.76
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.76)
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
// push constant 104
    @104
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 55
    @55
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.77
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.77)
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
// push constant 105
    @105
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.78
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.78)
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
// push constant 106
    @106
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 56
    @56
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.79
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.79)
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
// push constant 107
    @107
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
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
// push constant 15
    @15
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.80
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.80)
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
// push constant 108
    @108
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.81
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.81)
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
// push constant 109
    @109
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 29
    @29
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 43
    @43
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 43
    @43
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 43
    @43
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 43
    @43
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.82
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.82)
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
// push constant 110
    @110
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 29
    @29
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.83
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.83)
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
// push constant 111
    @111
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.84
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.84)
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
// push constant 112
    @112
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 31
    @31
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.85
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.85)
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
// push constant 113
    @113
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 62
    @62
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.86
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.86)
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
// push constant 114
    @114
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 29
    @29
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 55
    @55
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.87
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.87)
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
// push constant 115
    @115
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.88
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.88)
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
// push constant 116
    @116
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
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
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 28
    @28
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.89
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.89)
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
// push constant 117
    @117
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 54
    @54
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.90
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.90)
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
// push constant 118
    @118
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.91
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.91)
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
// push constant 119
    @119
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.92
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.92)
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
// push constant 120
    @120
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 30
    @30
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.93
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.93)
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
// push constant 121
    @121
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 62
    @62
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 24
    @24
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.94
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.94)
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
// push constant 122
    @122
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 27
    @27
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 51
    @51
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 63
    @63
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.95
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.95)
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
// push constant 123
    @123
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 56
    @56
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 56
    @56
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.96
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.96)
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
// push constant 124
    @124
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.97
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.97)
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
// push constant 125
    @125
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 56
    @56
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.98
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.98)
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
// push constant 126
    @126
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 38
    @38
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 45
    @45
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 25
    @25
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.create 12
    // push returnAddress
    @Output.create$ret.99
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
    // ARG = SP - 5 - 12
    @SP
    D=M
    @5
    D=D-A
    @12
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Output.create
    @Output.create
    0;JMP
(Output.create$ret.99)
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
// function Output.create 1
(Output.create)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// push constant 11
    @11
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.100
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.100)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push static 5
    @Output.5
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
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
// push argument 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
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
// push argument 3
    @3
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
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
// push argument 4
    @4
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
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
// push argument 5
    @5
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 5
    @5
    D=A
    @SP
    A=M
    M=D
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
// push argument 6
    @6
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
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
// push argument 7
    @7
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
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
// push argument 8
    @8
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 8
    @8
    D=A
    @SP
    A=M
    M=D
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
// push argument 9
    @9
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 9
    @9
    D=A
    @SP
    A=M
    M=D
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
// push argument 10
    @10
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
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
// push argument 11
    @11
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function Output.createShiftedMap 4
(Output.createShiftedMap)
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

// push constant 127
    @127
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.101
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.101)
// pop static 6
    @SP
    M=M-1
    A=M
    D=M
    @Output.6
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
// push local 2
    @2
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
// push constant 127
    @127
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
    @Output_LT_13
    D;JLT
    D=0
    @Output_STK_UPDATE_13
    0;JMP
(Output_LT_13)
    D=-1
(Output_STK_UPDATE_13)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Output.createShiftedMap$WHILE_END0
    D;JNE
// push local 2
    @2
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
// push static 5
    @Output.5
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 11
    @11
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.102
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.102)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// push static 6
    @Output.6
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
// push local 3
    @3
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
// push constant 11
    @11
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
    @Output_LT_17
    D;JLT
    D=0
    @Output_STK_UPDATE_17
    0;JMP
(Output_LT_17)
    D=-1
(Output_STK_UPDATE_17)
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
// if-goto WHILE_END1
    @SP
    M=M-1
    A=M
    D=M
    @Output.createShiftedMap$WHILE_END1
    D;JNE
// push local 3
    @3
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
// push local 3
    @3
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 256
    @256
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.103
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.103)
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// push constant 1
    @1
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP1
    @Output.createShiftedMap$WHILE_EXP1
    0;JMP
// label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
// push local 2
    @2
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
// push constant 0
    @0
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
    @Output_EQ_22
    D;JEQ
    D=0
    @Output_STK_UPDATE_22
    0;JMP
(Output_EQ_22)
    D=-1
(Output_STK_UPDATE_22)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.createShiftedMap$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.createShiftedMap$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END0
    @Output.createShiftedMap$IF_END0
    0;JMP
// label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
// push local 2
    @2
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
// push constant 1
    @1
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END0
(Output.createShiftedMap$IF_END0)
// goto WHILE_EXP0
    @Output.createShiftedMap$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
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
// function Output.getMap 1
(Output.getMap)
// init local 0
    @SP
    A=M
    M=0
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
// push constant 32
    @32
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
    @Output_LT_24
    D;JLT
    D=0
    @Output_STK_UPDATE_24
    0;JMP
(Output_LT_24)
    D=-1
(Output_STK_UPDATE_24)
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
// push constant 126
    @126
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
    @Output_GT_25
    D;JGT
    D=0
    @Output_STK_UPDATE_25
    0;JMP
(Output_GT_25)
    D=-1
(Output_STK_UPDATE_25)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.getMap$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.getMap$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.getMap$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE0
(Output.getMap$IF_FALSE0)
// push static 2
    @Output.2
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Output.getMap$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Output.getMap$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Output.getMap$IF_TRUE1)
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
// push static 5
    @Output.5
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END1
    @Output.getMap$IF_END1
    0;JMP
// label IF_FALSE1
(Output.getMap$IF_FALSE1)
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
// push static 6
    @Output.6
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END1
(Output.getMap$IF_END1)
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
// function Output.drawChar 4
(Output.drawChar)
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
// call Output.getMap 1
    // push returnAddress
    @Output.getMap$ret.104
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
    // goto Output.getMap
    @Output.getMap
    0;JMP
(Output.getMap$ret.104)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push static 1
    @Output.1
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
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
// push constant 11
    @11
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
    @Output_LT_29
    D;JLT
    D=0
    @Output_STK_UPDATE_29
    0;JMP
(Output_LT_29)
    D=-1
(Output_STK_UPDATE_29)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Output.drawChar$WHILE_END0
    D;JNE
// push static 2
    @Output.2
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.drawChar$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.drawChar$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.drawChar$IF_TRUE0)
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
// push static 4
    @Output.4
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 256
    @256
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END0
    @Output.drawChar$IF_END0
    0;JMP
// label IF_FALSE0
(Output.drawChar$IF_FALSE0)
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
// push static 4
    @Output.4
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 255
    @255
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END0
(Output.drawChar$IF_END0)
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
// push static 4
    @Output.4
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
// push local 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push local 3
    @3
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
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 32
    @32
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Output.drawChar$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Output.drawChar$WHILE_END0)
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
// function Output.moveCursor 0
(Output.moveCursor)

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
// push constant 0
    @0
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
    @Output_LT_41
    D;JLT
    D=0
    @Output_STK_UPDATE_41
    0;JMP
(Output_LT_41)
    D=-1
(Output_STK_UPDATE_41)
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
// push constant 22
    @22
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
    @Output_GT_42
    D;JGT
    D=0
    @Output_STK_UPDATE_42
    0;JMP
(Output_GT_42)
    D=-1
(Output_STK_UPDATE_42)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Output_LT_44
    D;JLT
    D=0
    @Output_STK_UPDATE_44
    0;JMP
(Output_LT_44)
    D=-1
(Output_STK_UPDATE_44)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 63
    @63
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
    @Output_GT_46
    D;JGT
    D=0
    @Output_STK_UPDATE_46
    0;JMP
(Output_GT_46)
    D=-1
(Output_STK_UPDATE_46)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.moveCursor$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.moveCursor$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.moveCursor$IF_TRUE0)
// push constant 20
    @20
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.105
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.105)
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
// label IF_FALSE0
(Output.moveCursor$IF_FALSE0)
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
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.106
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.106)
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Output.0
    M=D
// push constant 32
    @32
    D=A
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
// push constant 352
    @352
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.107
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.107)
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
// push static 0
    @Output.0
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Output.1
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
// push static 0
    @Output.0
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.108
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.108)
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Output_EQ_50
    D;JEQ
    D=0
    @Output_STK_UPDATE_50
    0;JMP
(Output_EQ_50)
    D=-1
(Output_STK_UPDATE_50)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.drawChar 1
    // push returnAddress
    @Output.drawChar$ret.109
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
    // goto Output.drawChar
    @Output.drawChar
    0;JMP
(Output.drawChar$ret.109)
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
// function Output.printChar 0
(Output.printChar)

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
// call String.newLine 0
    // push returnAddress
    @String.newLine$ret.110
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
    // goto String.newLine
    @String.newLine
    0;JMP
(String.newLine$ret.110)
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Output_EQ_51
    D;JEQ
    D=0
    @Output_STK_UPDATE_51
    0;JMP
(Output_EQ_51)
    D=-1
(Output_STK_UPDATE_51)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.printChar$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.printChar$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.printChar$IF_TRUE0)
// call Output.println 0
    // push returnAddress
    @Output.println$ret.111
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
    // goto Output.println
    @Output.println
    0;JMP
(Output.println$ret.111)
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
// goto IF_END0
    @Output.printChar$IF_END0
    0;JMP
// label IF_FALSE0
(Output.printChar$IF_FALSE0)
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
// call String.backSpace 0
    // push returnAddress
    @String.backSpace$ret.112
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
    // goto String.backSpace
    @String.backSpace
    0;JMP
(String.backSpace$ret.112)
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Output_EQ_52
    D;JEQ
    D=0
    @Output_STK_UPDATE_52
    0;JMP
(Output_EQ_52)
    D=-1
(Output_STK_UPDATE_52)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Output.printChar$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Output.printChar$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Output.printChar$IF_TRUE1)
// call Output.backSpace 0
    // push returnAddress
    @Output.backSpace$ret.113
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
    // goto Output.backSpace
    @Output.backSpace
    0;JMP
(Output.backSpace$ret.113)
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
// goto IF_END1
    @Output.printChar$IF_END1
    0;JMP
// label IF_FALSE1
(Output.printChar$IF_FALSE1)
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
// call Output.drawChar 1
    // push returnAddress
    @Output.drawChar$ret.114
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
    // goto Output.drawChar
    @Output.drawChar
    0;JMP
(Output.drawChar$ret.114)
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
// push static 2
    @Output.2
    D=M
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Output.printChar$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Output.printChar$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Output.printChar$IF_TRUE2)
// push static 0
    @Output.0
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
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Output.0
    M=D
// push static 1
    @Output.1
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Output.1
    M=D
// label IF_FALSE2
(Output.printChar$IF_FALSE2)
// push static 0
    @Output.0
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 32
    @32
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
    @Output_EQ_56
    D;JEQ
    D=0
    @Output_STK_UPDATE_56
    0;JMP
(Output_EQ_56)
    D=-1
(Output_STK_UPDATE_56)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Output.printChar$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Output.printChar$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Output.printChar$IF_TRUE3)
// call Output.println 0
    // push returnAddress
    @Output.println$ret.115
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
    // goto Output.println
    @Output.println
    0;JMP
(Output.println$ret.115)
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
// goto IF_END3
    @Output.printChar$IF_END3
    0;JMP
// label IF_FALSE3
(Output.printChar$IF_FALSE3)
// push static 2
    @Output.2
    D=M
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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// label IF_END3
(Output.printChar$IF_END3)
// label IF_END1
(Output.printChar$IF_END1)
// label IF_END0
(Output.printChar$IF_END0)
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
// function Output.printString 2
(Output.printString)
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
// call String.length 1
    // push returnAddress
    @String.length$ret.116
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
    // goto String.length
    @String.length
    0;JMP
(String.length$ret.116)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Output.printString$WHILE_EXP0)
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Output_LT_58
    D;JLT
    D=0
    @Output_STK_UPDATE_58
    0;JMP
(Output_LT_58)
    D=-1
(Output_STK_UPDATE_58)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Output.printString$WHILE_END0
    D;JNE
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
// call String.charAt 2
    // push returnAddress
    @String.charAt$ret.117
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
    // goto String.charAt
    @String.charAt
    0;JMP
(String.charAt$ret.117)
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.118
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.118)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Output.printString$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Output.printString$WHILE_END0)
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
// function Output.printInt 0
(Output.printInt)

// push static 3
    @Output.3
    D=M
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
// call String.setInt 2
    // push returnAddress
    @String.setInt$ret.119
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
    // goto String.setInt
    @String.setInt
    0;JMP
(String.setInt$ret.119)
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
// push static 3
    @Output.3
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.printString 1
    // push returnAddress
    @Output.printString$ret.120
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
    // goto Output.printString
    @Output.printString
    0;JMP
(Output.printString$ret.120)
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
// function Output.println 0
(Output.println)

// push static 1
    @Output.1
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 352
    @352
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
// push static 0
    @Output.0
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Output.1
    M=D
// push constant 0
    @0
    D=A
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
    @Output.0
    M=D
// push constant 0
    @0
    D=A
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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// push static 1
    @Output.1
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 8128
    @8128
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
    @Output_EQ_64
    D;JEQ
    D=0
    @Output_STK_UPDATE_64
    0;JMP
(Output_EQ_64)
    D=-1
(Output_STK_UPDATE_64)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.println$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.println$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.println$IF_TRUE0)
// push constant 32
    @32
    D=A
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
    @Output.1
    M=D
// label IF_FALSE0
(Output.println$IF_FALSE0)
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
// function Output.backSpace 0
(Output.backSpace)

// push static 2
    @Output.2
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Output.backSpace$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Output.backSpace$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Output.backSpace$IF_TRUE0)
// push static 0
    @Output.0
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 0
    @0
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
    @Output_GT_65
    D;JGT
    D=0
    @Output_STK_UPDATE_65
    0;JMP
(Output_GT_65)
    D=-1
(Output_STK_UPDATE_65)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Output.backSpace$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Output.backSpace$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Output.backSpace$IF_TRUE1)
// push static 0
    @Output.0
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
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Output.0
    M=D
// push static 1
    @Output.1
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Output.1
    M=D
// goto IF_END1
    @Output.backSpace$IF_END1
    0;JMP
// label IF_FALSE1
(Output.backSpace$IF_FALSE1)
// push constant 31
    @31
    D=A
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
    @Output.0
    M=D
// push static 1
    @Output.1
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 32
    @32
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
    @Output_EQ_68
    D;JEQ
    D=0
    @Output_STK_UPDATE_68
    0;JMP
(Output_EQ_68)
    D=-1
(Output_STK_UPDATE_68)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Output.backSpace$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Output.backSpace$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Output.backSpace$IF_TRUE2)
// push constant 8128
    @8128
    D=A
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
    @Output.1
    M=D
// label IF_FALSE2
(Output.backSpace$IF_FALSE2)
// push static 1
    @Output.1
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push constant 321
    @321
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
// pop static 1
    @SP
    M=M-1
    A=M
    D=M
    @Output.1
    M=D
// label IF_END1
(Output.backSpace$IF_END1)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// goto IF_END0
    @Output.backSpace$IF_END0
    0;JMP
// label IF_FALSE0
(Output.backSpace$IF_FALSE0)
// push constant 0
    @0
    D=A
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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Output.2
    M=D
// label IF_END0
(Output.backSpace$IF_END0)
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.drawChar 1
    // push returnAddress
    @Output.drawChar$ret.121
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
    // goto Output.drawChar
    @Output.drawChar
    0;JMP
(Output.drawChar$ret.121)
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
// function Player.new 0
(Player.new)

// push constant 4
    @4
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.alloc 1
    // push returnAddress
    @Memory.alloc$ret.0
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
    // goto Memory.alloc
    @Memory.alloc
    0;JMP
(Memory.alloc$ret.0)
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
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
// pop this 0
    @0
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop this 1
    @1
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 3
    @3
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
// pop this 3
    @3
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.draw 1
    // push returnAddress
    @Player.draw$ret.1
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
    // goto Player.draw
    @Player.draw
    0;JMP
(Player.draw$ret.1)
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
// push pointer 0
    @THIS
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
// function Player.getX 0
(Player.getX)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// function Player.getY 0
(Player.getY)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 1
    @1
    D=A
    @THIS
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
// function Player.getSpeed 0
(Player.getSpeed)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 3
    @3
    D=A
    @THIS
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
// function Player.setPos 0
(Player.setPos)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
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
// pop this 0
    @0
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// pop this 1
    @1
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function Player.draw 0
(Player.draw)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push constant 0
    @0
    D=A
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
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.2
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.2)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.3
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.3)
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
// function Player.erase 0
(Player.erase)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.4
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.4)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.5
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.5)
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
// function Player.moveUp 0
(Player.moveUp)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 1
    @1
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Player_GT_5
    D;JGT
    D=0
    @Player_STK_UPDATE_5
    0;JMP
(Player_GT_5)
    D=-1
(Player_STK_UPDATE_5)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Player.moveUp$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Player.moveUp$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Player.moveUp$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.6
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.6)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.7
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.7)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// call Player.setPos 3
    // push returnAddress
    @Player.setPos$ret.8
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Player.setPos
    @Player.setPos
    0;JMP
(Player.setPos$ret.8)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.draw 1
    // push returnAddress
    @Player.draw$ret.9
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
    // goto Player.draw
    @Player.draw
    0;JMP
(Player.draw$ret.9)
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
// label IF_FALSE0
(Player.moveUp$IF_FALSE0)
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
// function Player.moveDown 0
(Player.moveDown)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push constant 256
    @256
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 3
    @3
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Player_LT_13
    D;JLT
    D=0
    @Player_STK_UPDATE_13
    0;JMP
(Player_LT_13)
    D=-1
(Player_STK_UPDATE_13)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Player.moveDown$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Player.moveDown$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Player.moveDown$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.10
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.10)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.11
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.11)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// call Player.setPos 3
    // push returnAddress
    @Player.setPos$ret.12
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Player.setPos
    @Player.setPos
    0;JMP
(Player.setPos$ret.12)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.draw 1
    // push returnAddress
    @Player.draw$ret.13
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
    // goto Player.draw
    @Player.draw
    0;JMP
(Player.draw$ret.13)
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
// label IF_FALSE0
(Player.moveDown$IF_FALSE0)
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
// function Player.moveLeft 0
(Player.moveLeft)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Player_GT_17
    D;JGT
    D=0
    @Player_STK_UPDATE_17
    0;JMP
(Player_GT_17)
    D=-1
(Player_STK_UPDATE_17)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Player.moveLeft$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Player.moveLeft$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Player.moveLeft$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.14
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.14)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.15
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.15)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 0
    @0
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// call Player.setPos 3
    // push returnAddress
    @Player.setPos$ret.16
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Player.setPos
    @Player.setPos
    0;JMP
(Player.setPos$ret.16)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.draw 1
    // push returnAddress
    @Player.draw$ret.17
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
    // goto Player.draw
    @Player.draw
    0;JMP
(Player.draw$ret.17)
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
// label IF_FALSE0
(Player.moveLeft$IF_FALSE0)
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
// function Player.moveRight 0
(Player.moveRight)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push constant 512
    @512
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 3
    @3
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Player_LT_25
    D;JLT
    D=0
    @Player_STK_UPDATE_25
    0;JMP
(Player_LT_25)
    D=-1
(Player_STK_UPDATE_25)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Player.moveRight$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Player.moveRight$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Player.moveRight$IF_TRUE0)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.setColor 1
    // push returnAddress
    @Screen.setColor$ret.18
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
    // goto Screen.setColor
    @Screen.setColor
    0;JMP
(Screen.setColor$ret.18)
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// call Screen.drawRectangle 4
    // push returnAddress
    @Screen.drawRectangle$ret.19
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawRectangle
    @Screen.drawRectangle
    0;JMP
(Screen.drawRectangle$ret.19)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 0
    @0
    D=A
    @THIS
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
// push this 3
    @3
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// call Player.setPos 3
    // push returnAddress
    @Player.setPos$ret.20
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Player.setPos
    @Player.setPos
    0;JMP
(Player.setPos$ret.20)
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
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Player.draw 1
    // push returnAddress
    @Player.draw$ret.21
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
    // goto Player.draw
    @Player.draw
    0;JMP
(Player.draw$ret.21)
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
// label IF_FALSE0
(Player.moveRight$IF_FALSE0)
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
// function Player.dispose 0
(Player.dispose)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.deAlloc 1
    // push returnAddress
    @Memory.deAlloc$ret.22
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
    // goto Memory.deAlloc
    @Memory.deAlloc
    0;JMP
(Memory.deAlloc$ret.22)
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
// function Screen.init 1
(Screen.init)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// push constant 16384
    @16384
    D=A
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
    @Screen.1
    M=D
// push constant 0
    @0
    D=A
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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Screen.2
    M=D
// push constant 17
    @17
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.0
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.0)
// pop static 0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.0
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push static 0
    @Screen.0
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Screen.init$WHILE_EXP0)
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
// push constant 16
    @16
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
    @Screen_LT_2
    D;JLT
    D=0
    @Screen_STK_UPDATE_2
    0;JMP
(Screen_LT_2)
    D=-1
(Screen_STK_UPDATE_2)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.init$WHILE_END0
    D;JNE
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push static 0
    @Screen.0
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Screen.init$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.init$WHILE_END0)
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
// function Screen.clearScreen 1
(Screen.clearScreen)
// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1

// label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
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
// push constant 8192
    @8192
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
    @Screen_LT_11
    D;JLT
    D=0
    @Screen_STK_UPDATE_11
    0;JMP
(Screen_LT_11)
    D=-1
(Screen_STK_UPDATE_11)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.clearScreen$WHILE_END0
    D;JNE
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
// push static 1
    @Screen.1
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Screen.clearScreen$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.clearScreen$WHILE_END0)
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
// function Screen.updateLocation 0
(Screen.updateLocation)

// push static 2
    @Screen.2
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.updateLocation$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.updateLocation$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
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
// push static 1
    @Screen.1
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
// push static 1
    @Screen.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END0
    @Screen.updateLocation$IF_END0
    0;JMP
// label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
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
// push static 1
    @Screen.1
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
// push static 1
    @Screen.1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END0
(Screen.updateLocation$IF_END0)
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
// function Screen.setColor 0
(Screen.setColor)

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
// pop static 2
    @SP
    M=M-1
    A=M
    D=M
    @Screen.2
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
// function Screen.drawPixel 3
(Screen.drawPixel)
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
// init local 0
    @SP
    A=M
    M=0
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
// push constant 0
    @0
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
    @Screen_LT_22
    D;JLT
    D=0
    @Screen_STK_UPDATE_22
    0;JMP
(Screen_LT_22)
    D=-1
(Screen_STK_UPDATE_22)
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
// push constant 511
    @511
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
    @Screen_GT_23
    D;JGT
    D=0
    @Screen_STK_UPDATE_23
    0;JMP
(Screen_GT_23)
    D=-1
(Screen_STK_UPDATE_23)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Screen_LT_25
    D;JLT
    D=0
    @Screen_STK_UPDATE_25
    0;JMP
(Screen_LT_25)
    D=-1
(Screen_STK_UPDATE_25)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 255
    @255
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
    @Screen_GT_27
    D;JGT
    D=0
    @Screen_STK_UPDATE_27
    0;JMP
(Screen_GT_27)
    D=-1
(Screen_STK_UPDATE_27)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawPixel$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawPixel$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
// push constant 7
    @7
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.1
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.1)
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
// label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.2
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.2)
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.3
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.3)
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.4
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.4)
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.5
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.5)
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
// function Screen.drawConditional 0
(Screen.drawConditional)

// push argument 2
    @2
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
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawConditional$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawConditional$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)
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
// call Screen.drawPixel 2
    // push returnAddress
    @Screen.drawPixel$ret.6
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
    // goto Screen.drawPixel
    @Screen.drawPixel
    0;JMP
(Screen.drawPixel$ret.6)
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
// goto IF_END0
    @Screen.drawConditional$IF_END0
    0;JMP
// label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)
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
// call Screen.drawPixel 2
    // push returnAddress
    @Screen.drawPixel$ret.7
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
    // goto Screen.drawPixel
    @Screen.drawPixel
    0;JMP
(Screen.drawPixel$ret.7)
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
// label IF_END0
(Screen.drawConditional$IF_END0)
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
// function Screen.drawLine 11
(Screen.drawLine)
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
// init local 0
    @SP
    A=M
    M=0
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
// push constant 0
    @0
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
    @Screen_LT_32
    D;JLT
    D=0
    @Screen_STK_UPDATE_32
    0;JMP
(Screen_LT_32)
    D=-1
(Screen_STK_UPDATE_32)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 2
    @2
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
// push constant 511
    @511
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
    @Screen_GT_33
    D;JGT
    D=0
    @Screen_STK_UPDATE_33
    0;JMP
(Screen_GT_33)
    D=-1
(Screen_STK_UPDATE_33)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Screen_LT_35
    D;JLT
    D=0
    @Screen_STK_UPDATE_35
    0;JMP
(Screen_LT_35)
    D=-1
(Screen_STK_UPDATE_35)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 3
    @3
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
// push constant 255
    @255
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
    @Screen_GT_37
    D;JGT
    D=0
    @Screen_STK_UPDATE_37
    0;JMP
(Screen_GT_37)
    D=-1
(Screen_STK_UPDATE_37)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawLine$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
// push constant 8
    @8
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.8
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.8)
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
// label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
// push argument 2
    @2
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.9
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.9)
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 3
    @3
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
// call Math.abs 1
    // push returnAddress
    @Math.abs$ret.10
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
    // goto Math.abs
    @Math.abs
    0;JMP
(Math.abs$ret.10)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// push local 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_41
    D;JLT
    D=0
    @Screen_STK_UPDATE_41
    0;JMP
(Screen_LT_41)
    D=-1
(Screen_STK_UPDATE_41)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 6
    @6
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 6
    @6
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
// push argument 3
    @3
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_42
    D;JLT
    D=0
    @Screen_STK_UPDATE_42
    0;JMP
(Screen_LT_42)
    D=-1
(Screen_STK_UPDATE_42)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 6
    @6
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
// push argument 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_45
    D;JLT
    D=0
    @Screen_STK_UPDATE_45
    0;JMP
(Screen_LT_45)
    D=-1
(Screen_STK_UPDATE_45)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Screen.drawLine$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
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
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 4
    @4
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
// pop argument 2
    @2
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 3
    @3
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 4
    @4
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
// pop argument 3
    @3
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
// push local 6
    @6
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Screen.drawLine$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
// push local 3
    @3
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
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 4
    @4
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 3
    @3
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
// pop local 8
    @8
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push argument 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_48
    D;JGT
    D=0
    @Screen_STK_UPDATE_48
    0;JMP
(Screen_GT_48)
    D=-1
(Screen_STK_UPDATE_48)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 7
    @7
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END2
    @Screen.drawLine$IF_END2
    0;JMP
// label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// pop local 8
    @8
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// push argument 3
    @3
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_49
    D;JGT
    D=0
    @Screen_STK_UPDATE_49
    0;JMP
(Screen_GT_49)
    D=-1
(Screen_STK_UPDATE_49)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 7
    @7
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END2
(Screen.drawLine$IF_END2)
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 2
    @2
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.11
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.11)
// push local 3
    @3
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
// pop local 5
    @5
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 2
    @2
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.12
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.12)
// pop local 9
    @9
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 2
    @2
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
// push local 3
    @3
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.13
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.13)
// pop local 10
    @10
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push local 6
    @6
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
// call Screen.drawConditional 3
    // push returnAddress
    @Screen.drawConditional$ret.14
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawConditional
    @Screen.drawConditional
    0;JMP
(Screen.drawConditional$ret.14)
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
// label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
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
// push local 8
    @8
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_52
    D;JLT
    D=0
    @Screen_STK_UPDATE_52
    0;JMP
(Screen_LT_52)
    D=-1
(Screen_STK_UPDATE_52)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$WHILE_END0
    D;JNE
// push local 5
    @5
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
// push constant 0
    @0
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
    @Screen_LT_54
    D;JLT
    D=0
    @Screen_STK_UPDATE_54
    0;JMP
(Screen_LT_54)
    D=-1
(Screen_STK_UPDATE_54)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @Screen.drawLine$IF_FALSE3
    0;JMP
// label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
// push local 5
    @5
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
// push local 9
    @9
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
// pop local 5
    @5
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END3
    @Screen.drawLine$IF_END3
    0;JMP
// label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
// push local 5
    @5
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
// push local 10
    @10
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
// pop local 5
    @5
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 7
    @7
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
// if-goto IF_TRUE4
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawLine$IF_TRUE4
    D;JNE
// goto IF_FALSE4
    @Screen.drawLine$IF_FALSE4
    0;JMP
// label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END4
    @Screen.drawLine$IF_END4
    0;JMP
// label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END4
(Screen.drawLine$IF_END4)
// label IF_END3
(Screen.drawLine$IF_END3)
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
// push constant 1
    @1
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push local 6
    @6
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
// call Screen.drawConditional 3
    // push returnAddress
    @Screen.drawConditional$ret.15
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawConditional
    @Screen.drawConditional
    0;JMP
(Screen.drawConditional$ret.15)
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
// goto WHILE_EXP0
    @Screen.drawLine$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.drawLine$WHILE_END0)
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
// function Screen.drawRectangle 9
(Screen.drawRectangle)
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
// init local 0
    @SP
    A=M
    M=0
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
// push argument 2
    @2
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_60
    D;JGT
    D=0
    @Screen_STK_UPDATE_60
    0;JMP
(Screen_GT_60)
    D=-1
(Screen_STK_UPDATE_60)
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
// push argument 3
    @3
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_61
    D;JGT
    D=0
    @Screen_STK_UPDATE_61
    0;JMP
(Screen_GT_61)
    D=-1
(Screen_STK_UPDATE_61)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Screen_LT_63
    D;JLT
    D=0
    @Screen_STK_UPDATE_63
    0;JMP
(Screen_LT_63)
    D=-1
(Screen_STK_UPDATE_63)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 2
    @2
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
// push constant 511
    @511
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
    @Screen_GT_65
    D;JGT
    D=0
    @Screen_STK_UPDATE_65
    0;JMP
(Screen_GT_65)
    D=-1
(Screen_STK_UPDATE_65)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Screen_LT_67
    D;JLT
    D=0
    @Screen_STK_UPDATE_67
    0;JMP
(Screen_LT_67)
    D=-1
(Screen_STK_UPDATE_67)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 3
    @3
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
// push constant 255
    @255
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
    @Screen_GT_69
    D;JGT
    D=0
    @Screen_STK_UPDATE_69
    0;JMP
(Screen_GT_69)
    D=-1
(Screen_STK_UPDATE_69)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawRectangle$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawRectangle$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
// push constant 9
    @9
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.16
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.16)
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
// label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.17
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.17)
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push local 3
    @3
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.18
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.18)
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
// pop local 7
    @7
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.19
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.19)
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push argument 2
    @2
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
// push local 4
    @4
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.20
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.20)
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
// pop local 8
    @8
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 7
    @7
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 6
    @6
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 8
    @8
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
// push constant 1
    @1
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 5
    @5
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.21
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.21)
// push local 3
    @3
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 4
    @4
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
// push local 3
    @3
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
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
// push argument 3
    @3
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_81
    D;JGT
    D=0
    @Screen_STK_UPDATE_81
    0;JMP
(Screen_GT_81)
    D=-1
(Screen_STK_UPDATE_81)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawRectangle$WHILE_END0
    D;JNE
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
// push local 2
    @2
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// push constant 0
    @0
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
    @Screen_EQ_85
    D;JEQ
    D=0
    @Screen_STK_UPDATE_85
    0;JMP
(Screen_EQ_85)
    D=-1
(Screen_STK_UPDATE_85)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawRectangle$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Screen.drawRectangle$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
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
// push local 5
    @5
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
// push local 6
    @6
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.22
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.22)
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
// goto IF_END1
    @Screen.drawRectangle$IF_END1
    0;JMP
// label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
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
// push local 6
    @6
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
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.23
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.23)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_88
    D;JLT
    D=0
    @Screen_STK_UPDATE_88
    0;JMP
(Screen_LT_88)
    D=-1
(Screen_STK_UPDATE_88)
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
// if-goto WHILE_END1
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawRectangle$WHILE_END1
    D;JNE
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.24
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.24)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP1
    @Screen.drawRectangle$WHILE_EXP1
    0;JMP
// label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
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
// push local 5
    @5
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
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.25
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.25)
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
// label IF_END1
(Screen.drawRectangle$IF_END1)
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
// push constant 1
    @1
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 32
    @32
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
// push local 2
    @2
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Screen.drawRectangle$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
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
// function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
// init local 0
    @SP
    A=M
    M=0
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
// push argument 2
    @2
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
// call Math.min 2
    // push returnAddress
    @Math.min$ret.26
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
    // goto Math.min
    @Math.min
    0;JMP
(Math.min$ret.26)
// pop local 7
    @7
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// push argument 2
    @2
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
// call Math.max 2
    // push returnAddress
    @Math.max$ret.27
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
    // goto Math.max
    @Math.max
    0;JMP
(Math.max$ret.27)
// pop local 8
    @8
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
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
    @Screen_GT_96
    D;JGT
    D=0
    @Screen_STK_UPDATE_96
    0;JMP
(Screen_GT_96)
    D=-1
(Screen_STK_UPDATE_96)
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
// push constant 256
    @256
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
    @Screen_LT_97
    D;JLT
    D=0
    @Screen_STK_UPDATE_97
    0;JMP
(Screen_LT_97)
    D=-1
(Screen_STK_UPDATE_97)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 7
    @7
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
// push constant 512
    @512
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
    @Screen_LT_99
    D;JLT
    D=0
    @Screen_STK_UPDATE_99
    0;JMP
(Screen_LT_99)
    D=-1
(Screen_STK_UPDATE_99)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 8
    @8
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
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
    @Screen_GT_102
    D;JGT
    D=0
    @Screen_STK_UPDATE_102
    0;JMP
(Screen_GT_102)
    D=-1
(Screen_STK_UPDATE_102)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawHorizontal$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawHorizontal$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)
// push local 7
    @7
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
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.max 2
    // push returnAddress
    @Math.max$ret.28
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
    // goto Math.max
    @Math.max
    0;JMP
(Math.max$ret.28)
// pop local 7
    @7
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 8
    @8
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
// push constant 511
    @511
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.min 2
    // push returnAddress
    @Math.min$ret.29
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
    // goto Math.min
    @Math.min
    0;JMP
(Math.min$ret.29)
// pop local 8
    @8
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 7
    @7
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.30
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.30)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 7
    @7
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.31
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.31)
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
// pop local 9
    @9
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 8
    @8
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.32
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.32)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 8
    @8
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
// push local 2
    @2
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
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.33
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.33)
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
// pop local 10
    @10
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 9
    @9
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 5
    @5
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 10
    @10
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
// push constant 1
    @1
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
// push static 0
    @Screen.0
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 32
    @32
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.34
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.34)
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// pop local 6
    @6
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push local 6
    @6
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 6
    @6
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
// push constant 0
    @0
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
    @Screen_EQ_115
    D;JEQ
    D=0
    @Screen_STK_UPDATE_115
    0;JMP
(Screen_EQ_115)
    D=-1
(Screen_STK_UPDATE_115)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawHorizontal$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Screen.drawHorizontal$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)
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
// push local 4
    @4
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
// push local 5
    @5
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.35
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.35)
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
// goto IF_END1
    @Screen.drawHorizontal$IF_END1
    0;JMP
// label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)
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
// push local 5
    @5
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
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.36
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.36)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)
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
// push local 3
    @3
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_LT_118
    D;JLT
    D=0
    @Screen_STK_UPDATE_118
    0;JMP
(Screen_LT_118)
    D=-1
(Screen_STK_UPDATE_118)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawHorizontal$WHILE_END0
    D;JNE
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
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.37
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.37)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Screen.drawHorizontal$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)
// push local 3
    @3
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
// push local 4
    @4
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
// call Screen.updateLocation 2
    // push returnAddress
    @Screen.updateLocation$ret.38
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
    // goto Screen.updateLocation
    @Screen.updateLocation
    0;JMP
(Screen.updateLocation$ret.38)
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
// label IF_END1
(Screen.drawHorizontal$IF_END1)
// label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)
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
// function Screen.drawSymetric 0
(Screen.drawSymetric)

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
// push argument 3
    @3
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
// push argument 2
    @2
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
// push argument 2
    @2
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
// call Screen.drawHorizontal 3
    // push returnAddress
    @Screen.drawHorizontal$ret.39
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawHorizontal
    @Screen.drawHorizontal
    0;JMP
(Screen.drawHorizontal$ret.39)
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
// push argument 3
    @3
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
// push argument 2
    @2
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
// push argument 2
    @2
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
// call Screen.drawHorizontal 3
    // push returnAddress
    @Screen.drawHorizontal$ret.40
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawHorizontal
    @Screen.drawHorizontal
    0;JMP
(Screen.drawHorizontal$ret.40)
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
// push argument 2
    @2
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
// push argument 3
    @3
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
// push argument 3
    @3
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
// call Screen.drawHorizontal 3
    // push returnAddress
    @Screen.drawHorizontal$ret.41
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawHorizontal
    @Screen.drawHorizontal
    0;JMP
(Screen.drawHorizontal$ret.41)
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
// push argument 2
    @2
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
// push argument 3
    @3
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
// push argument 3
    @3
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
// call Screen.drawHorizontal 3
    // push returnAddress
    @Screen.drawHorizontal$ret.42
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
    // ARG = SP - 5 - 3
    @SP
    D=M
    @5
    D=D-A
    @3
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawHorizontal
    @Screen.drawHorizontal
    0;JMP
(Screen.drawHorizontal$ret.42)
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
// function Screen.drawCircle 3
(Screen.drawCircle)
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
// init local 0
    @SP
    A=M
    M=0
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
// push constant 0
    @0
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
    @Screen_LT_134
    D;JLT
    D=0
    @Screen_STK_UPDATE_134
    0;JMP
(Screen_LT_134)
    D=-1
(Screen_STK_UPDATE_134)
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
// push constant 511
    @511
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
    @Screen_GT_135
    D;JGT
    D=0
    @Screen_STK_UPDATE_135
    0;JMP
(Screen_GT_135)
    D=-1
(Screen_STK_UPDATE_135)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 0
    @0
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
    @Screen_LT_137
    D;JLT
    D=0
    @Screen_STK_UPDATE_137
    0;JMP
(Screen_LT_137)
    D=-1
(Screen_STK_UPDATE_137)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push constant 255
    @255
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
    @Screen_GT_139
    D;JGT
    D=0
    @Screen_STK_UPDATE_139
    0;JMP
(Screen_GT_139)
    D=-1
(Screen_STK_UPDATE_139)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawCircle$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Screen.drawCircle$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)
// push constant 12
    @12
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.43
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.43)
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
// label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)
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
// push argument 2
    @2
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
// push constant 0
    @0
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
    @Screen_LT_142
    D;JLT
    D=0
    @Screen_STK_UPDATE_142
    0;JMP
(Screen_LT_142)
    D=-1
(Screen_STK_UPDATE_142)
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
// push argument 2
    @2
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
// push constant 511
    @511
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
    @Screen_GT_144
    D;JGT
    D=0
    @Screen_STK_UPDATE_144
    0;JMP
(Screen_GT_144)
    D=-1
(Screen_STK_UPDATE_144)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push argument 2
    @2
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
// push constant 0
    @0
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
    @Screen_LT_147
    D;JLT
    D=0
    @Screen_STK_UPDATE_147
    0;JMP
(Screen_LT_147)
    D=-1
(Screen_STK_UPDATE_147)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push argument 2
    @2
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
// push constant 255
    @255
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
    @Screen_GT_150
    D;JGT
    D=0
    @Screen_STK_UPDATE_150
    0;JMP
(Screen_GT_150)
    D=-1
(Screen_STK_UPDATE_150)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawCircle$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @Screen.drawCircle$IF_FALSE1
    0;JMP
// label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)
// push constant 13
    @13
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.44
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.44)
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
// label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)
// push argument 2
    @2
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push argument 2
    @2
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Screen.drawSymetric 4
    // push returnAddress
    @Screen.drawSymetric$ret.45
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawSymetric
    @Screen.drawSymetric
    0;JMP
(Screen.drawSymetric$ret.45)
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
// label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @Screen_GT_153
    D;JGT
    D=0
    @Screen_STK_UPDATE_153
    0;JMP
(Screen_GT_153)
    D=-1
(Screen_STK_UPDATE_153)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawCircle$WHILE_END0
    D;JNE
// push local 2
    @2
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
// push constant 0
    @0
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
    @Screen_LT_155
    D;JLT
    D=0
    @Screen_STK_UPDATE_155
    0;JMP
(Screen_LT_155)
    D=-1
(Screen_STK_UPDATE_155)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @Screen.drawCircle$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @Screen.drawCircle$IF_FALSE2
    0;JMP
// label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)
// push local 2
    @2
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
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.46
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.46)
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
// push constant 3
    @3
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END2
    @Screen.drawCircle$IF_END2
    0;JMP
// label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)
// push local 2
    @2
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
// push constant 2
    @2
    D=A
    @SP
    A=M
    M=D
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
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.47
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.47)
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_END2
(Screen.drawCircle$IF_END2)
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// call Screen.drawSymetric 4
    // push returnAddress
    @Screen.drawSymetric$ret.48
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
    // ARG = SP - 5 - 4
    @SP
    D=M
    @5
    D=D-A
    @4
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto Screen.drawSymetric
    @Screen.drawSymetric
    0;JMP
(Screen.drawSymetric$ret.48)
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
// goto WHILE_EXP0
    @Screen.drawCircle$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Screen.drawCircle$WHILE_END0)
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
// function String.new 0
(String.new)

// push constant 3
    @3
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.alloc 1
    // push returnAddress
    @Memory.alloc$ret.0
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
    // goto Memory.alloc
    @Memory.alloc
    0;JMP
(Memory.alloc$ret.0)
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
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
// push constant 0
    @0
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
    @String_LT_0
    D;JLT
    D=0
    @String_STK_UPDATE_0
    0;JMP
(String_LT_0)
    D=-1
(String_STK_UPDATE_0)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.new$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.new$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.new$IF_TRUE0)
// push constant 14
    @14
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.1
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.1)
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
// label IF_FALSE0
(String.new$IF_FALSE0)
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
// push constant 0
    @0
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
    @String_GT_1
    D;JGT
    D=0
    @String_STK_UPDATE_1
    0;JMP
(String_GT_1)
    D=-1
(String_STK_UPDATE_1)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @String.new$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @String.new$IF_FALSE1
    0;JMP
// label IF_TRUE1
(String.new$IF_TRUE1)
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
// call Array.new 1
    // push returnAddress
    @Array.new$ret.2
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.2)
// pop this 1
    @1
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(String.new$IF_FALSE1)
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
// pop this 0
    @0
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push pointer 0
    @THIS
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
// function String.dispose 0
(String.dispose)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// push constant 0
    @0
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
    @String_GT_2
    D;JGT
    D=0
    @String_STK_UPDATE_2
    0;JMP
(String_GT_2)
    D=-1
(String_STK_UPDATE_2)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.dispose$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.dispose$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.dispose$IF_TRUE0)
// push this 1
    @1
    D=A
    @THIS
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
// call Array.dispose 1
    // push returnAddress
    @Array.dispose$ret.3
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
    // goto Array.dispose
    @Array.dispose
    0;JMP
(Array.dispose$ret.3)
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
// label IF_FALSE0
(String.dispose$IF_FALSE0)
// push pointer 0
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Memory.deAlloc 1
    // push returnAddress
    @Memory.deAlloc$ret.4
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
    // goto Memory.deAlloc
    @Memory.deAlloc
    0;JMP
(Memory.deAlloc$ret.4)
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
// function String.length 0
(String.length)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// function String.charAt 0
(String.charAt)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
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
// push constant 0
    @0
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
    @String_LT_3
    D;JLT
    D=0
    @String_STK_UPDATE_3
    0;JMP
(String_LT_3)
    D=-1
(String_STK_UPDATE_3)
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
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_GT_4
    D;JGT
    D=0
    @String_STK_UPDATE_4
    0;JMP
(String_GT_4)
    D=-1
(String_STK_UPDATE_4)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_EQ_6
    D;JEQ
    D=0
    @String_STK_UPDATE_6
    0;JMP
(String_EQ_6)
    D=-1
(String_STK_UPDATE_6)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.charAt$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.charAt$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.charAt$IF_TRUE0)
// push constant 15
    @15
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.5
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.5)
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
// label IF_FALSE0
(String.charAt$IF_FALSE0)
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
// push this 1
    @1
    D=A
    @THIS
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// function String.setCharAt 0
(String.setCharAt)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
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
// push constant 0
    @0
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
    @String_LT_9
    D;JLT
    D=0
    @String_STK_UPDATE_9
    0;JMP
(String_LT_9)
    D=-1
(String_STK_UPDATE_9)
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
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_GT_10
    D;JGT
    D=0
    @String_STK_UPDATE_10
    0;JMP
(String_GT_10)
    D=-1
(String_STK_UPDATE_10)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_EQ_12
    D;JEQ
    D=0
    @String_STK_UPDATE_12
    0;JMP
(String_EQ_12)
    D=-1
(String_STK_UPDATE_12)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.setCharAt$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.setCharAt$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.setCharAt$IF_TRUE0)
// push constant 16
    @16
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.6
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.6)
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
// label IF_FALSE0
(String.setCharAt$IF_FALSE0)
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
// push this 1
    @1
    D=A
    @THIS
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
// push argument 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function String.appendChar 0
(String.appendChar)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// push this 0
    @0
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_EQ_15
    D;JEQ
    D=0
    @String_STK_UPDATE_15
    0;JMP
(String_EQ_15)
    D=-1
(String_STK_UPDATE_15)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.appendChar$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.appendChar$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.appendChar$IF_TRUE0)
// push constant 17
    @17
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.7
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.7)
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
// label IF_FALSE0
(String.appendChar$IF_FALSE0)
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push pointer 0
    @THIS
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
// function String.eraseLastChar 0
(String.eraseLastChar)

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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// push constant 0
    @0
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
    @String_EQ_18
    D;JEQ
    D=0
    @String_STK_UPDATE_18
    0;JMP
(String_EQ_18)
    D=-1
(String_STK_UPDATE_18)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.eraseLastChar$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.eraseLastChar$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
// push constant 18
    @18
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.8
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.8)
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
// label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
// push this 2
    @2
    D=A
    @THIS
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
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// function String.intValue 5
(String.intValue)
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
// init local 0
    @SP
    A=M
    M=0
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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// push constant 0
    @0
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
    @String_EQ_20
    D;JEQ
    D=0
    @String_STK_UPDATE_20
    0;JMP
(String_EQ_20)
    D=-1
(String_STK_UPDATE_20)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.intValue$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.intValue$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.intValue$IF_TRUE0)
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
// label IF_FALSE0
(String.intValue$IF_FALSE0)
// push constant 0
    @0
    D=A
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 1
    @1
    D=A
    @THIS
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 45
    @45
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
    @String_EQ_23
    D;JEQ
    D=0
    @String_STK_UPDATE_23
    0;JMP
(String_EQ_23)
    D=-1
(String_STK_UPDATE_23)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @String.intValue$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @String.intValue$IF_FALSE1
    0;JMP
// label IF_TRUE1
(String.intValue$IF_TRUE1)
// push constant 0
    @0
    D=A
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
// pop local 4
    @4
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(String.intValue$IF_FALSE1)
// label WHILE_EXP0
(String.intValue$WHILE_EXP0)
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
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_LT_25
    D;JLT
    D=0
    @String_STK_UPDATE_25
    0;JMP
(String_LT_25)
    D=-1
(String_STK_UPDATE_25)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 3
    @3
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
// and
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D&M
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @String.intValue$WHILE_END0
    D;JNE
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
// push this 1
    @1
    D=A
    @THIS
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// push constant 48
    @48
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
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 2
    @2
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
// push constant 0
    @0
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
    @String_LT_30
    D;JLT
    D=0
    @String_STK_UPDATE_30
    0;JMP
(String_LT_30)
    D=-1
(String_STK_UPDATE_30)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push local 2
    @2
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
// push constant 9
    @9
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
    @String_GT_31
    D;JGT
    D=0
    @String_STK_UPDATE_31
    0;JMP
(String_GT_31)
    D=-1
(String_STK_UPDATE_31)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// or
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=D|M
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push local 3
    @3
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @String.intValue$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @String.intValue$IF_FALSE2
    0;JMP
// label IF_TRUE2
(String.intValue$IF_TRUE2)
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
// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.9
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.9)
// push local 2
    @2
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE2
(String.intValue$IF_FALSE2)
// goto WHILE_EXP0
    @String.intValue$WHILE_EXP0
    0;JMP
// label WHILE_END0
(String.intValue$WHILE_END0)
// push local 4
    @4
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
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @String.intValue$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @String.intValue$IF_FALSE3
    0;JMP
// label IF_TRUE3
(String.intValue$IF_TRUE3)
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE3
(String.intValue$IF_FALSE3)
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
// function String.setInt 4
(String.setInt)
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
// pop pointer 0
    @SP
    M=M-1
    A=M
    D=M
    @THIS
    M=D
// push this 0
    @0
    D=A
    @THIS
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
// push constant 0
    @0
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
    @String_EQ_37
    D;JEQ
    D=0
    @String_STK_UPDATE_37
    0;JMP
(String_EQ_37)
    D=-1
(String_STK_UPDATE_37)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @String.setInt$IF_FALSE0
    0;JMP
// label IF_TRUE0
(String.setInt$IF_TRUE0)
// push constant 19
    @19
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.10
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.10)
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
// label IF_FALSE0
(String.setInt$IF_FALSE0)
// push constant 6
    @6
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Array.new 1
    // push returnAddress
    @Array.new$ret.11
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
    // goto Array.new
    @Array.new
    0;JMP
(Array.new$ret.11)
// pop local 2
    @2
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// push constant 0
    @0
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
    @String_LT_38
    D;JLT
    D=0
    @String_STK_UPDATE_38
    0;JMP
(String_LT_38)
    D=-1
(String_STK_UPDATE_38)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE1
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$IF_TRUE1
    D;JNE
// goto IF_FALSE1
    @String.setInt$IF_FALSE1
    0;JMP
// label IF_TRUE1
(String.setInt$IF_TRUE1)
// push constant 0
    @0
    D=A
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
// pop local 3
    @3
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
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
// neg
    @SP
    M=M-1
    A=M
    D=-M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE1
(String.setInt$IF_FALSE1)
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
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP0
(String.setInt$WHILE_EXP0)
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
// push constant 0
    @0
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
    @String_GT_41
    D;JGT
    D=0
    @String_STK_UPDATE_41
    0;JMP
(String_GT_41)
    D=-1
(String_STK_UPDATE_41)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$WHILE_END0
    D;JNE
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
// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.divide 2
    // push returnAddress
    @Math.divide$ret.12
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
    // goto Math.divide
    @Math.divide
    0;JMP
(Math.divide$ret.12)
// pop local 1
    @1
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push local 2
    @2
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
// push constant 48
    @48
    D=A
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
// push constant 10
    @10
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Math.multiply 2
    // push returnAddress
    @Math.multiply$ret.13
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
    // goto Math.multiply
    @Math.multiply
    0;JMP
(Math.multiply$ret.13)
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// pop argument 1
    @1
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @String.setInt$WHILE_EXP0
    0;JMP
// label WHILE_END0
(String.setInt$WHILE_END0)
// push local 3
    @3
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
// if-goto IF_TRUE2
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$IF_TRUE2
    D;JNE
// goto IF_FALSE2
    @String.setInt$IF_FALSE2
    0;JMP
// label IF_TRUE2
(String.setInt$IF_TRUE2)
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
// push local 2
    @2
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
// push constant 45
    @45
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
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
// push constant 1
    @1
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label IF_FALSE2
(String.setInt$IF_FALSE2)
// push this 0
    @0
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_LT_49
    D;JLT
    D=0
    @String_STK_UPDATE_49
    0;JMP
(String_LT_49)
    D=-1
(String_STK_UPDATE_49)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE3
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$IF_TRUE3
    D;JNE
// goto IF_FALSE3
    @String.setInt$IF_FALSE3
    0;JMP
// label IF_TRUE3
(String.setInt$IF_TRUE3)
// push constant 19
    @19
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.14
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.14)
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
// label IF_FALSE3
(String.setInt$IF_FALSE3)
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
// push constant 0
    @0
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
    @String_EQ_50
    D;JEQ
    D=0
    @String_STK_UPDATE_50
    0;JMP
(String_EQ_50)
    D=-1
(String_STK_UPDATE_50)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE4
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$IF_TRUE4
    D;JNE
// goto IF_FALSE4
    @String.setInt$IF_FALSE4
    0;JMP
// label IF_TRUE4
(String.setInt$IF_TRUE4)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// push this 1
    @1
    D=A
    @THIS
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
// push constant 48
    @48
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto IF_END4
    @String.setInt$IF_END4
    0;JMP
// label IF_FALSE4
(String.setInt$IF_FALSE4)
// push constant 0
    @0
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP1
(String.setInt$WHILE_EXP1)
// push this 2
    @2
    D=A
    @THIS
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
// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @String_LT_52
    D;JLT
    D=0
    @String_STK_UPDATE_52
    0;JMP
(String_LT_52)
    D=-1
(String_STK_UPDATE_52)
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
// if-goto WHILE_END1
    @SP
    M=M-1
    A=M
    D=M
    @String.setInt$WHILE_END1
    D;JNE
// push this 2
    @2
    D=A
    @THIS
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
// push this 1
    @1
    D=A
    @THIS
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
// push this 2
    @2
    D=A
    @THIS
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
// push local 2
    @2
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push that 0
    @0
    D=A
    @THAT
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
// pop pointer 1
    @SP
    M=M-1
    A=M
    D=M
    @THAT
    M=D
// push temp 0
    @0
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop that 0
    @0
    D=A
    @THAT
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// push this 2
    @2
    D=A
    @THIS
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
// pop this 2
    @2
    D=A
    @THIS
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP1
    @String.setInt$WHILE_EXP1
    0;JMP
// label WHILE_END1
(String.setInt$WHILE_END1)
// label IF_END4
(String.setInt$IF_END4)
// push local 2
    @2
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
// call Array.dispose 1
    // push returnAddress
    @Array.dispose$ret.15
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
    // goto Array.dispose
    @Array.dispose
    0;JMP
(Array.dispose$ret.15)
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
// function String.newLine 0
(String.newLine)

// push constant 128
    @128
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
// function String.backSpace 0
(String.backSpace)

// push constant 129
    @129
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
// function String.doubleQuote 0
(String.doubleQuote)

// push constant 34
    @34
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
// function Sys.init 0
(Sys.init)

// call Memory.init 0
    // push returnAddress
    @Memory.init$ret.0
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
    // goto Memory.init
    @Memory.init
    0;JMP
(Memory.init$ret.0)
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
// call Math.init 0
    // push returnAddress
    @Math.init$ret.1
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
    // goto Math.init
    @Math.init
    0;JMP
(Math.init$ret.1)
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
// call Screen.init 0
    // push returnAddress
    @Screen.init$ret.2
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
    // goto Screen.init
    @Screen.init
    0;JMP
(Screen.init$ret.2)
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
// call Output.init 0
    // push returnAddress
    @Output.init$ret.3
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
    // goto Output.init
    @Output.init
    0;JMP
(Output.init$ret.3)
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
// call Keyboard.init 0
    // push returnAddress
    @Keyboard.init$ret.4
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
    // goto Keyboard.init
    @Keyboard.init
    0;JMP
(Keyboard.init$ret.4)
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
// call Main.main 0
    // push returnAddress
    @Main.main$ret.5
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
    // goto Main.main
    @Main.main
    0;JMP
(Main.main$ret.5)
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
// call Sys.halt 0
    // push returnAddress
    @Sys.halt$ret.6
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
    // goto Sys.halt
    @Sys.halt
    0;JMP
(Sys.halt$ret.6)
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
// function Sys.halt 0
(Sys.halt)

// label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
// push constant 0
    @0
    D=A
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Sys.halt$WHILE_END0
    D;JNE
// goto WHILE_EXP0
    @Sys.halt$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Sys.halt$WHILE_END0)
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
// function Sys.wait 1
(Sys.wait)
// init local 0
    @SP
    A=M
    M=0
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
// push constant 0
    @0
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
    @Sys_LT_2
    D;JLT
    D=0
    @Sys_STK_UPDATE_2
    0;JMP
(Sys_LT_2)
    D=-1
(Sys_STK_UPDATE_2)
    @SP
    A=M
    M=D
    @SP
    M=M+1
// if-goto IF_TRUE0
    @SP
    M=M-1
    A=M
    D=M
    @Sys.wait$IF_TRUE0
    D;JNE
// goto IF_FALSE0
    @Sys.wait$IF_FALSE0
    0;JMP
// label IF_TRUE0
(Sys.wait$IF_TRUE0)
// push constant 1
    @1
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Sys.error 1
    // push returnAddress
    @Sys.error$ret.7
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
    // goto Sys.error
    @Sys.error
    0;JMP
(Sys.error$ret.7)
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
// label IF_FALSE0
(Sys.wait$IF_FALSE0)
// label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
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
// push constant 0
    @0
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
    @Sys_GT_3
    D;JGT
    D=0
    @Sys_STK_UPDATE_3
    0;JMP
(Sys_GT_3)
    D=-1
(Sys_STK_UPDATE_3)
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
// if-goto WHILE_END0
    @SP
    M=M-1
    A=M
    D=M
    @Sys.wait$WHILE_END0
    D;JNE
// push constant 50
    @50
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
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
// push constant 0
    @0
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
    @Sys_GT_5
    D;JGT
    D=0
    @Sys_STK_UPDATE_5
    0;JMP
(Sys_GT_5)
    D=-1
(Sys_STK_UPDATE_5)
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
// if-goto WHILE_END1
    @SP
    M=M-1
    A=M
    D=M
    @Sys.wait$WHILE_END1
    D;JNE
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
// pop local 0
    @0
    D=A
    @LCL
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP1
    @Sys.wait$WHILE_EXP1
    0;JMP
// label WHILE_END1
(Sys.wait$WHILE_END1)
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
// pop argument 0
    @0
    D=A
    @ARG
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D
// goto WHILE_EXP0
    @Sys.wait$WHILE_EXP0
    0;JMP
// label WHILE_END0
(Sys.wait$WHILE_END0)
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
// function Sys.error 0
(Sys.error)

// push constant 69
    @69
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.8
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.8)
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
// push constant 82
    @82
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.9
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.9)
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
// push constant 82
    @82
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
// call Output.printChar 1
    // push returnAddress
    @Output.printChar$ret.10
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
    // goto Output.printChar
    @Output.printChar
    0;JMP
(Output.printChar$ret.10)
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
// call Output.printInt 1
    // push returnAddress
    @Output.printInt$ret.11
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
    // goto Output.printInt
    @Output.printInt
    0;JMP
(Output.printInt$ret.11)
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
// call Sys.halt 0
    // push returnAddress
    @Sys.halt$ret.12
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
    // goto Sys.halt
    @Sys.halt
    0;JMP
(Sys.halt$ret.12)
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
