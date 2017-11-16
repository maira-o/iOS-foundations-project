//
//  ViewController.swift
//  nossoApp
//
//  Created by Maíra  on 09/11/17.
//  Copyright © 2017 Maíra . All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var recipeList: UITableView!
    var recipeData = [StructRecipe]()
//    let titleRecipes = ["Hamburger", "Chicken", "Pasta", "Pancake", "Fish", "Pizza", "Salad"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeList.delegate = self
        recipeList.dataSource = self
        
        self.recipeList.dataSource = self
        
       
        recipeData.append(StructRecipe(descriptionRecipe: "Tão fácil como um bolo de cenoura comum, essa versão fica deliciosa e ainda usamos ingredientes mais ricos em nutrientes.", descriptionTitle: "Descrição", image: UIImage(named: "bolo_cenoura")!, ingredients:             """
"2 cenouras grandes ou 250g
            4 colheres de sopa de óleo de coco ou manteiga ghee
            3 ovos
            1  xícara de açúcar demerara
            1 xícara de farinha de arroz – eu uso sempre a integral
            1/2 xícara de farinha de amêndoas, amaranto ou grão de bico
            1/2 xícara de fécula de batata
            2 colheres de sopa de farinha de linhaça
            1 colher de sopa de fermento"
"""
            , ingredientsTitle: "Ingredientes", shortDescriptionList: "Fácil e delicioso", steps:             """
"Pré-aqueça o forno a 180 graus.
            Descasque e corte as cenouras em rodelas.
            Misture as farinhas em uma tigela e reserve.
            No liquidificador bata os ovos, o óleo de coco ou manteiga ghee e as cenouras até virar um creme. Acrescente o açúcar demerara e a mistura das farinhas e bata novamente. Por fim acrescente o fermento apenas misturando.
            Asse em forno a 180 graus por 30-40 minutos ou até que o palito saia limpo."
""", thumbnailImage: UIImage(named: "bolo_cenoura")!, titleRecipe: "Bolo de Cenoura", restriction: "Sem Glúten, Sem Lactose"))

        recipeData.append(StructRecipe(descriptionRecipe: "Ela é uma delícia e ótima para o café da manhã.", descriptionTitle: "Descrição", image: UIImage(named: "panqueca")!, ingredients: """
"1 banana amassada
1 ovo
1 colher de sopa de amaranto ou quinoa em flocos. Se você não for celíaco pode usar aveia."
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Ela é uma delícia e ótima para o café da manhã.", steps: """
"Bata levemente, com um garfo mesmo, o ovo. Adicione a banana amassada e o grão que escolheu e misture bem. Leve ao fogo em uma frigideira antiaderente até que cozinhe dos dois lados – sempre bom dar uma viradinha na metade do tempo para que fique uniforme."
""", thumbnailImage: UIImage(named: "panqueca")!, titleRecipe: "Panqueca", restriction: "Sem Glúten, Sem Lactose"))

        recipeData.append(StructRecipe(descriptionRecipe: "Receita levemente adpatada do Fitnistas.", descriptionTitle: "Descrição", image: UIImage(named: "pizza-lowcarb")!, ingredients: """
"2 xícaras de couve-flor ralado
1 ovo
1 colher de sopa de biomassa de banana verde – opcional
Temperinhos à seu gosto – eu usei cebolinha e salsinha"
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Receita levemente adpatada do Fitnistas.", steps: """
"Lave bem sua couve-flor. Pré-aqueça o forno em fogo médio-alto.
Com um ralador, rale ela bem fininha, ou se preferir coloque no processador, também dá certo!
Misture o ovo e os outros ingredientes. Se você achar que sua massa está muito líquida coloque mais couve-flor.
O ponto dela tem que ser mais firminho, que você consiga trabalhar ela sem ela escorrer das mãos.
Coloque em um prato de pizza ou uma forminha untada e coloque sua massa de forma que ela fique redondinha. Não deixa ela nem muito fina – para não queimas fácil – nem muito grossa – se não ela não assa no meio!
Deixe uns 15 minutos no forno – dê uma olhadinha de vez em quando, talvez você precisa virar ela para assar do outro lado, e enquanto isso prepare seu recheio."
""", thumbnailImage: UIImage(named: "pizza-lowcarb")!, titleRecipe: "Pizza Lowcarb", restriction: "Sem Glúten, Sem Lactose"))
        
        recipeData.append(StructRecipe(descriptionRecipe: "Uma deliciosa opção de pão", descriptionTitle: "Descrição", image: UIImage(named: "pao-cenoura")!, ingredients: """
"1 xícara de chá de purê de cenoura morno
1/4 xícara de chá da água de cozimento da cenoura
1/2 xícara de chá de óleo
1 colher de sobremesa de açúcar demerara
1 colher de chá de sal
1 sachê de fermento biológico seco
500g de farinha de trigo
Gergelim a gosto (opcional)"
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Opção deliciosa de pão.", steps: """
"Unte uma assadeira com óleo e preaqueça o forno na temperatura média (180 graus).
Misture o purê de cenoura e a água ainda mornos. Acrescente o óleo, o açúcar e o sal. Mexa bem.
Coloque o fermento e misture. Acrescente a farinha aos poucos, mexendo bem a cada adição.
A massa deve ficar macia e lisa. Se for preciso, acrescente um pouco mais de farinha (não tive necessidade de acrescentar, mas sinta como estará a sua massa).
Não é preciso sovar, apenas misture e amasse até que fique uma massa homogênea.
Separe a massa em 16 porções de 50g cada. Modele bolinhas ou outro formato que desejar. Acomode lado a lado. Pincele com a pasta de açafrão e coloque um pouco de gergelim. Não precisa esperar crescer.
Asse por 40 minutos (acompanhe durante esse período, o tempo pode variar de forno para forno)."
""", thumbnailImage: UIImage(named: "pao-cenoura")!, titleRecipe: "Pão de Cenoura com Gergelim", restriction: "Sem Lactose"))
        
        recipeData.append(StructRecipe(descriptionRecipe: "Aquele doce que não é só para ver.", descriptionTitle: "Descrição", image: UIImage(named: "pave")!, ingredients: """
"1 receita do biscoito champagne
- Creme de chocolate
1 colher de sopa de amido de milho
200 ml de leite de coco (ou outro "leite" vegetal de sua preferência)
1/3 xícara de chá de cacau em pó
1/2 xícara de chá de açúcar demerara
- Creme de coco
100 ml de água
2 colheres de sopa de amido de milho
400 ml de leite de coco
1/2 xícara de chá de açúcar demerara
1 colher de café de extrato de baunilha"
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Aquele doce que não é só para ver.", steps: """
""Creme de chocolate: Dissolva o amido de milho no leite de coco. Acrescente o cacau e misture bem até dissolver completamente. Coloque o açúcar e leve ao fogo, mexendo até engrossar. Reserve.
Creme de coco: Dissolva o amido de milho na água. Misture os demais ingredientes e leve ao fogo até engrossar.
Montagem: molhe os biscoitos em um pouco de leite de coco e faça camadas alternando o creme branco e de chocolate. Enfeitei com chocolate granulado, utilize a cobertura de sua preferência (coco ralado, castanhas picadas, etc)."
""", thumbnailImage: UIImage(named: "pave")!, titleRecipe: "Pavê de chocolate e coco", restriction: "Sem Lactose"))
        
        recipeData.append(StructRecipe(descriptionRecipe: "Essa receita é ideal para quem buscar unir um estilo de vida saudável e ao mesmo tempo prazeroso. O milho é um grão que oferece bom valor de proteína e de carboidratos, é rico em antioxidantes, vitaminas e mineiras, além de conter fibras em abundância.", descriptionTitle: "Descrição", image: UIImage(named: "bolo-milho")!, ingredients: """
"2 xícaras (chá) de milho verde
1 xícara (chá de leite de coco
2/3 de xícara (chá) açúcar de coco
1 colher (sopa) de manteiga
2 ovos
¼ de xícara (chá) de farinha de linhaça
1 colher (sopa) de fermento em pó"
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Bolo super saudável", steps: """
"No liquidificador, bata o milho com o leite de coco, o açúcar de coco e a manteiga ghee, até obter uma mistura bem homogênea. Adicione os ovos e bata mais um pouco.
Em seguida, adicione farinha de linhaça e o fermento, batendo mais uma vez.
Coloque a massa em um refratário já untado e leve ao forno pré-aquecido a 180ºC, asse por aproximadamente 45 minutos ou até começar a dourar."
""", thumbnailImage: UIImage(named: "bolo-milho")!, titleRecipe: "Bolo Cremoso de Milho", restriction: "Sem Glúten"))

        recipeData.append(StructRecipe(descriptionRecipe: "Esta receita de nhoque de batata-doce é uma ótima opção para uma refeição leve e nutritiva, já que é elaborada com batata-doce, conhecida no mundo fitness por ser uma boa fonte de carboidratos de baixo índice glicêmico, ou seja, não provoca picos de glicemia e ainda oferece energia prolongada.", descriptionTitle: "Descrição", image: UIImage(named: "nhoque")!, ingredients: """
"2 colheres rasas (sopa) de semente de chia
5 colheres (sopa) água
1 kg de batata doce
Sal e noz moscada moída a gosto
2 colheres (sopa) ervas frescas picadas grosseiramente (sugestão: salsinha e sálvia)
2 xícaras (chá) de farinha de arroz integral
1/4 xícara (chá) farinha de linhaça
Azeite extra virgem para finalizar (opcional)"
""", ingredientsTitle: "Ingredientes", shortDescriptionList: "Receita nutritiva", steps: """
"Coloque as sementes de chia para hidratarem com as 5 colheres de água. Reserve
Lave as batatas doces, descasque e corte em cubos grandes;
Em uma panela funda, coloque as batatas e cubra generosamente com água.
Coloque sobre fogo alto e espere ferver.
Abaixe o fogo e deixe as batatas cozinharem até estarem completamente cozidas (para confirmar, espete a batata com o garfo, ela não deve oferecer resistência e deve escorregar facilmente pelos dentes do garfo quando retirada da água).
Escorra a água e se necessário coloque as batatas sobre um pano de prato limpo para secá-las.
Ainda quentes, passe as batatas em um espremedor de batatas (se estiver com grumos mais endurecidos, passe este “purê” por uma peneira mais fina);
Polvilhe uma superfície com um pouco da farinha de arroz integral, disponha o purê de batata doce, tempere com sal, noz moscada e as ervas frescas picadas. Misture e espere amornar.
Adicione a chia e o gel formado, a farinha de linhaça e 1 ½ xícaras de farinha de arroz integral.
Delicadamente, incorpore os ingredientes até formar uma massa homogênea.
Porcione a massa e faça cilindros. Com uma faca, corte os nhoques em tamanhos regulares (2 a 3cm). Antes de modelar e cortar toda a massa, faça o teste do ponto.
Para testar o ponto da massa: Em uma panela funda com bastante água fervente, coloque alguns nhoques. Assim que subirem à superfície, retire e experimente, se estiverem muito moles ou se a massa desmanchar, acrescente o restante da farinha de arroz à massa.
Após acertar o ponto da massa, cozinhe pequenas porções de nhoques em água fervente e salgada.
Retire-os da água com o auxílio de uma escumadeira, escorra bem.
Para finalizar, sirva quente com um fio de azeite extra virgem ou com o molho de sua preferência."
""", thumbnailImage: UIImage(named: "nhoque")!, titleRecipe: "Nhoque de batata doce", restriction: "Sem Glúten"))

    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = recipeList.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        let cellData = recipeData[indexPath.row]
        cell.titleRecipeCell.text = cellData.titleRecipe
        cell.imageRecipeCell.image = cellData.image
        cell.shortDescripitionCell.text = cellData.shortDescriptionList
        
        return cell
        
    }

    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }



}

