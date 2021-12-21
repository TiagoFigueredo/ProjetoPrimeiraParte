table ARTIGO
(
  _ CodBarra _ int,
  Nome varchar, 
  Preco int 
)
table CLIENTE
(
  _ Nif _ int,
  Nome varchar,
  Matricula varchar,
  Endereco varchar,
  Cidade varchar,
  CodigoPostal varchar
)
table OPERADOR
(
  _ NumOP _ int,
  Nome varchar,
  Salario int
)
table TRANSACAO
(
  _ NumTransacao _ int,
  Hora datetime
)
table ESTOQUE
(
  _ CodBarra _ int --> ARTIGO.CodBarra,
  Quantidade int,
  PrecoTotal int
)



table TURNO
(    
  _ NTurno _ int,
  _ NumTransacao _ int --> TRANSACAO.NumTransacao,
  _ NumOP _ int --> OPERADOR.NumOP,
  Inicio datetime
)
table FATURA
(
  _ Nif _ int --> CLIENTE.Nif,
  _ NumTransacao _ int --> TRANSACAO.NumTransacao
)
table ADICIONA_ARTIGO
(
  _ NumTransacao _ int --> TRANSACAO.NumTransacao,
  _ CodBarra _ int --> ARTIGO.CodBarra,
  Quantidade int
)
table DEVOLUCAO_ARTIGO
(
  _ NumTransacao _ int -->TRANSACAO.NumTransacao,
  _ CodBarra _ int --> ARTIGO.CodBarra
)