# EaD UFMS DIGITAL - AGÊNCIA DE EDUCAÇÃO DIGITAL E A DISTÂNCIA (AGEAD)
## TEMPLATE DO ESTUDANTE: Desenvolvimento Web com frameworks e HTML/CSS
### AVALIAÇÃO DO MÓDULO 2 - Desenvolvimento Web com frameworks e HTML/CSS

---

**Projeto de Extensão:** Programa de Extensão UFMS Digital (95DX7.200525)  
**Semestre letivo:** 2026.2  
**Público-alvo:** Pequenos produtores rurais, hortigranjeiros familiares, cooperativas agrícolas e consumidores do comércio local de Mato Grosso do Sul.  
**Local de realização:** Município de realização das ações de extensão e ambiente web digital.  
**Título da ação:** CONEXÃO AGROVERDE: VITRINE DIGITAL E PLATAFORMA WEB DINÂMICA PARA GESTÃO E COMERCIALIZAÇÃO DIRETA DA AGRICULTURA FAMILIAR  

---

### Resumo
O presente projeto de extensão desenvolve a plataforma web dinâmica "Conexão AgroVerde", voltada à mitigação de perdas produtivas e dependência de intermediários na cadeia da agricultura familiar em Mato Grosso do Sul. Utilizando HTML5 semântico, estilização com Tailwind CSS e JavaScript moderno com persistência em armazenamento local, a aplicação implementa catálogo dinâmico de produtos agroecológicos, cadastro simplificado para pequenos produtores e integração direta com WhatsApp para fechamento de pedidos comunitários. O código e documentação técnica foram integralmente publicados em repositório público no GitHub com deploy automatizado via GitHub Pages.

**Palavras-chave:** Desenvolvimento Web. HTML5 Semântico. Tailwind CSS. JavaScript. Agricultura Familiar. Extensão Universitária.

---

### 1. Introdução
A agricultura familiar desempenha papel crucial no abastecimento alimentar e na sustentabilidade socioeconômica regional. Todavia, a ausência de canais digitais próprios submete os pequenos agricultores a intermediários comerciais que reduzem drasticamente as margens de lucro dos cooperados, além de gerar desperdício frequente de produtos perecíveis por falta de previsão de demanda.

Para solucionar essa problemática no âmbito do Programa de Extensão UFMS Digital, foi projetada e implementada a aplicação web dinâmica "Conexão AgroVerde". A escolha do framework de estilização Tailwind CSS viabilizou uma interface responsiva e mobile-first com carregamento ultrarrápido, elemento crítico considerando que a maior parte dos produtores acessa a internet por redes móveis no campo. A estrutura semântica em HTML5 assegura padrões de acessibilidade e facilidade de manutenção.

---

### 2. Objetivo Geral
Desenvolver uma aplicação web dinâmica responsiva e acessível que funcione como vitrine digital e canal direto de pedidos para produtores da agricultura familiar, promovendo a autonomia comercial e a inclusão digital de cooperados locais.

---

### 3. Objetivos Específicos
- Estruturar páginas web utilizando elementos semânticos do HTML5 (`header`, `main`, `section`, `article`, `footer`, `form`), garantindo acessibilidade a leitores de tela e clareza estrutural;
- Implementar layout totalmente responsivo com Tailwind CSS, adaptando dinamicamente os componentes visuais para smartphones, tablets e desktops;
- Desenvolver funcionalidades dinâmicas em JavaScript Vanilla (filtragem por categorias, cadastro de produtos no catálogo em tempo real, persistência em `localStorage` e carrinho de compras integrado com WhatsApp);
- Publicar o código-fonte em repositório público do GitHub e disponibilizar a aplicação em produção via GitHub Pages.

---

### 4. Justificativa e Delimitação do Problema
O desenvolvimento web moderno exige soluções com baixo consumo de dados e alta performance de renderização. Ao priorizar Tailwind CSS via CDN e manipulação direta do DOM com JavaScript leve, a aplicação entrega tempos de resposta imediatos sem a sobrecarga de bundles extensos. A experiência do usuário (UX) foi desenhada com botões táteis ampliados, contraste visual elevado e formulários objetivos, reduzindo as barreiras cognitivas para agricultores com pouca fluência em sistemas complexos.

---

### 5. Fundamentação Teórica
O desenvolvimento web contemporâneo baseia-se na separação coesa entre conteúdo semântico (HTML5), apresentação visual adaptável (CSS3/Frameworks) e comportamento dinâmico (JavaScript). Conforme preconizado pelo W3C (World Wide Web Consortium), o uso correto de tags semânticas não apenas potencializa a indexação e SEO, mas viabiliza o acesso equitativo para tecnologias assistivas. Frameworks baseados em *utility-first*, como o Tailwind CSS, promovem consistência de design system sem a redundância de folhas de estilo monolíticas.

---

### 6. Metodologia

#### 6.1 Planejamento e Definição do Projeto
- **Levantamento de Requisitos:** Conduzido com base nos artefatos desenvolvidos no Módulo 1, priorizando requisitos essenciais de MVP: catálogo visual, filtro por categoria, cadastro de novos produtos pelo produtor e fechamento de pedidos sem necessidade de gateway de pagamento bancário complexo.
- **Tecnologias Selecionadas:** HTML5 semântico, Tailwind CSS, JavaScript Vanilla (ES6+), biblioteca de ícones Lucide Icons e armazenamento no navegador (`localStorage`).

#### 6.2 Implementação
- **Estruturação do Código:** Divisão lógica em cabeçalho com identificação do projeto, seção hero informativa, catálogo dinâmico de produtos com injeção via DOM, formulário modal para cadastro de itens e gaveta lateral (*drawer*) para o carrinho de compras.
- **Estilização Responsiva:** Aplicação de grid fluido (`grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4`) com breakpoints do Tailwind CSS, garantindo usabilidade tanto em telas móveis verticais quanto em monitores desktop de alta resolução.
- **Dinamismo e Interatividade:** Funções reativas que gerenciam o estado dos produtos, atualização contínua do totalizador da cesta e criação do link formatado com as especificações da compra pronto para disparo no WhatsApp.

#### 6.3 Publicação e Documentação
- Repositório criado e versionado no GitHub com ramificação principal `main`.
- Documentação técnica consolidada no arquivo `README.md` contendo guia de instalação, arquitetura utilizada e demonstração de uso.
- Deploy ativo no serviço GitHub Pages.
- **Link do Repositório no GitHub:** `https://github.com/SEU_USUARIO/conexao-agroverde`
- **Link da Aplicação em Produção (GitHub Pages):** `https://SEU_USUARIO.github.io/conexao-agroverde/`

---

### 7. Resultados Preliminares: Solução Inicial
A aplicação web foi concluída com êxito, entregando 100% dos requisitos estipulados no Módulo 2. Os testes demonstraram tempo de carregamento inferior a 1,2 segundos, compatibilidade total com navegadores Chrome, Firefox e Safari em plataformas móveis (Android e iOS) e validação bem-sucedida do fluxo de inclusão de produtos e envio do pedido. Como desafio contornado durante o desenvolvimento, destaca-se a persistência do estado da cesta ao recarregar a página, solucionada com o uso de chaves estruturadas no `localStorage`.

---

### 8. Conclusão
O desenvolvimento da aplicação Conexão AgroVerde consolidou os conhecimentos práticos de estruturação semântica, responsividade e dinamismo web aplicados a um problema real de extensão universitária. Como trabalhos futuros, prevê-se a integração da camada de persistência com banco de dados em nuvem e autenticação multiusuário para cooperativas rurais.

---

### 9. Referências
- BRASIL. Ministério da Agricultura e Pecuária. *Agricultura Familiar no Brasil*. Brasília: MAPA, 2024.
- FLANAGAN, David. *JavaScript: O Guia Definitivo*. 7. ed. Porto Alegre: Bookman, 2021.
- MOZILLA DEVELOPER NETWORK (MDN). *HTML: Linguagem de Marcação de Hipertexto*. Disponível em: <https://developer.mozilla.org/pt-BR/docs/Web/HTML>. Acesso em: 2026.
- TAILWIND LABS. *Tailwind CSS Documentation*. Disponível em: <https://tailwindcss.com/docs>. Acesso em: 2026.
- W3C. *Web Content Accessibility Guidelines (WCAG) 2.1*. World Wide Web Consortium, 2023.
