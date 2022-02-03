<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
        rel="stylesheet">
    <!-- 한글은 노토산스 코리아 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
        rel="stylesheet">
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<style>
  * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Noto Sans KR', 'Roboto', sans-serif;
            color: #fff;
            font-size: 62.5%;
            letter-spacing: 1%;
         
           
        }

        html,body{
            width:100%;
            height: 100%;
        }
        .mainCon{
            width: 100%;
            height:100%;
        }
        nav{
            width: 100%;
            flex: 1 auto;
            background-color: #141414;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding:1rem;
           
        }
        .navCon{
            display: flex;
            align-items: center;
        }
         .navCon>.icon>i{
            font-size:1.3rem;
            margin-right:0.5rem;
        }
        .navCon>span{
            font-size:1.2rem;
        }
        .exit{
          font-size: 1.5rem;
          cursor: pointer;
        }
        .contentCon{
            width:100%;
            height:94%;
            background-color: #333;
            color:#141414;
          
        }
        .top{

           
            text-align: center;
            padding:1.5rem 1rem;
            font-size :1.3rem;
           
         
        }
        .msgCon{
           width:80%;
           background-color: #fff;
           color:#141414;
           margin:0 auto;
           height:84%;
           
           
        }
        .sendDate{
            text-align: right;
            color:#141414;
            font-size:1.2rem ;
            padding:2rem 2rem;
          
        }
        .msg{
            color:#141414;
            padding:1rem 2rem;
            line-height: 1.6;
            font-size:1.5rem;
        }
       
    </style>



</head>
<body>

  <div class="mainCon">
        <nav><div class="navCon"><span class="icon"><i class="xi-mail-o"></i></span><span>${sessionScope.account.userId}의 메일함</span></div><span class="exit">&times;</span></nav>
        <div class="contentCon">
            <h2 class="top">${ambVO.userId}</h2>
            <div class="msgCon">
                <h3 class="sendDate">${ambVO.sendDate}</h3>
                <p class="msg"> ${ambVO.content}</p></div>
            
        </div>



    </div>
    
    
       <script>
     document.querySelector(".exit").addEventListener("click",function(){
    
        window.close();
        

     });
     

     
    </script>
</body>
</html>