(function(){
    
    const sliders = [...document.querySelectorAll('.image_card')];
    const buttonNext = document.querySelector('#next');
    const buttonBefore = document.querySelector('#before');
    let value;   

    buttonNext.addEventListener('click', ()=>{
        changePosition(1);
    });

    buttonBefore.addEventListener('click', ()=>{
        changePosition(-1);
    });

    const changePosition = (add)=>{
        const image = document.querySelector('.image_card--show').dataset.id;
        value = Number(image);
        value+= add;


        sliders[Number(image)-1].classList.remove('image_card--show');
        if(value === sliders.length+1 || value === 0){
            value = value === 0 ? sliders.length  : 1;
        }

        sliders[value-1].classList.add('image_card--show');

    }

})();