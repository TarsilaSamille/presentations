#import "@preview/slydst:0.1.0": *
#import "@preview/pyrunner:0.1.0" as py

#let compiled = py.compile(
```python
def find_emails(string):
    import re
    return re.findall(r"\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b", string)

def sum_all(*array):
    return sum(array)
```)

#let txt = "My email address is john.doe@example.com and my friend's email address is jane.doe@example.net."

#py.call(compiled, "find_emails", txt)
#py.call(compiled, "sum_all", 1, 2, 3)


#set page(fill: white)
#show: slides.with(
  title: "O que é o algoritmo KNN?",
  authors: ("Nome do Autor",),
)

== Introdução
 {txt}ss
O algoritmo KNN (k-Nearest Neighbors) é um classificador de aprendizado supervisionado não paramétrico. 

Ele utiliza a proximidade para fazer classificações ou previsões sobre o agrupamento de um ponto de dados individual. 

É um dos classificadores mais populares e simples usados atualmente em machine learning.

== Funcionamento



*Classificação*

O KNN baseia-se na suposição de que pontos semelhantes estão próximos uns dos outros.

Um rótulo de classe é atribuído por meio de uma votação majoritária dos k vizinhos mais próximos.

A distância euclidiana é comumente usada para determinar a proximidade.



== Funcionamento 

#figure(
  image("image_1710340336701_0.png", width: 110%),
  caption: [
    Classificação
  ],
)

== Funcionamento 

*Regressão*

A média dos k vizinhos mais próximos é usada para fazer uma previsão sobre uma classificação.

É semelhante à classificação, porém com valores contínuos.

#figure(
  image("image_1710340352274_0.png", width: 80%),
  caption: [
    Regressão
  ],
)

== Características

- Simples e fácil de entender: Ideal para iniciantes em machine learning.

- Versátil: Pode ser usado para classificação e regressão.

- Eficaz: Pode ser muito preciso em alguns casos.

- Preguiçoso: Armazena o conjunto de dados de treinamento e computa as previsões no momento da classificação.

== Limitações

- Escalabilidade: Pode ser lento e ineficiente com grandes conjuntos de dados.

- Sensibilidade ao ruído: Pode ser influenciado por valores inconsistentes nos dados.

- Escolha de k: O valor de k pode afetar significativamente o desempenho do modelo.

== Aplicações

- Pré-processamento de dados: Imputação de valores ausentes.
- Motores de recomendação: Previsão de conteúdo de interesse para usuários.
- Finanças: Previsão de preços de ações e outras variáveis financeiras
- Detecção de fraudes: Identificação de transações fraudulentas.
- Reconhecimento de imagem: Classificação de imagens.

== Conclusão

O KNN é um algoritmo fundamental em machine learning com diversas aplicações. 

Apesar de suas limitações, é uma ferramenta útil para iniciantes e para problemas específicos.