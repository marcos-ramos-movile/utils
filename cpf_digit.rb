# Cria func getcpf que recebe como parametro 9 digitos (ou um array) do cpf 
def getcpf (cpf)
   cpf.each do |novo|
        soma = 0 # zerando variaveis de soma para cada iteração
        somab = 0
#       Digito 1
        9.times do |x|
                soma = soma + ((x+1) * novo[x].to_i)
        end

#       Digito 2, aqui usarei na conta o primeiro digito posteriormente
        8.times do |y|
                somab = somab + ((y+1) * novo[y+1].to_i)
        end

        res1 = (soma % 11)% 10
        res2 = (((res1 * 9) + somab) % 11) % 10 # incluindo 10° digito
        puts "#{novo}#{res1}#{res2}"

   end
end
