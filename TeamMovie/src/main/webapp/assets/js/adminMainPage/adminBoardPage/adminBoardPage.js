

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

