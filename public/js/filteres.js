const selectBrand = document.getElementById('select-1');
const selectModel = document.getElementById('select-2');
const selectVolume = document.getElementById('select-3');
const buttons = document.querySelector('.filteres');


//--- СЕЛЕКТ БРЕНДОВ ---//
selectBrand.addEventListener("change", function () {

    selectModel.disabled = false;

    let id = this.value;

    let modelsCheck = document.querySelectorAll('.models');
    if (modelsCheck.length > 0) {
        selectVolume.disabled = true;
        buttons.disabled = true;
        for (let i = 0; i < modelsCheck.length; i++) {
            modelsCheck[i].remove();
        }
    }

    let volumeCheck = document.querySelectorAll('.volume');
    if (volumeCheck.length > 0) {
        for (let j = 0; j < volumeCheck.length; j++) {
            volumeCheck[j].remove();
        }
    }

    (async () => {
        const response = await fetch('/getModels', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify(
                {
                    id: id
                }
            )
        });

        let answer = await response.json();
        
        function CreateModel(params) {
            for (let item in params) {
                let models = params[item];
                let opt = document.createElement('option');
         /*        opt.value = models.name; */
                opt.setAttribute('data-model-id', models.id);
                opt.className = "models";
                opt.innerHTML = models.name;
                selectModel.append(opt);
            }
        }
        CreateModel(answer);
    })();
});


//--- СЕЛЕКТ МОДЕЛЕЙ ---//
selectModel.addEventListener("change", function () {

    selectVolume.disabled = false;

    let id = selectModel.options[selectModel.selectedIndex].getAttribute('data-model-id')

    let checkVolume = document.querySelectorAll('.volume');
    if (checkVolume.length > 0) {
        buttons.disabled = true;
        for (let i = 0; i < checkVolume.length; i++) {
            checkVolume[i].remove();
        }
    }
    (async () => {
        const response = await fetch('/getAttributes', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify(
                {
                    id: id
                }
            )
        });

        let answer = await response.json();

        function CreateAttribute(params) {
            for (let item in params) {
                let volume = params[item];
                let opt = document.createElement('option');
                opt.setAttribute('data-volume-id', volume.filter_id);
                opt.className = "volume";
                opt.innerHTML = volume.volume;
                selectVolume.append(opt);
            }
        }
        CreateAttribute(answer);
    })();
});


//--- СЕЛЕКТ ОБЪЕМОВ ---//
selectVolume.addEventListener("change", function () {
    buttons.disabled = false;
});


buttons.addEventListener('click', function () {

    let id = selectVolume.options[selectVolume.selectedIndex].getAttribute('data-volume-id');
    let volume = selectVolume.value;

    let productCheck = document.querySelectorAll('.product-item');
    if (productCheck.length > 0) {
        for (let i = 0; i < productCheck.length; i++) {
            productCheck[i].remove();
        }
    }

    (async () => {
        const result = await fetch('/getResult', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify(
                {
                    id: id
                }
            )
        });

        let answer = await result.json();

        let products = document.querySelector('.products');

        if (answer.length == 0) {
            products.insertAdjacentHTML('beforebegin', "<div class='product-item'><h1>Ничего не найдено</h1></div>");
        }

        function CreateProducts(params) {
            for (let item in params) {
                let product = params[item];
                products.insertAdjacentHTML('beforebegin', "<div class='product-item'><h1>" + product.name + "</h1><img class='product_item__img' src='/images/products/"+ product.image +"' alt="+ product.name +"><p>" + product.description + "</p></div>");
            }
        }
        CreateProducts(answer);
    }
    )();
});