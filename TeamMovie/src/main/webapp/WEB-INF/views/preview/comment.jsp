<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
  *{
      margin:0;
      padding:0;
      box-sizing: border-box;
      font-size:62.5%;
      font-family: 'Noto Sans KR', 'Roboto', sans-serif;

  }
  .commentCon{
      width:60%;
      margin:0 auto;
  }
  .cntCmt{ 
      font-size: 1.3rem;
      padding:0.5rem 0;
      font-weight: 500;
  }
 .comment{
     width:100%;
     margin:0 auto;
     background-color: #f1f1f1;
     padding:2rem;
 }
.contentBox{
    width:100%;
    display: flex;
}
.contentBox .textAreaBox{
    width:90%;
    display: flex;
    flex-direction: column;
    border:0.1rem solid #ebe8e8;
    font-weight: 400;
}
.contentBox .textAreaBox textarea{
    width:100%;
    border: none;
    padding:1.4rem 1.2rem 0 1.2rem;
    outline: none;
    resize: none;
    font-size: 1.1rem;
    overflow-y: auto;
}
.cntText{
    text-align: right;
    background-color: #ffffff;
    padding:0.2rem; 
    
}
.cntText >.nowCnt{
    font-weight: bold;
    color:#555;
} 
.submit{
    width:10%;
}
.submit>button{
    width:100%;
    height:100%;
    border: none;
    background-color: #2964e0;
    color:#ffffff;
    font-size: 1.2rem;
    font-family: 'Noto Sans KR',sans-serif;
}
.submit>button:hover{
    transition: background-color 0.8s ease-in-out ;
    background-color: #141414;
}

@media(max-width:768px) {
    html{
        font-size:50%;
    }
    .comment{
        padding:1.2rem;
    }
    .contentBox .textAreaBox{
        width:80%;
    }
    .submit{
        width:20%;
    }
}
</style>






<div class="commentCon">
<h5 class="cntCmt">총 1000건의 COMMENT가 있습니다.</h5>
<div class="comment">
<div class="contentBox">
<div class="textAreaBox">
    <textarea name="" id="textarea" cols="10" rows="2" placeholder="댓글을 입력해주세요."></textarea>
    <span class="cntText"><strong class="nowCnt">0</strong>/100자 (한글 100자 / 영문 100자)</span>
</div>

<div class="submit"><button>등록</button></div>
</div>
</div>




</div>


<script>

document.getElementById("textarea").addEventListener("keydown",function(){
	document.querySelector(".nowCnt").innerHTML=this.value.length;

	if(this.value.length>100){
	 this.value=this.value.substring(0,100);
	 document.querySelector(".nowCnt").innerHTML="100";
	}


	});





</script>

