

//임승혁 관리자페이지 자바스크립트단

//테마 변경

let switchingTheme = document.getElementById("switchingTheme");

let value=0;

let panel = document.querySelector(".panel");

switchingTheme.addEventListener("click",function(){

    if(value==0){
        document.body.classList.add("mintTheme");
        value++;
       
        panel.innerHTML="민트 테마 선택";
        setTimeout(function(
           
        ){  panel.innerHTML="관리자 페이지"},2000);
    }
    
    else if(value==1){
        
        document.body.classList.remove("mintTheme");
        document.body.classList.remove("pinkTheme");
        document.body.classList.add("blueTheme");
        value++;
       
     
        panel.innerHTML="블루 테마 선택";
        setTimeout(function(
           
        ){ 

        panel.innerHTML="관리자 페이지";
        
    },3000);


    }
    else if(value==2){
        document.body.classList.remove("blueTheme");
        document.body.classList.remove("mintTheme");
        document.body.classList.add("pinkTheme");
        value++;
        panel.innerHTML="핑크 테마 선택";
        setTimeout(function(
           
        ){  panel.innerHTML="관리자 페이지"},3000);
    }
    else{
        document.body.classList.remove("blueTheme");
        document.body.classList.remove("mintTheme");
        document.body.classList.remove("pinkTheme");

        value=0;
        
        
    }





   
  
});



function viewSideBar(){

    document.querySelector(".hideMenu").classList.add("on");
    // document.querySelector(".hideMenu").style.width="250px";
   
   
    }


    function exitSideBar(){
        document.querySelector(".hideMenu").classList.remove("on");
        // document.querySelector(".hideMenu").style.width="0px";
      
        
    }
//   document.querySelector(".searchBox").classList.toggle("active");
    
document.querySelector(".search").addEventListener("click",function(){
 
    document.querySelector(".searchBox").classList.toggle("active");
      
  


    document.querySelector(".xbtn").addEventListener("click",function(){

        document.querySelector(".searchBox").classList.remove("active");
    });


   

});

    
    
