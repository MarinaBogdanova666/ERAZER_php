const selectBrand = document.getElementById('select-1');
const selectModel = document.getElementById('select-2');
const selectVolume = document.getElementById('select-3');
const buttons = document.querySelector('.filteres');

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
        const response = await fetch('/filteres', {
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
                opt.value = models.volume;
                opt.setAttribute('data-model-id', models.id);
                opt.className = "models";
                opt.innerHTML = models.models;
                selectModel.append(opt);
            }
        }
        CreateModel(answer);
    })();
});

selectModel.addEventListener("change", function () {

    selectVolume.disabled = false;

    let id = selectModel.options[selectModel.selectedIndex].getAttribute('data-model-id')
    let volume = this.value;

    let checkVolume = document.querySelectorAll('.volume');
    if (checkVolume.length > 0) {
        buttons.disabled = true;
        for (let i = 0; i < checkVolume.length; i++) {
            checkVolume[i].remove();
        }
    }

    function CreateVolume(id, volume) {
        let opt = document.createElement('option');
        opt.value = volume;
        opt.setAttribute('data-volume-id', id);
        opt.innerHTML = volume;
        opt.className = "volume";
        selectVolume.append(opt);
    }
    CreateVolume(id, volume);
});

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
        const result = await fetch('/filteres/getItem', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            body: JSON.stringify(
                {
                    id: id,
                    volume: volume
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
                products.insertAdjacentHTML('beforebegin', "<div class='product-item'><h1>" + product.name + "</h1><p>" + product.description + "</p></div>");
            }
        }
        CreateProducts(answer);
    }
    )();
});