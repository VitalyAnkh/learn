# Solutions

## 检测点 2.1

(1) 写出每条汇编指令执行后相关寄存器中的值

`mov ax,62627`  `AX=F1A3H` <br/>
`mov ah,31H` `AX=31A3H`<br/>
`mov al,23H` `AX=3123H`<br/>
`add ax,ax` `AX=6246H`<br/>
`mov bx,826C` `BX=826CH`<br/>
`mov cx,ax` `CX=6246H`<br/>
`mov ax,bx` `AX=826CH`<br/>
`add ax,bx` `AX=0548H`<br/>
`mov al,bh` `AX=0582H`<br/>
`add ah,ah` `AX=0A82H`<br/>
`add al,6` `AX=0A88H`<br/>
`add al,al` `AX=0B10H`<br/>
`mov ax,cx` `AX=6246H`<br/>

(2) 只能使用目前学过的汇编指令，最多使用4条指令，编程计算2的4次方。

``` assembly
mov al 2
add al al
add al al
add al al
```

## 检测点2.2

(1) 给定段地址为`0001H`，仅通过变化偏移地址寻址，CPU的寻址范围为____到____。

`00010H` `10010H`

(2) 有一组数据存放在内存`20000H`单元中，现给定段地址为`SA`，若想用偏移地址寻到此单元，则`SA`应满足的条件是：最小为____，最大为____。
> 提示，反过来思考一下，当段地址给定为多少时，CPU无论怎么变化偏移地址都无法寻到`20000H`单元？

`1000H` `2000H`

