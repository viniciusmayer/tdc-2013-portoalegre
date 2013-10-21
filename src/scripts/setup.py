file = open("../db/changelog/sql/setup.sql", "w+")
for i in range(10):
    file.write("insert into pessoa (nome, cpf) values ('{}', {});\n".format("nome {}".format(i), i))

k = 0
for i in range(10):
    for j in range(10):
        k = k + 1
        file.write("insert into mensagem (texto, pessoa_id) values ('{}', (select id from pessoa where cpf = '{}'));\n".format("texto {}", j).format(k))

file.close()