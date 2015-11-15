#Category.create!([
  #{name: "PR"},
  #{name: "EL"},
  #{name: "BT"},
  #{name: "CS"},
  #{name: "Médio"},
  #{name: "Fundamental"},
  #{name: "Professores"},
  #{name: "Funcionários"}
#])

Post.create!([
   {title: "OMNI board", content: "Sistema que posta automaticamente fotos do quadro numa rede social própria para alunos e professores.", category_id: 33, user_id: 1},
   {title: "SimulEdu", content: "Compilação de simuladores em um portal com o intuito de explorar áreas como física, matemática e química.", category_id: 33, user_id: 2},
   {title: "prORT", content: "Rede social para pessoas conectadas ao ORT, onde pode-se postar ideias sobre a instituição, votar nas melhores ideias, e comentar.", category_id: 33, user_id: 1},
   {title: "Óculos de realidade virtual", content: "Demonstração do Google Card Board, feito pela turma de IN1.", category_id: 33, user_id: 2},
   {title: "Air Drums", content: "Bateria elétrica que permite ao usuário produzir sons sem a necessidade de uma bateria física.", category_id: 34, user_id: 1},
   {title: "POV Display", content: "Display composto por uma haste giratória que gera imagens estáticas. ", category_id: 34, user_id: 2},
   {title: "Xadrez baseado em arduino", content: "Xadrez que baseia os seus movimentos por inputs no computador .", category_id: 34, user_id: 1},
   {title: "Tranca eletrônica", content: "Tranca que dispõe de um sistema de segurança baseado no arduino.", category_id: 34, user_id: 2},
   {title: "Line Follow", content: "Robô automatizado por arduino que segue percursos de linha.", category_id: 34, user_id: 1},
   {title: "A importância do esporte (documentário)", content: "Entrevistas com pessoas que se relacionam de alguma forma com esportes em geral.", category_id: 36, user_id: 1},
   {title: "Sua Vez (coleção de moda)", content: "Desenhos da coleção de moda.", category_id: 36, user_id: 2},
   {title: "Tertúlia", content: "Baralho brasileiro de tarot.", category_id: 36, user_id: 1},
   {title: "Feminismo: Afinal do que se trata?", content: "Série de entrevistas para tentar explicar ao público o que é o feminismo.", category_id: 36, user_id: 2},
   {title: "Ensaios fotográficos sobre Luz, Ciência e Vida.", content: "Série de fotos ilustrando o tema deste ano da semana nacional da ciência e tecnologia.", category_id: 36, user_id: 1},
   {title: "Oficina de serigrafia", content: "Oficina de serigrafia para os visitantes da feira.", category_id: 36, user_id: 2},
   {title: "Ver Rever Transver", content: "Exposição de fotografia sobre sombra e reflexo.", category_id: 36, user_id: 1},
   {title: "Cultivo in vitro de pétalas de violeta africana", content: "Organogênese induzida in vitro.", category_id: 35, user_id: 2},
   {title: "O cultivo de Elodea em meios enriquecidos", content: "Cultivo da Elodea, uma planta aquática, num meio rico.", category_id: 35, user_id: 1},
   {title: "Cultivo de meristema apical das raizes de lentilha", content: "Cultivo do tecido de crescimento das raízes.", category_id: 35, user_id: 2},
   {title: "Cultivo in vitro de Raphanus Sativus com adição de hormônios vegetais", content: "Cultivo in vitro de nabo com adição de hormônios vegetais.", category_id: 35, user_id: 1},
   {title: "Calogênese, embriogênese e suspensão de células da batata doce", content: "Experiência de reprodução e cultivo em suspensão da batata doce.", category_id: 35, user_id: 2},
   {title: "Experimentos em biotecnologia", content: "Observação de efeitos da poluição em protozoários.", category_id: 35, user_id: 2},
   {title: "Extração de óleos essenciais de interesse econômico", content: "Obtenção de essências a partir de um sistema de hidrodestilação.", category_id: 35, user_id: 1},
   {title: "Elaboração de novos produtos fermentados", content: "Produção a partir de fermentação: Refrigerante probiótico, hidromel e iogurte.", category_id: 35, user_id: 2}

])
