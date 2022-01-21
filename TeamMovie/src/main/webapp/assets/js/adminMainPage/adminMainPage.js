

//임승혁 관리자페이지 자바스크립트단

//테마 변경

let switchingTheme = document.getElementById("switchingTheme");

let value=0;

switchingTheme.addEventListener("click",function(){

    if(value==0){
        document.body.classList.add("mintTheme");
        value++;
    }
    
    else if(value==1){
        
        document.body.classList.remove("mintTheme");
        document.body.classList.remove("pinkTheme");
        document.body.classList.add("blueTheme");
        value++;
    }
    else if(value==2){
        document.body.classList.remove("blueTheme");
        document.body.classList.remove("mintTheme");
        document.body.classList.add("pinkTheme");
        value++;
    }
    else{
        document.body.classList.remove("blueTheme");
        document.body.classList.remove("mintTheme");
        document.body.classList.remove("pinkTheme");

        value=0;
    }




   
  
});


