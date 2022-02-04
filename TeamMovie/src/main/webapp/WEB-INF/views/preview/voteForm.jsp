<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<style>
*{
    margin:0;
    padding:0;
    font-size: 62.5%;
    box-sizing: border-box;
    
}

ul,ol,li{
    list-style: none;
}
a{
  text-decoration: none;
}

.detailVoteCon{
visibility: hidden;
opacity:0;
transition: all 2s linear;
width:65%;
margin:0 auto;
padding:3.0rem;
background-color: #f7f7f7;


}
.detailVoteCon.on{
visibility: visible;
opacity:1;
transition: all 2s linear;
}

.detailVoteCon div{
 
    width:90%;
    margin:0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.row{
    width:100%;
display:flex;

}

.row>li:nth-child(1){
width:20%;
text-align: center;
background-color:#999999;
color:#fff;
border:0.1rem solid #ddd;
font-size: 1.5rem;
padding:0.8rem 0rem;

}
.row>li:nth-child(2){
    display: flex;
    justify-content:flex-start;
width:80%;
border:0.1rem solid #ddd;
padding:0.8rem 1rem;
}
.row>li:nth-child(2) input{
    border:0.1rem solid #ddd;
    font-size:1.5rem;
}
.termsCon{
  width:100%;
  padding:1rem;
  display: flex;
  flex-direction: column;
align-items: flex-start;
 
  
}
.termsCon span{
margin:0.4rem 0;
font-size: 1.4rem;
width:100%;
text-align: left;

}
.termsCon span:nth-child(3){
    display:flex;
    align-items: center;
  
}
.termsCon span:nth-child(3)>label{
  font-size:1.6rem;
  }
.detailVoteBtnCon{
   
    margin:0 auto;

}

.detailVoteBtnCon button{
    color:white;
    font-size:1.5rem;
    border:none;
    outline:none;
    background-color: #515151;
    padding:1rem 5rem;
}
#name, #email{
    width:50%;
    padding:0.2rem 0.2rem 0.2rem 0.5rem;
    height:2.5rem;
     font-size: 1.1rem;
}

#phoneBack{
    margin-left:1rem;
    width:44%;
     padding:0.2rem 0.2rem 0.2rem 0.5rem;
      height:2.5rem;
    font-size: 1.1rem;
}
#yn{
    margin-right:0.3rem;
    width:1.2rem;
    height:1.2rem;
}
#phoneFront{
    font-size: 1.1rem;
    padding:0.3rem 1rem;
    
}
@media (max-width:1024px) {
    html{
        font-size: 50%;
    }
  #name, #email{
   width:90%;
  }
  #phoneBack{
  width:68%;
  }
  
  
    
}

@media (max-width:768px) {
    html{
        font-size: 50%;
    }
  #name, #email{
   width:90%;
  }
  #phoneBack{
  width:67%;
  }
  
  
    
}

@media (max-width:480px) {
    html{
        font-size: 40%;
    }
  input{
   width:90%;
  }
  
    
}

</style>



<form class="detailVoteCon" action="" method="GET">
        <div>
            <ul class="row item1">
                <li>이름</li>
                <li><input type="text" class="name" id="name" /></li>
            </ul>
            <ul class="row item2">
                <li>이메일</li>
                <li><input type="email" name="" id="email" class="email" /></li>
            </ul>
            <ul class="row item3">
                <li>휴대폰</li>
                <li><select name="phoneFront" id="phoneFront">
                    <option value="010" selected>010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                    <option value="019">019</option>
                </select><input type="text" name="phoneBack" id="phoneBack" class="phoneBack" />
                </li>
            </ul>
        </div>
        <div class="termsCon">
        <span>- 당첨 후 연락처 및 주소지가 틀린 경우 당첨이 취소됩니다.</span>
       
        <span>- 이벤트에 당첨된 회원님의 개인정보는 당첨자 안내 및 경품 배송을 위해 상단의 이벤트 상세 페이지에 <br>표기된 제휴사에
        제공되며, 목적 달성 후 지체없이 폐기됩니다. 이용자는 개인정보 제공에 대한 동의를 거부할 권리가 있으며, <br>미동의시에는 이벤트 
        참여가 불가합니다. 위와 같이 개인정보를 제공하는데 동의하십니까?</span>
        <span><input type="checkbox" name="yn" id="yn" value="Y" /><label for="yn">동의합니다.</label></span>
    </div>
        <div class="detailVoteBtnCon"><button>응모하기</buttton></div>	
    </form>

<script>

document.querySelector(".voteBtn").addEventListener("click",function(e){
	
	e.preventDefault();
	document.querySelector(".detailVoteCon").classList.add("on");
	this.style.display="none";
	document.querySelector(".detailVoteCon").style.display="block";

});
</script>

