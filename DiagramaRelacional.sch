ESTOQUE(Quantidade,. PrecoTotal .)

TRANSACAO(_ NumTransacao _,Hora)

OPERADOR(_NumOP_,Nome,Salario)

CLIENTE(_Nif_,Nome,{Matricula},Endereco(Cidade,Rua,CodPostal,Complemento ?))


ESTOQUE ---------- <<HAS>> ARTIGO(_ CodBarra _,Nome,Preco)

ARTIGO    ---  N --- <ADICIONA_ARTIGO> --- M --- TRANSACAO

ARTIGO    ---  N --- <DEVOLUCAO_ARTIGO> --- M --- TRANSACAO

TRANSACAO ---  1 --- <FATURA>   --- 1 --- CLIENTE

OPERADOR  ---  1 --- <TURNO> --- M --- TRANSACAO

