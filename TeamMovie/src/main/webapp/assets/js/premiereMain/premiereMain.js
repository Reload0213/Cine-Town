// 임승혁 시사회 스크립트입니다.


filterSelection("all");

function filterSelection(c){
    let x,i;

    x= document.getElementsByClassName("column");
    if(c=="all") c="";

    for(i=0; i<x.length; i++){
        filterRemoveClass(x[i],"show");
        if(x[i].className.indexOf(c)>-1) filterAddClass(x[i],"show");

    }
}


function filterAddClass(element, name){
    let i , arr1, arr2;

    arr1 =element.className.split(" ");
    arr2 = name.split(" ");

    for( i=0; i<arr2.length; i++){
        if(arr1.indexOf(arr2[i])== -1)
        element.className += " "+arr2[i];
    }
}

function filterRemoveClass(element, name){
    let i , arr1, arr2;

    arr1 =element.className.split(" ");
    arr2 = name.split(" ");
    
    for( i=0; i<arr2.length; i++){
        while(arr1.indexOf(arr2[i])>-1){
       arr1.splice(arr1.indexOf(arr2[i]),1);

        }
    }
    element.className =arr1.join(" ");

}

let btnCon = document.querySelector(".btnCon");
let btns = btnCon.getElementsByClassName("btn");

for( let i=0; i< btns.length; i++){
    btns[i].addEventListener("click",function(){
        let current = document.getElementsByClassName("select");
        current[0].className =current[0].className.replace(" select","");
        this.className +=" select";
    });
}