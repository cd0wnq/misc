##基础
#### 语法改动（相对与OC)
- let修饰常量, var修饰变量.
- 类型声明在变量名之后  ``` let str: String ```.
- print / NSLog.
- 语句不需要";"结尾.

#### 整型 (Integer)
- Int在32位机器上等价于Int32, 在64位机器上等价于Int64; UInt同理; 绝大多数情况下用Int.
- 其他进制: 在数值前加上0b, 0o, 0x.
- 会判断是否溢出, 如 ``` let i: UInt8 = -1 ``` 会报错.

#### 浮点型 (Float)
- 32位浮点数: Float; 64位浮点型: Double; 绝大多数情况下用Double.
- 其他表示法: 

```
	1.25e2 		// 1.25*10(2);
  	0xFp2 			// 15＊2(2); 
	0xC.3p0 		// 12.1875; 
  	1_000_000 	// 10(6). 
```

#### 布尔型 (Boolean)
- true / false.
- if / while 等不接受非布尔值.

```
let i = 1
if i { // error
} 
```

#### String
- String是值类型.
- 与NSString bridged

#### 类型安全和类型推导 (Type Safety And Type Inference)
- ``` let f = 42.0; type(of:f) ``` 推导出i为Double类型.

#### typealias
- 类似于typedef.

#### 元组 (Tuples)
```
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")
// You can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")
```
- 不可变。
- 函数返回多个值。

#### 可选值 (Optionals)
- 一个值或者存在，或者不存在 (nil). ``` var str: String? // str初始化为nil```
- 基本类型也可以是可选的, 可被赋值为nil. ``` var i: Int? ```
- 通过!解除 (Unwrapping). ```  print(str!); ```
- 可选绑定 (Optional Binding). ``` if let actualStr = str { print(actualStr) }  ```
- 隐式解除可以选值: 如果一个可选类型总是有值的, 可定义为 ``` var str1: String! print(str1) ```.

