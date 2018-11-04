%生成1000x1000的信源矩阵d
z = randi([0 1],1,10000)  % Random matrix
a = randi([0 1],1,10000)
y = z | a
d = double(y) %运算后y为逻辑值，需转换为数值
%两个随机数相或后d为0概率为1/4，对于验证出错率来说总数足够大

e = 1 %生成转移概率e初始值为100%，它将从高到低递减，直到输出无失真
numerrs = 1 %numerrs为输入输出的值不同的个数，初始赋值为1，使以下循环正常运行

while numerrs ~= 0 %只要输入输出不同值不为0个就一直运行
    e = e - 0.0001
    nz = bsc(d,e) %bsc即二进制对称信道，输入信源矩阵d后，以e的错误概率传输，输出为nz
    [numerrs, pcterrs] = biterr(d,nz) %比较d和nz的不同，不同值的个数为numerrz， 占总数百分比pcterrs
    if numerrs == 0
        display('可靠传输最高错误概率为')
        display(e)
    end    
end