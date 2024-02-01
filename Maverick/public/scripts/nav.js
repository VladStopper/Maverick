(function Menu(){
    const openButton = document.querySelector('.nav__menu');
    const menu = document.querySelector('.nav__link');
    const closeMenu = document.querySelector('.nav__close');

    openButton.addEventListener('click', ()=>{
        menu.classList.add('nav__link--show');
    });

    closeMenu.addEventListener('click', ()=>{
        menu.classList.remove('nav__link--show');
    });
})();


(function routes(){
    const route_inicio = document.getElementById('inicio');
    const route_nav_inicio = document.getElementById('nav_logo');
    const route_nosotros = document.getElementById('nosotros');
    const route_catalogo = document.getElementById('catalogo');


    route_inicio.addEventListener('click', ()=>{
        window.open("./index.php", "_self");
    })

    route_nav_inicio.addEventListener('click', ()=>{
        window.open("./index.php", "_self");
    })

    route_nosotros.addEventListener('click', ()=>{      //addEventListener : permite agregar detectores de eventos en cualquier objeto php DOM
        window.open("./nosotros.php", "_self");
    })

    route_catalogo.addEventListener('click', ()=>{
        // window.open("./catalogo.php", "_self");
        window.open("./catalogo.php", "_self");
    })
})();


(function route_nosotros(){
    const route_card1_bt = document.getElementById('card1_bt');
    const route_card2_bt = document.getElementById('card2_bt');
    const route_card3_bt = document.getElementById('card3_bt');

    
    route_card1_bt.addEventListener('click', ()=>{     
        window.open("./nosotros.php#card1_section", "_self");
    })

    route_card2_bt.addEventListener('click', ()=>{     
        window.open("./nosotros.php#card2_section", "_self");
    })

    route_card3_bt.addEventListener('click', ()=>{
        window.open("./nosotros.php#card3_section", "_self");
    })
})();