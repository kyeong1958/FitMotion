
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
<!DOCTYPE html>
<html>
<head>
   <title>계산기</title>
   <script type="text/javascript">
      var flag=false;//0이 있는 상태
 
      function operation(num){
         if (flag==false) {//초기화//0이 없는 상태로 만들기
            //flag=false;
            cal.result.value="";//값 초기화
            flag= true;//0이 없는 상태가 됨
         }
 
         cal.result.value+=num;
      }
      function dream(){//result에 출력 함수
         var str = cal.result.value;
         var strArray = str.split('^');
         var findValue = "^";
         cal.result.value = eval(cal.result.value);
 
         if(str.indexOf(findValue) != -1) { // 만약 내 출력 값에 ^가 들어간다면
            cal.result.value = Math.pow(strArray[0],strArray[1]);
         }
 
      }
      function c(){//clear버튼
         if (flag==true) {//0이 없는 상태
            flag=false;//0이 있는 상태
         cal.result.value = "0";
         }
      }
      function bs() {
         cal.result.value = cal.result.value.substring(0, cal.result.value.length-1);
            // substring 으로 0부터 value 길이에서 -1 한 만큼의 길이를 출력한다
      }
      function doSin() {
         cal.result.value = Math.sin((document.cal.result.value*3.141592)/180);
      }
      function doCos() {
         cal.result.value = Math.cos((document.cal.result.value*3.141592)/180);
      }
      function doTan() {
         cal.result.value = Math.tan((document.cal.result.value*3.141592)/180);
      }
      function reverse() {
         dream();
         cal.result.value = (cal.result.value) * -1;
      }
 
 
   </script>
</head>
<body>
<div align="center">
<p></p>
<form name="cal">
<table >
   <!-- 첫번째 줄 -->
   <tr>
      <td colspan="6"><input style="text-align: right;" type="result" name="result" id ="result" value="0" ></td>
   </tr>
   <!-- 두번째 줄 -->
   <tr>
      <td align="center" colspan="3"><input type="button" name="clear" value="Clear" onclick="c()"></td>
      <td align="center" colspan="2"><input type="button" name="oper" value="="
         onclick="dream()"></td>
      <td align="center"><input type="button" name="backspace" value="<--"
         onclick="bs()"></td>
   </tr>
   <!-- 세번째 줄 -->
   <tr>
      <td>
         <input type="button"  value="1" onclick="operation('1')"></td>
      <td align="center">
         <input type="button"  value="2" onclick="operation('2')"></td>
      <td><input type="button"  value="3" onclick="operation('3')"></td>
      <td colspan="2">
         <input type="button" name="p" value="+" onclick="operation('+')"></td>
      <td><input type="button" name="exp" value="x^y" onclick="operation('^')"></td>
   </tr>
   <!-- 네번째 줄 -->
   <tr>
      <td><input type="button"  value="4" onclick="operation(value)"></td>
      <td align="center">
         <input type="button"  value="5" onclick="operation(value)"></td>
      <td><input type="button"  value="6" onclick="operation(value)"></td>
      <td colspan="2">
         <input type="button" name="m" value="-" onclick="operation(value)"></td>
      <td><input type="button" name="sin" value="sin" onclick="doSin()"></td>
   </tr>
   <!-- 첫번째 줄 -->
   <tr>
      <td><input type="button"  value="7" onclick="operation(value)"></td>
      <td align="center">
         <input type="button"  value="8" onclick="operation(value)"></td>
      <td><input type="button"  value="9" onclick="operation(value)"></td>
      <td colspan="2">
         <input type="button" name="mul" value="*" onclick="operation(value)"></td>
      <td><input type="button" name="cos" value="cos" onclick="doCos()"></td>
   </tr>
   <tr>
      <td><input type="button"  value="0" onclick="operation(value)"></td>
      <td><input type="button" name="plma" value="+/-" onclick="reverse()"></td>
      <td><input type="button" name="dot" value="." onclick="operation(value)"></td>
      <td colspan="2">
         <input type="button" name="div" value="/" onclick="operation(value)"></td>
      <td><input type="button" name="tan" value="tan" onclick="doTan()"></td>
   </tr>
 
 
 
</table>
 
 
</div>
</body>
</html>
