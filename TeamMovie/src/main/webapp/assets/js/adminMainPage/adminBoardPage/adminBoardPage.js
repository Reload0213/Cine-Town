document.getElementById("submitBoard").addEventListener("click",function(){

    if(document.getElementById("selBoard").value==1){
        document.querySelector(".item1").style.display="block";
        document.querySelector(".item2").style.display="none";
    }
    else if(document.getElementById("selBoard").value==2){
        document.querySelector(".item2").style.display="block";
        document.querySelector(".item1").style.display="none";
    }
   else{
    document.querySelector(".item2").style.display="none";
        document.querySelector(".item1").style.display="none";
   }

   
});


let writerdeletes = document.querySelectorAll(".delete");


for(let i=0;  i<writerdeletes.length; i++){

    writerdeletes[i].addEventListener("click",function(){
        let yn= confirm("이 글을 삭제하시겠습니까?");
        if(yn){
            this.parentElement.parentElement.remove();

        }
        else{
            return false;
        }
    })


}

