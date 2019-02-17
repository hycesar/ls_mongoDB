ECHO OFF

ECHO ::Inicializando Mongo DB em Windows, dafault path
cd "c:\Program Files\MongoDB\Server\4.0\bin"

ECHO :: Limpar qualquer db anterior
mongo < %~dp0end.js

ECHO ::Povoar
mongo localhost:27017/gdi %~dp0exemplo-05-marcas.json
mongo localhost:27017/gdi %~dp0exemplo-06-categorias.json
mongo localhost:27017/gdi %~dp0exemplo-07-produtos.json

ECHO ::Demonstrar questoes
ECHO ::q1 usando javascript
mongo  < %~dp0q1.js

ECHO ::q2, usando json
mongo localhost:27017/gdi < %~dp0q2.json

ECHO ::q3
mongo localhost:27017/gdi < %~dp0q3.json

ECHO ::q4
ECHO ::feito de 
ECHO ::duas formas diferentes
mongo localhost:27017/gdi < %~dp0q4.json

ECHO ::Fiz mais 2 questoes
ECHO ::, vai que...
ECHO :: =/

ECHO :: q5
mongo localhost:27017/gdi < %~dp0q5.json

ECHO :: q6
mongo localhost:27017/gdi < %~dp0q6.json

ECHO ::Limpar arquivos do PC
mongo < %~dp0end.js

PAUSE