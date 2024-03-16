org 0x7e00
jmp 0x0000:start

;https://texteditor.co/

data:
    mensagem db 'CARDAPIO.ASM',0
    msgBemVindo db 'Bem-vindo ao nosso cardapio digital!',0 ;30carac
    msgEspaco db 'Aperte o backspace para continuar',0 ;33carac
    msgIntro db 'Voce seleciona uma proteina e tres acompanhamentos estao inclusos! Alem disso,      voce pode escolher bebida e sobremesa para completar o seu pedido <3', 0
    string times 20 db 0
    msgEspaco2 db 'AAperte o backspace para continuar',0
    msgEncerra db 'Aperte F para encerrar', 0 ;22

    ;PROTEINAS
    titProteina db 'ESCOLHA SUA PROTEINA', 0 ;20
    carne db 'A. Carne de Sol............................................R$25', 0
    frango db 'B. Peito de Frango.........................................R$22', 0
    levedura db 'C. Picanha.................................................R$28', 0
    salmao db 'D. Salmao..................................................R$30', 0
    tilapia db'E. Tilapia.................................................R$28', 0
    soja db   'F. Proteina de Soja........................................R$20', 0
    ovo db    'G. Coxa de Frango..........................................R$22', 0
    msgEscProt db 'Digite o caractere da proteina que voce deseja', 0 ;46
    num times 20 db 0

    ;GUARNIÇOES
    titGuarnicoes db 'ESCOLHA 3 GUARNICOES', 0 ;20carac
    arrozB db 'H. Arroz Branco', 0
    arrozI db 'I. Arroz Integral', 0
    batataF db 'J. Batata Frita', 0
    macarrao db 'K. Macarrao', 0
    salada db 'L. Salada', 0
    legumes db 'M. Legumes Cozidos', 0
    pureB db 'N. Pure de Batata', 0
    pureBn db 'O. Pure de Banana', 0
    chips db 'P. Chips de Batata', 0
    arrozP db 'Q. Arroz Piamontese', 0
    farofa db 'R. Farofa', 0
    vinagrete db 'S. Vinagrete', 0
    batata db 'T. Batata Cozida', 0
    msgEscGuarn db 'Digite o caractere da guarnicao que voce deseja', 0 ;47


    ;Sobremesa
    titsobremesa db 'ESCOLHA SUA SOBREMESA', 0 ;47
    Bolo db 'U. Bolo de Chocolate...........................................R$12', 0
    BoloM db  'V. Bolo de Milho...............................................R$10', 0
    PetitG db 'W. Petit Gateau................................................R$18', 0
    pudim db      'X. Pudim de Leite..............................................R$12', 0
    brigadeiro db 'Y. Brigadeiro..................................................R$04', 0
    sorvete db 'Z. Sorvete.....................................................R$10', 0
    msgNadaSobremesa db 'Se nao desejar sobremesa, aperte o "0"', 0 ;45

    ;Bebidas
    titbebidas db 'ESCOLHA SUA BEBIDA', 0 ;45
    coca db '1. Coca-Cola Zero..............................................R$05', 0
    guarana db '2. Guarana.....................................................R$05', 0
    suco db '3. Suco de Laranja.............................................R$06', 0
    agua db '4. Agua........................................................R$04', 0
    msgNadaBebida db 'Se nao desejar, bebida aperte o "0" ', 0

    ;tela final
    introfim db 'Obrigada por realizar seu pedido no', 0 ;35
    nomerest db 'INFRA LANCHES', 0
    total db 'Sua conta total foi de: R$', 0 ;26
    novoped db 'Aperte backspace duas vezes para realizar um novo pedido', 0 ;55
    
    ;variaveis
    preco db 0

    ;189 x 17
    frase db 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15

coxa_de_frango_sprite db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 7, 15, 15, 15, 12, 6, 7, 15, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 7, 15, 15, 15, 6, 6, 7, 15, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 7, 15, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 12, 7, 15, 12, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 7, 15, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 7, 15, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 7, 15, 12, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 8, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 15, 7, 8, 8, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 15, 15, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 15, 15, 15, 7, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 7, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

arroz_sprite db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 7, 7, 7, 7, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 15, 15, 15, 15, 15, 15, 15, 15, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 7, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 8, 8, 7, 15, 15, 15, 15, 15, 15, 7, 8, 8, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 8, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 8, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 7, 7, 15, 15, 15, 15, 15, 15, 15, 15, 7, 7, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 8, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

sorvete_sprite db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 0, 0, 0, 7, 7, 7, 8, 0, 0, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 7, 7, 7, 0, 0, 8, 12, 0, 12, 0, 12, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 12, 12, 0, 0, 8, 12, 0, 0, 12, 12, 12, 12, 12, 0, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 12, 12, 12, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 12, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 8, 12, 12, 8, 0, 0, 0, 0, 8, 12, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 8, 12, 12, 12, 12, 0, 8, 12, 12, 12, 12, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 12, 8, 0, 12, 12, 12, 12, 8, 0, 12, 8, 0, 8, 12, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 12, 12, 12, 8, 0, 12, 12, 12, 12, 12, 12, 0, 0, 12, 12, 12, 12, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 12, 12, 12, 12, 8, 0, 12, 12, 12, 12, 12, 0, 0, 8, 12, 12, 12, 12, 12, 12, 0, 7, 0, 0, 0, 0, 7, 0, 12, 12, 12, 12, 0, 0, 8, 12, 12, 12, 12, 12, 8, 0, 12, 12, 12, 12, 12, 12, 12, 12, 0, 8, 0, 0, 0, 8, 8, 12, 12, 12, 12, 8, 0, 12, 12, 12, 12, 12, 12, 0, 8, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 8, 0, 0, 0, 0, 8, 12, 0, 0, 0, 8, 12, 12, 12, 12, 0, 0, 0, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 8, 0, 0, 0, 0, 7, 0, 8, 0, 0, 12, 12, 12, 8, 0, 12, 0, 0, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0, 0, 7, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 8, 8, 14, 7, 7, 7, 12, 12, 7, 12, 12, 7, 12, 6, 7, 12, 6, 7, 12, 6, 12, 12, 14, 8, 8, 0, 0, 0, 0, 0, 7, 8, 0, 8, 8, 0, 12, 14, 0, 6, 14, 8, 6, 14, 8, 6, 14, 8, 8, 14, 6, 8, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 6, 14, 14, 6, 14, 14, 6, 12, 14, 6, 12, 14, 6, 6, 14, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 14, 14, 8, 6, 14, 8, 6, 14, 8, 6, 14, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 6, 8, 12, 14, 6, 6, 14, 8, 6, 14, 0, 0, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 14, 6, 6, 14, 12, 6, 14, 12, 6, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 6, 8, 8, 14, 6, 8, 14, 6, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 6, 6, 6, 6, 6, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 8, 0, 8, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0


suco_sprite db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 0, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 8, 7, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 0, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 8, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 8, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 15, 15, 15, 15, 15, 7, 0, 8, 15, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 12, 6, 6, 7, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 7, 7, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 15, 15, 12, 6, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 14, 14, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 15, 15, 12, 12, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 15, 15, 12, 6, 6, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 15, 15, 12, 6, 12, 6, 6, 6, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 15, 15, 12, 6, 12, 12, 12, 12, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
print_frase:
   mov dx, 80
   mov bx, cx
    ;178 x 16
    .loop1:
        cmp dx, 96                 ;comparador=loop do C
        je .endloop1
        mov cx, 220 ;coluna
        .loop2:
            cmp cx, 398
            je .endloop2
        lodsb
        mov ah,0ch
        int 10h
            inc cx              ;incrementador de cx
            jmp .loop2
        .endloop2:
        inc dx                  ;incrementador de dx
        jmp .loop1
    .endloop1:
      ;jmp inicio
        mov cx, bx
        ret

print_imagens:
    mov dx, 7
    mov bx, cx
    .loop1:
        cmp dx, 37               ;comparador=loop do C
        je .endloop1
        mov cx, 1060 ;coluna
        .loop2:
            cmp cx, 1090
            je .endloop2
        lodsb
        mov ah,0ch
        int 10h
            inc cx              ;incrementador de cx
            jmp .loop2
        .endloop2:
        inc dx                  ;incrementador de dx
        jmp .loop1
    .endloop1:
        mov cx, bx
        ret


reverse:
    mov di, si 
    xor cx, cx ;zera o contador

    ;colocar a string na pilha
    .loop1:
        lodsb
        cmp al, 0
        je .endloop1
        inc cl
        push ax
        jmp .loop1

    .endloop1:

    ;tirando a string da pilha o que faz com que ela saia ao contrario
    .loop2:
        cmp cl, 0
        je .endloop2
        dec cl
        pop ax
        stosb
        jmp .loop2

        .endloop2:
        ret

tostring:
    push di

    .loop1:
        cmp ax, 0
        je .endloop1
        xor dx, dx
        mov bx, 10
        div bx
        xchg ax, dx
        add ax, 48
        stosb
        xchg ax, dx
        jmp .loop1

    .endloop1:
        pop si
        cmp si,di
        jne .done
        mov al, 48
        stosb

    .done:
        mov al, 0
        stosb
        call reverse
        ret
Cprato:
    cmp al, 'A'
    je .opcaoA

    cmp al, 'B'
    je .opcaoB

    cmp al, 'C'
    je .opcaoC

    cmp al, 'D'
    je .opcaoD

    cmp al, 'E'
    je .opcaoE

    cmp al, 'F'
    je .opcaoF

    cmp al, 'G'
    je .opcaoG

    cmp al, 'a'
    je .opcaoA

    cmp al, 'b'
    je .opcaoB

    cmp al, 'c'
    je .opcaoC

    cmp al, 'd'
    je .opcaoD

    cmp al, 'e'
    je .opcaoE

    cmp al, 'f'
    je .opcaoF

    cmp al, 'g'
    je .opcaoG

    ret

    .opcaoA:
        add cx, 25
        ret
    .opcaoB:
        add cx, 22
        ret
    .opcaoC:
        add cx, 28
        ret
    .opcaoD:
        add cx, 30
        ret
    .opcaoE:
        add cx, 28
        ret
    .opcaoF:
        add cx, 20
        ret
    .opcaoG:
        add cx, 22
        ret

Csobremesa:
    cmp al, 'U'
    je .opcaoU

    cmp al, 'V'
    je .opcaoV

    cmp al, 'W'
    je .opcaoW

    cmp al, 'X'
    je .opcaoX

    cmp al, 'Y'
    je .opcaoY

    cmp al, 'Z'
    je .opcaoZ

    cmp al, 'u'
    je .opcaoU

    cmp al, 'v'
    je .opcaoV

    cmp al, 'w'
    je .opcaoW

    cmp al, 'x'
    je .opcaoX

    cmp al, 'y'
    je .opcaoY

    cmp al, 'z'
    je .opcaoZ

    ret

    .opcaoU:
        add cx, 12
        ret
    .opcaoV:
        add cx, 10
        ret
    .opcaoW:
        add cx, 18
        ret
    .opcaoX:
        add cx, 12
        ret
    .opcaoY:
        add cx, 4
        ret
    .opcaoZ:
        add cx, 10
        ret

Cbebida:
    cmp al, '1'
    je .opcao1

    cmp al, '2'
    je .opcao2

    cmp al, '3'
    je .opcao3

    cmp al, '4'
    je .opcao4

    ret

    .opcao1:
        add cx, 5
        ret
    .opcao2:
        add cx, 5
        ret
    .opcao3:
        add cx, 6
        ret
    .opcao4:
        add cx, 4
        ret


clear:                   ; mov bl, color
  ; set the cursor to top left-most corner of screen
  mov dx, 0 
  mov bh, 0      
  mov ah, 0x2
  int 0x10

  ; print 2000 blank chars to clean  
  mov cx, 2000 
  mov bh, 0
  mov al, 0x20 ; blank char
  mov ah, 0x9
  int 0x10
  
  ; reset cursor to top left-most corner of screen
  mov dx, 0 
  mov bh, 0      
  mov ah, 0x2
  int 0x10
  ret


video:
    mov ah, 0
    mov al, 12h
    int 10h
    ret

initVideo: ; modo de video
  mov al, 13h
  mov ah, 0
  int 10h
  ret

margenta_background:
    mov ah, 0xb
    mov bh, 0
    mov bl, 5
    int 10h

    ret
lightblue_background:
    mov ah, 0xb
    mov bh, 0
    mov bl, 9
    int 10h

    ret

ciano_background:
    mov ah, 0xb
    mov bh, 0
    mov bl, 3
    int 10h

    ret

cinzaclaro_background: ;rosa claro
    mov ah, 0xb
    mov bh, 0
    mov bl, 13
    int 10h

    ret

preto_background: 
    mov ah, 0xb
    mov bh, 0
    mov bl, 0
    int 10h

    ret

blue_background:
    mov ah, 0xb
    mov bh, 0
    mov bl, 1
    int 10h

    ret
intela:                ; Função que incia o modo video e printa uma tela preta pra carregar as cores
    mov ah, 0
    mov al, 12h
    int 10h
    mov ah, 0xb
    mov al, 13h
    int 10h
    mov ah, 0xb
    mov bh, 0
    mov bl, 0
    int 10h
    ret

gets:               ; mov di, string
     xor cx, cx          ; zerar contador
    .Loop1:
        call getchar
        cmp al, 0x08      ; backspace
        je .backspace
    cmp al, 0x0d      ; carriage return
    je .Done
    cmp cl, 10        ; string limit checker
    je .Loop1
    
    stosb
    inc cl
    call putchar
    
    jmp .Loop1
    .backspace:
      cmp cl, 0       ; is empty?
      je .Loop1
      dec di
      dec cl
      mov byte[di], 0
      call delchar
    jmp .Loop1
  .Done:
  mov al, 0
  stosb
  call endl
  ret

getchar:
    mov ah, 0x00
    int 16h
    ret

putchar:
    mov ah, 0x0e
    int 10h
    ret

delchar:
    mov al, 0x08          ; backspace
    call putchar
    mov al, ' '
    call putchar
    mov al, 0x08          ; backspace
    call putchar
    ret

endl:
  mov al, 0x0a          ; line feed
  call putchar
  mov al, 0x0d          ; carriage return
  call putchar
  ret

strcmp:             ; mov si, string1, mov di, string2
    .loop1:
        lodsb
        cmp al, byte[di]
        jne .notequal
        cmp al, 0
        je .equal
        inc di
        jmp .loop1
    .notequal:
        clc
        ret
    .equal:
        stc
        ret

prints:             ; mov si, string
    .loop:
        lodsb           ; bota character em al 
        cmp al, 0
        je .endloop
        call putchar
        jmp .loop
    .endloop:
    ret

hold_till_space:
    mov di, string
    call getchar
    cmp al, ' '
    jne hold_till_space

    ret

set_position:
    mov ah, 02h
    mov bh, 0
    int 10h
    ret

inicio:
    xor cx, cx
    call video
    call margenta_background

    mov dl, 22
    mov dh, 12
    call set_position

    mov bl, 15
    mov si, msgBemVindo
    call prints

    mov dl, 1
    mov dh, 15
    call set_position

    mov bl, 15
    mov si, msgIntro
    call prints

    mov dl, 24
    mov dh, 30
    call set_position

    mov bl, 15
    mov si, msgEspaco2
    call prints

    mov dl, 35
    mov dh, 35
    call set_position

    mov si, frase
    call print_frase

    call hold_till_space
    call proteina
    ret

proteina: 

    call video
    call lightblue_background

    mov dl, 30
    mov dh, 2
    call set_position

    mov bl, 15 ;cor
    mov si, titProteina ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 8
    call set_position

    mov bl, 15 ;cor
    mov si, carne ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 10
    call set_position

    mov bl, 15 ;cor
    mov si, frango ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 12
    call set_position

    mov bl, 15 ;cor
    mov si, levedura ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 14
    call set_position

    mov bl, 15 ;cor
    mov si, salmao ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 16
    call set_position

    mov bl, 15 ;cor
    mov si, tilapia ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 18
    call set_position

    mov bl, 15 ;cor
    mov si, soja ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 20
    call set_position

    mov bl, 15 ;cor
    mov si, ovo ;nome do restaurante
    call prints

    mov dl, 18
    mov dh, 25
    call set_position

    mov bl, 15 ;cor
    mov si, msgEscProt ;nome do restaurante
    call prints

    mov dl, 24
    mov dh, 30
    call set_position

    mov bl, 15 ;cor
    mov si, msgEspaco2 ;nome do restaurante
    call prints

    mov si, coxa_de_frango_sprite
    call print_imagens

    ; capturar a escolha
    mov di, num
    call getchar
    call Cprato
    push ax ;proteina entra na pilha
    
    ;ficar esperando o espaco para mudar  de tela
    call hold_till_space
    call guarnicao
    
    ret

guarnicao: 
    call video
    call lightblue_background

    mov dl, 30
    mov dh, 2
    call set_position

    mov bl, 15 ;cor
    mov si, titGuarnicoes ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 8
    call set_position

    mov bl, 15 ;cor
    mov si, arrozB ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 9
    call set_position

    mov bl, 15 ;cor
    mov si, arrozI ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 10
    call set_position

    mov bl, 15 ;cor
    mov si, batataF ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 11
    call set_position

    mov bl, 15 ;cor
    mov si, macarrao ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 12
    call set_position

    mov bl, 15 ;cor
    mov si, salada ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 13
    call set_position

    mov bl, 15 ;cor
    mov si, legumes ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 14
    call set_position

    mov bl, 15 ;cor
    mov si, pureB ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 15
    call set_position

    mov bl, 15 ;cor
    mov si, pureBn ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 16
    call set_position

    mov bl, 15 ;cor
    mov si, chips ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 17
    call set_position

    mov bl, 15 ;cor
    mov si, arrozP ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 18
    call set_position

    mov bl, 15 ;cor
    mov si, farofa ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 19
    call set_position

    mov bl, 15 ;cor
    mov si, vinagrete ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 20
    call set_position

    mov bl, 15 ;cor
    mov si, batata ;nome do restaurante
    call prints

    mov dl, 18
    mov dh, 25
    call set_position

    mov bl, 15 ;cor
    mov si, msgEscGuarn ;nome do restaurante
    call prints

    mov dl, 24
    mov dh, 30
    call set_position

    mov bl, 15 ;cor
    mov si, msgEspaco2 ;nome do restaurante
    call prints

    mov si, arroz_sprite
    call print_imagens

    ; capturar a escolha
    mov di, num 
    call getchar
    push ax ;guarn 1 entra na pilha

    mov di, num 
    call getchar
    push ax ;guarn 2 entra na pilha

    mov di, num 
    call getchar
    push ax ;guarn 3 entra na pilha
    
    ;ficar esperando o espaco para mudar de tela
    call hold_till_space
    call sobremesa
    ret

sobremesa:
    call video
    call cinzaclaro_background

    mov dl, 30
    mov dh, 2
    call set_position

    mov bl, 15 ;cor
    mov si, titsobremesa ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 8
    call set_position

    mov bl, 15 ;cor
    mov si, Bolo ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 10
    call set_position

    mov bl, 15 ;cor
    mov si, BoloM ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 12
    call set_position

    mov bl, 15 ;cor
    mov si, PetitG ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 14
    call set_position

    mov bl, 15 ;cor
    mov si, pudim ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 16
    call set_position

    mov bl, 15 ;cor
    mov si, brigadeiro ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 18
    call set_position

    mov bl, 15 ;cor
    mov si, sorvete ;nome do restaurante
    call prints

    mov dl, 18
    mov dh, 25
    call set_position

    mov bl, 15 ;cor
    mov si, msgNadaSobremesa ;nome do restaurante
    call prints

    mov dl, 24
    mov dh, 30
    call set_position

    mov bl, 15 ;cor
    mov si, msgEspaco2 ;nome do restaurante
    call prints

    mov si, sorvete_sprite
    call print_imagens

    ; capturar a escolha
    mov di, num
    call getchar
    call Csobremesa
    push ax ;proteina entra na pilha
    
    ;ficar esperando o espaco para mudar  de tela
    call hold_till_space
    call bebida

    ret

final:
    call video
    call margenta_background

    mov dl, 23
    mov dh, 2
    call set_position

    mov bl, 15 ;cor
    mov si, introfim ;nome do restaurante
    call prints

    mov dl, 33
    mov dh, 5
    call set_position

    mov dl, 25
    mov dh, 13
    call set_position

    mov bl, 14 ;cor
    mov si, total ;nome do restaurante
    call prints

    ;printando o valor
    ;sub cx, 1090
    mov ax, cx
    mov di, string
    call tostring
    mov si, string
    mov dl, 51
    mov dh, 13
    call set_position
    mov bl, 14 ;cor
    call prints

    mov dl, 11
    mov dh, 20
    call set_position

    mov bl, 15 ;cor
    mov si, novoped ;nome do restaurante
    call prints

    mov dl, 28
    mov dh, 22
    call set_position

    mov bl, 15
    mov si, msgEncerra
    call prints

    mov si, frase
    call print_frase

    mov di, num
    call getchar 
    cmp al, 'F'
    je .terminou

    cmp al, 'f'
    je .terminou

    ;ficar esperando o espaco para mudar  de tela
    call hold_till_space
    call inicio
    ;aqui chama a funcao para analisar o que foi escolhido e depois chama a funcao para mostrar na tela o pedido feito
        .terminou:
            call clear
            call video
            call preto_background
            call done
            ret
    
bebida:
    call video 
    call ciano_background

    mov dl, 32
    mov dh, 2
    call set_position

    mov bl, 15 ;cor
    mov si, titbebidas ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 8
    call set_position

    mov bl, 15 ;cor
    mov si, coca ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 10
    call set_position

    mov bl, 15 ;cor
    mov si, guarana ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 12
    call set_position

    mov bl, 15 ;cor
    mov si, suco ;nome do restaurante
    call prints

    mov dl, 1
    mov dh, 14
    call set_position

    mov bl, 15 ;cor
    mov si, agua ;nome do restaurante
    call prints

    mov dl, 20
    mov dh, 25
    call set_position

    mov bl, 15 ;cor
    mov si, msgNadaBebida ;nome do restaurante
    call prints

    mov dl, 24
    mov dh, 30
    call set_position

    mov bl, 15 ;cor
    mov si, msgEspaco2 ;nome do restaurante
    call Cbebida 
    call prints

    mov si, suco_sprite
    call print_imagens

    ; capturar a escolha
    mov di, num
    call getchar
    call Cbebida
    push ax ;entra na pilha

    ;ficar esperando o espaco para mudar  de tela
    call hold_till_space
    call final
    ;aqui chama a funcao para analisar o que foi escolhido e depois chama a funcao para mostrar na tela o pedido feito
    ret


start:
    xor ax, ax
    mov ds, ax
    mov es, ax

    call intela
    call inicio
    ;call proteina

done:
    jmp $
