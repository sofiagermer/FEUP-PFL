associacao(1, 'integer overflow').
associacao(1, 'divisao por zero').
associacao(1, 'id desconhecido').
traduz(CODIGO, SIGNIFICADO) :- associacao(CODIGO, SIGNIFICADO).