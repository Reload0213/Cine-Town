

//임승혁 관리자페이지 자바스크립트단




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

    
    
