![Gif](https://i.imgur.com/eWLYKol.gif)

# Info / Informações
This is a pharmacy UI for FiveM, that you can add more products.

Isso é uma interfáce de farmácia para o FiveM, que você pode adicionar mais produtos.

# How to use / Como usar
1. Download the zip file.
2. Drag the file `js_pharmacy` to your fivem resources folder.
3. Add the start on your server.cfg --> start js_pharmacy
4. If you need more help, join on my discord: https://discord.gg/J8QwGVq

# Português

1. Baixe o arquivo ZIP.
2. Arraste o arquivo `js_pharmacy` para a pasta resources.
3. Adicione o start no seu arquivo server.cfg --> start js_pharmacy
4. Se você precisar de mais ajuda entre no meu discord: https://discord.gg/J8QwGVq

# Notes / Notas
Will have blips on the map, where you can acess the menu. You can change, remove or add blips. You also can add more products on the store.

Irá haver blips no mapa, onde você irá acessar o menu. Você pode trocar, remover ou adicionar blips. Você também pode adicionar novos produtos.

# How to add products / Como adicionar produtos
1. Go to `js_pharmacy` --> `ui` --> `main.js`.
2. To make a new product you just have to do this: 
```
const product = new Product('name', 50, 'imageName');
product.createBox();
```
3. In the first parameter you put the name of the product, it will show this name in the menu.
4. The second is the product price.
5. The third is the image name, you dont need to put `.png` in the end.
6. Important thing: you need to add the image in `ui/imgs` and in the `__resource.lua`, like this:
![img](https://i.imgur.com/kKifoim.png)

# Português

1. Vá para `js_pharmacy` --> `ui` --> `main.js`.
2. Para criar um novo produto você precisa apenas fazer isso: 
```
const produto = new Product('nome', 50, 'nomeImagem');
produto.createBox();
```
3. No primeiro parâmetro você coloca o nome do produto, que irá aparecer no menu.
4. O segundo é o preço do produto.
5. O terceiro é o nome da imagem, você não precisa adicionar `.png` no final.
6. Importante: você precisa adicionar a imagem em `ui/imgs` e no `__resource.lua` tipo assim:
![img](https://i.imgur.com/kKifoim.png)

# Dependencies / Dependências
1. vRP
2. Notify




