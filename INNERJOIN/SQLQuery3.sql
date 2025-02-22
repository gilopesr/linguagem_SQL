-- 03 - Calcular a nota(menor, media e maior), a
--frequ�ncia(menor, media e maior) por c�digo e nome da disciplna.

SELECT DCP.COD_DISC, DCP.NOME_DISC,

MIN(HST.NOTA) AS MENOR_NOTA,
FORMAT(AVG(HST.NOTA),'N2') AS MEDIA_NOTA,
MAX(HST.NOTA) AS MAIOR_NOTA,
MIN(HST.FREQUENCIA) AS MENOR_FREQ,
AVG(HST.FREQUENCIA) AS MEDIA_FREQ,
MAX(HST.FREQUENCIA) AS MAIOR_FREQ

FROM TURMA TRM 

INNER JOIN ALUNO ALN ON (TRM.COD_MATRICULA = ALN.COD_MATRICULA)
INNER JOIN DISCIPLINA DCP ON (TRM.COD_DISC = DCP.COD_DISC)
INNER JOIN PROFESSOR PRF ON (TRM.COD_PROF = PRF.COD_PROF)
INNER JOIN HISTORICO HST ON (TRM.ANO = HST.ANO AND
TRM.COD_MATRICULA = HST.COD_MATRICULA AND
TRM.COD_DISC = HST.COD_DISC)

GROUP BY DCP.COD_DISC, DCP.NOME_DISC