//Funciona pero lanza error en la consola 





// function filter(group) {
//     var n = document.querySelectorAll('.cards').length;
//     const cards = [...document.querySelectorAll('.cards')];
    

//     for(i=0; i<n;i++) {
//         if (group.checked == true)
//         {
//             document.getElementsByName(group.value)[i].style.display = "grid";
//         }
//         else
//         {
//             document.getElementsByName(group.value)[i].style.display = "none";
//         }
//     }
// };

















// function filter(group){
//     const cards = [...document.querySelectorAll('.cards')];
//     const category = [...document.getElementsByClassName('category_filter')];
//     const category_chk_true = category.filter(chk => chk.checked == true);
//     const category_chk_false = category.filter(chk => chk.checked == false);
   
//     console.log(category_chk_true)
//     console.log(category_chk_false)


//    category_chk_true.forEach(chk =>{
        // console.log(chk.value)
        // document.getElementsByName(chk.value).style.display = "grid";

        
//    })

//    console.log("-------------------------------------")

//    category_chk_false.forEach(chk =>{
        // console.log(chk.value)
        // document.getElementsByName(chk.value).style.display = "none";
    // })

    // console.log("---------------------------------TRUE----")
    // for(i=0;i<category_chk_true.length;i++)
    // {
    //     console.log(category_chk_true[i].value)
    //     console.log(document.getElementsByName(category_chk_true[i].value))
        // document.getElementsByName(category_chk_true[i].value)[i].style.display = 'grid';
        // console.log(a)
        // a[i].style.display = 'grid';
        // console.log(a)
    // }


    // console.log("---------------------------------FALSE---")

    // for(i=0;i<category_chk_false.length;i++)
    // {
    //     console.log(category_chk_false[i].value)
    //     console.log(document.getElementsByName(category_chk_false[i].value))
        // document.getElementsByName(category_chk_false[i].value)[i].style.display = 'none';
        // console.log(a)
        // a[i].style.display = 'grid';
        // console.log(a)
//     }

    
// };


























// function filter() {
//     const filters = [...document.querySelectorAll('.category_filter')];
//     const cards = [...document.querySelectorAll('.cards')];
    
//     console.log(filters)
    
//     filters.forEach(chk => {
//         if(chk.checked == true)
//         {
              
//             var type = chk.value
//             var card = document.getElementsByName(type);
                
//             console.log(card)
            

//             if(chk.checked == true)
//             {
//                 document.getElementsByName(type)[i].style.display = "grid";
//                 console.log(type)
//             }
//             else
//             {
//                 document.getElementsByName(type)[i].style.display = "none";
//             }
//         }
        
//     });

// };






















// function filter(group) {
//     var n = document.querySelectorAll('.cards').length;
//     const cards = [...document.querySelectorAll('.cards')];
//     const n = cards.length;

//     for(i=0; i<n;i++) {
//         if (group.checked == true)
//         {
//             document.getElementsByName(group.value)[i].style.display = "grid";
//         }
//         else
//         {
//             document.getElementsByName(group.value)[i].style.display = "none";
//         }
//     }
// };


// function filter(group) {
    
//     const filters = [...document.querySelectorAll('.category_filter')]
//     const cards = [...document.querySelectorAll('.cards')];
//     const n = cards.length;

//     filters.forEach(chkbox => {
//         if(chkbox.checked == true)
//         {
//             console.log("verdadero")
//             for (i=0;i<n;i++)
//             {
//                 if(cards[i].name == group.value)
//                 {
//                     console.log("verdadero tarjetas")
//                     cards[i].style.display = "grid";
//                     console.log("value-group:", group.value)
//                 }
//                 else
//                 {
//                     cards[i].style.display = "none";   
//                 }
//             }
//         }

//     });
// };





// cards.forEach (card => {
//     if(card.name == group.value)
//     {
//         console.log("verdadero tarjetas")
//         card.style.display = "grid";
//         console.log("value-group:", group.value)
//     }
//     else
//     {
//         card.style.display = "none";   
//     }
// })
