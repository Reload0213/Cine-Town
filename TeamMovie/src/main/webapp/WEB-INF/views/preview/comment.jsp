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
      margin:2rem auto;
      
  }
 /*  .cntCmt{ 
      font-size: 1.3rem;
      padding:0.5rem 0;
      font-weight: 500;
  } */
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

.cntCmt{
padding:0.2rem;
border-bottom:0.1rem solid #ebe8e8;
margin:0 auto;
width:60%;
}
.cntCmt>.cmtNum{
font-weight: 300;
font-size:1.4rem;
}

.cmtListCon{
    width:60%;
    margin:0 auto;
    display: flex;
    flex-direction: column;
   
}
.cmtList{
    width:100%;
    padding:0.7rem;
    border-top:0.05rem solid #d4d3d3;
    border-bottom:0.1rem solid #d4d3d3;
    margin:0 auto;
     border-collapse:collapse;
    
}
.cmtList ul{
    width:100%;
}
.cmtList ul li{
    margin:0.2rem;
    width:100%;
}
.cmtList ul li:nth-child(2){
    padding:0.5rem;
}
.cmtList ul li:nth-child(3){
    padding:0.4rem;
    display: flex;
    justify-content: flex-end;
}
.cmtList ul li:nth-child(3) button{
    padding:0.4rem 0.9rem;
    background-color: transparent;
    border: 0.1px solid #d4d3d3;
    border-radius: 0.3rem;
    margin-right:0.2rem;
    color:#666;
    cursor:pointer;
    outline:none;
}
.cmtList ul li:nth-child(3) .cmtEditBtn:hover{

    transition: all 0.8s ease-in-out;
    background-color:#2964e0;
    border:none;
    color:#f1f1f1;
    
}

.cmtList ul li:nth-child(3) .cmtDeleteBtn:hover{

transition: all 0.8s ease-in-out;
background-color:#dd2026;
border:none;
color:#f1f1f1;
}


.topTitle .cmtUserId{
    font-size: 1.1rem;
    color:#666;
    margin-right:0.7rem;
}
.topTitle .cmtWriteTime {
color: #919191;
font-size: 1.2rem;
}

.cmtListComment{
    font-size: 1.3rem;
}

.editContentBox{
    width:100%;
    display:flex;
   margin: 0 AUTO;
}
.editTextAreaBox{
    width:90%;
    display: flex;
    flex-direction: column;
    border:0.1rem solid #ebe8e8;
    font-weight: 400;
}
.editTextAreaBox .editTextarea
{
width:100%;
    border: none;
    padding:1.4rem 1.2rem 0 1.2rem;
    outline: none;
    resize: none;
    font-size: 1.1rem;
    overflow-y: auto;
}


.editCntText{
    display: flex;
    justify-content: flex-end;
    background-color: #ffffff;
    padding:0.2rem; 
    
}
.editNowCnt{
    font-weight: bold;
    color:#555;
} 
.editSubmit{
    width:10%;
    border:0.01rem solid #555;;
    flex-direction: column;
    border-collapse: collapse;
}
.editSubmit>button{
    border:none;
    width:100%;
    height:50%;
    border-collapse: collapse;
   
    background-color: #2964e0;
    color:#ffffff;
    font-size: 1.2rem;
    font-family: 'Noto Sans KR',sans-serif;
}
.editSubmit>button:hover{
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
<!-- <h5 class="cntCmt">총 1000건의 COMMENT가 있습니다.</h5> -->
<div class="comment">
<div class="contentBox">
<div class="textAreaBox">
    <textarea name="" id="textarea" cols="10" rows="2" placeholder="댓글을 입력해주세요."></textarea>
    <span class="cntText"><strong class="nowCnt">0</strong>/100자 (한글 100자 / 영문 100자)</span>
</div>

<div class="submit"><button id="subBtn" type="button">등록</button></div>
</div>
</div>




</div>
<h3 class="cntCmt">댓글 <strong class="cmtNum"></strong></h3>
<div class="cmtListCon"></div>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

document.getElementById("textarea").addEventListener("keydown",function(){
	document.querySelector(".nowCnt").innerHTML=this.value.length;

	if(this.value.length>100){
	 this.value=this.value.substring(0,100);
	 document.querySelector(".nowCnt").innerHTML="100";
	}



	});
	
	





$(function(){
	
	let pwNum = {pwNum: +document.querySelector("#pwNum").value};
	
	$.ajax({
		url:"${pageContext.request.contextPath}/preview/detail/cmt/count",
		type:"POST",
		data:JSON.stringify(pwNum),
		dataType:"json",
		contentType:"application/json; charset=utf-8",
		success:function(result){
			
		document.querySelector(".cmtNum").innerText="("+result+")";
			console.log(result);
			
		}
		
		
		
		
		
		
		
	});
	
	
	
	
	
	
	
	$.ajax({
		
		url:"${pageContext.request.contextPath}/preview/detail/cmt/load/"+	document.querySelector("#pwNum").value,
		type:"GET",
		dataType:"json",
		contentType:"application/json; charset=utf-8",
		success:function(data){
			
			for(const item of data){
				
				let userNum = ${sessionScope.account.userNum};
				
				
				let cmtList = document.querySelector(".cmtListCon");
				
				const div =document.createElement("div");
				  div.classList.add("cmtList");
				  
				  
				 const ul = document.createElement("ul");
				 
				 
			
				 const li1 = document.createElement("li");
				 const div2= document.createElement("div");
				 div2.classList.add("topTitle");
				 
				 
				 const span = document.createElement("span");
				 span.classList.add("cmtUserId");
				 span.innerText = item.writerName;
				 const span2 = document.createElement("span");
				 span2.classList.add("cmtWriteTime");
				 span2.innerText = item.writeTime;
				 div2.append(span);
				 div2.append(span2);
				 li1.append(div2);
				 
				 ul.append(li1);
				
				 const li2 = document.createElement("li");
				 li2.classList.add("cmtListComment");
				 li2.innerText=item.comment;
		         ul.append(li2);
		        
				 const li3 = document.createElement("li");
				
				 if(userNum == item.writerNum){
					 
					 
				 const button = document.createElement("button");
				 button.classList.add("cmtEditBtn");
				 button.innerText ="수정";
				 
				 button.addEventListener("click",function(){
					 
					 li2.innerText="";
					 li3.style.display="none";
					 
					const editDiv = document.createElement("div");
					editDiv.classList.add("editContentBox");
		
					
					
					const editDiv2 = document.createElement("div");
					editDiv2.classList.add("editTextAreaBox");
					
					
				
					const editTextArea = document.createElement("textarea");
					editTextArea.cols="10";
					editTextArea.rows="1.5";
					editTextArea.placeholder="댓글을 입력해주세요.";
					editTextArea.classList.add("editTextarea");
					editTextArea.value=item.comment;
					
					const editSpan = document.createElement("span");
					editSpan.classList.add("editCntText");
					
					const editStrong = document.createElement("strong");
					editStrong.innerHTML="0";
					editStrong.classList.add("editNowCnt");
					
					const editSpan2 = document.createElement("span");
					editSpan.classList.add("editCntMsg");
					
					const editDiv3 = document.createElement("div");
					editDiv3.classList.add("editSubmit");
					const editButton = document.createElement("button");
					editButton.innerText="수정";
					const editButton2 = document.createElement("button");
					editButton2.innerText="취소";
					
				   editDiv.append(editDiv2);
				   
				   editDiv2.append(editTextArea);
				   editSpan2.innerText = "/100자 (한글 100자 / 영문 100자)";
				   editSpan.append(editStrong);
				   editSpan.append(editSpan2);
				
				  
				   editDiv2.append(editSpan);
				  
				   
				   
				   editDiv.append(editDiv3);
				   editDiv3.append(editButton);
				   editDiv3.append(editButton2);
				   
				        editTextArea.addEventListener("keydown",function(){
						  editStrong.innerHTML=this.value.length;

						if(this.value.length>100){
						 this.value=this.value.substring(0,100);
						  editStrong.innerHTML="100";
						}


						});
				   
				   document.querySelector(".cmtListComment").append(editDiv);
				

				   
				   editButton2.addEventListener("click",function(){
					   editDiv.style.display="none";
					   li2.innerText=item.comment;
						li3.style.display="flex";
						
				   });
				   editButton.addEventListener("click",function(){
					  
					   let comment = editTextArea.value;
					   
					   const editData = {comment ,pwNum:item.pwNum, pnum:item.pnum};
					   
					   console.log(editData);
					   
					   $.ajax({
						   
						   url:"${pageContext.request.contextPath}/preview/detail/cmt/update",
						   type:"PATCH",
						   data:JSON.stringify(editData),
						   dataType:"json",
						   contentType:"application/json; charset=utf-8",
						   success:function(result){
							   li2.style.display="block";
							   li2.innerHTML=result.comment;
							 
							   li3.style.display="flex";
							   editDiv.remove();
							  
						   }
						   
						   
					   });
					   
					   
				   });
				   
				   
				 
				   
				   
				   
				   
				   
					
					 
				 });
				 
				 
		
				 
				 const button2 = document.createElement("button");
			     button2.classList.add("cmtDeleteBtn");
			     button2.innerText ="삭제";
			     
			     button2.addEventListener("click",function(){
			    	 
			    	 let yn = confirm("삭제하시겠습니까?");
			    	 
			    	 if(yn){
			    		 let cmtData = {pnum:item.pnum, pwNum:item.pwNum};
			    		 
			    	
			    		 $.ajax({
			    			 url:"${pageContext.request.contextPath}/preview/detail/cmt/delete/",
			    			 type:"DELETE",
			    			 data:JSON.stringify(cmtData),
			    			 contentType:"application/json; charset=utf-8",
			    			 dataType:"json",
			    			 success:function(data){
			    		     div.remove(); 
			    			/* console.log(data);
			    			div.style.backgroundColor="red"; */
			    			 }
			    			
			    		 });
			    	 }
			     });
			     
			     li3.append(button);
			     li3.append(button2);
			     ul.append(li3);
			     div.append(ul);
			     
				 }
				 
		           ul.append(li3);
				 
				 
			     div.append(ul); 
			     document.querySelector(".cmtListCon").append(div);
			     
			}
			
			
		}
		
		
		
		
		
		
		
	});
	

	 
	 
	 
 });
 
 
document.querySelector("#subBtn").addEventListener("click",function(){
	let comment = document.querySelector("#textarea").value;
	 
	 if(comment.length>0){
		 
		 let commentData ={comment, pwNum:	document.querySelector("#pwNum").value,writeTime:getTime()};
		 
		 
		 $.ajax({
			
			 url:"${pageContext.request.contextPath}/preview/detail/cmt/add",
			 type:"POST",
			 data:JSON.stringify(commentData),
			 dataType:"json",
			 contentType:"application/json; charset=utf-8",
			 success:function(data){
				 let userNum = data.writerNum;
				
		   console.log(data.writeTime);
				let cmtList = document.querySelector(".cmtListCon");
						
						const div =document.createElement("div");
						  div.classList.add("cmtList");
						  
						  
						 const ul = document.createElement("ul");
						 
						 
					
						 const li1 = document.createElement("li");
						 const div2= document.createElement("div");
						 div2.classList.add("topTitle");
						 
						 
						 const span = document.createElement("span");
						 span.classList.add("cmtUserId");
						 span.innerText = data.writerName;
						 const span2 = document.createElement("span");
						 span2.classList.add("cmtWriteTime");
						 span2.innerText = data.writeTime;
						 div2.append(span);
						 div2.append(span2);
						 li1.append(div2);
						 
						 ul.append(li1);
						
						 const li2 = document.createElement("li");
						 li2.classList.add("cmtListComment");
						 li2.innerText=data.comment;
				         ul.append(li2);
				        
						 const li3 = document.createElement("li");
						 
						 
						 if(userNum == data.writerNum){
							 
							 
						 const button = document.createElement("button");
						 button.classList.add("cmtEditBtn");
						 button.innerText ="수정";
						 
			
						 button.addEventListener("click",function(){
							 
							 li2.innerText="";
							 li3.style.display="none";
							 
							const editDiv = document.createElement("div");
							editDiv.classList.add("editContentBox");
				
							
							
							const editDiv2 = document.createElement("div");
							editDiv2.classList.add("editTextAreaBox");
							
							
						
							const editTextArea = document.createElement("textarea");
							editTextArea.cols="10";
							editTextArea.rows="1.5";
							editTextArea.placeholder="댓글을 입력해주세요.";
							editTextArea.classList.add("editTextarea");
							editTextArea.value=data.comment;
							
							const editSpan = document.createElement("span");
							editSpan.classList.add("editCntText");
							
							const editStrong = document.createElement("strong");
							editStrong.innerHTML="0";
							editStrong.classList.add("editNowCnt");
							
							const editSpan2 = document.createElement("span");
							editSpan.classList.add("editCntMsg");
							
							const editDiv3 = document.createElement("div");
							editDiv3.classList.add("editSubmit");
							const editButton = document.createElement("button");
							editButton.innerText="수정";
							const editButton2 = document.createElement("button");
							editButton2.innerText="취소";
							
						   editDiv.append(editDiv2);
						   
						   editDiv2.append(editTextArea);
						   editSpan2.innerText = "/100자 (한글 100자 / 영문 100자)";
						   editSpan.append(editStrong);
						   editSpan.append(editSpan2);
						
						  
						   editDiv2.append(editSpan);
						  
						   
						   
						   editDiv.append(editDiv3);
						   editDiv3.append(editButton);
						   editDiv3.append(editButton2);
						   
						        editTextArea.addEventListener("keydown",function(){
								  editStrong.innerHTML=this.value.length;

								if(this.value.length>100){
								 this.value=this.value.substring(0,100);
								  editStrong.innerHTML="100";
								}


								});
						   
						   document.querySelector(".cmtListComment").append(editDiv);
						

						   
						   editButton2.addEventListener("click",function(){
							   editDiv.style.display="none";
							   li2.innerText=data.comment;
								li3.style.display="flex";
								
						   });
						   editButton.addEventListener("click",function(){
							  
							   let comment = editTextArea.value;
							   
							   const editData = {comment ,pwNum:data.pwNum, pnum:data.pnum};
							   
							   console.log(editData);
							   
							   $.ajax({
								   
								   url:"${pageContext.request.contextPath}/preview/detail/cmt/update",
								   type:"PATCH",
								   data:JSON.stringify(editData),
								   dataType:"json",
								   contentType:"application/json; charset=utf-8",
								   success:function(result){
									   li2.style.display="block";
									   li2.innerHTML=result.comment;
									 
									   li3.style.display="flex";
									   editDiv.remove();
									  
								   }
								   
								   
							   });
							   
							   
						   });
						   
						   
						 
						   
						   
						   
						   
						   
							
							 
						 });
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 
						 const button2 = document.createElement("button");
					     button2.classList.add("cmtDeleteBtn");
					     button2.innerText ="삭제";
					     
					     button2.addEventListener("click",function(){
					    	 
					    	 let yn = confirm("삭제하시겠습니까?");
					    	 
					    	 if(yn){
					    		 let cmtData = {pnum:data.pnum, pwNum:data.pwNum};
					    		 
					    	
					    		 $.ajax({
					    			 url:"${pageContext.request.contextPath}/preview/detail/cmt/delete/",
					    			 type:"DELETE",
					    			 data:JSON.stringify(cmtData),
					    			 contentType:"application/json; charset=utf-8",
					    			 dataType:"json",
					    			 success:function(data){
					    				  div.remove();
					    			 }
					    			
					    		 });
					    	 }
					     });
					     
					     li3.append(button);
					     li3.append(button2);
					     ul.append(li3);
					     div.append(ul);
					     
						 }
						 
				           ul.append(li3);
						 
						 
					     div.append(ul); 
					     cmtList.append(div);
					     
					
					
			 }
		 });
		 
	 }
	  
	
	});
	
function getTime(){
	let date = new Date();
	let year = date.getFullYear().toString();
	
	let month = date.getMonth()+1;
	month=month <10 ? "0"+month.toString() : month.toString();
	
	let day = date.getDate();
	day = day<10 ? '0'+day.toString() : dat.toString();
	
	let hour = date.getHours();
	hour = hour <10 ? '0'+hour.toString() : hour.toString();
	
	let minutes = date.getMinutes();
	minutes =minutes <10?'0'+minutes.toString() : minutes.toString();
	
	let seconds = date.getSeconds();
	seconds =seconds<10 ? '0'+seconds.toString() : seconds.toString();
	
	return year+"-"+month+"-"+day+" "+hour+":"+minutes+":"+seconds;
	
	
	
	
}





</script>

