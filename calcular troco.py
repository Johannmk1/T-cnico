def troco():
    dinheroapagar = float(input("Dinheiro a Pagar: R$ "))
    dinheirorecebido = float(input("Dinheiro Recebido: R$ "))
    if dinheroapagar == dinheirorecebido:
        print("O dinheiro a pagar é igual ao dinheiro recebido.")
    elif dinheirorecebido < dinheroapagar:
        print("ERRO!!!\n O valor recebido é inferior ao valor a pagar")
    else:
        troco = dinheirorecebido - dinheroapagar
        trocoarrendando = round(troco, 2)
        total = trocoarrendando
        céd =100
        totcéd = 0
        while True:
            if total>= céd:
                total -= céd
                totcéd += 1
            else:
                if totcéd > 0:
                    print(f'Total de {totcéd} cédulas de R${céd}')
                elif céd == 100:
                    céd =50
                elif céd == 50:
                    céd = 20
                elif céd == 20:
                    céd = 10
                elif céd == 10:
                    céd = 5
                elif céd == 5:
                    céd = 2
                elif céd == 2:
                    céd = 1
                elif céd == 1:
                    céd = 0.50
                elif céd == 0.50:
                    céd = 0.25
                elif céd == 0.25:
                    céd = 0.10
                elif céd == 0.10:
                    céd = 0.05
                elif céd == 0.05:
                    print('Sem moedas de 0.01')
                    break
                totcéd = 0
                if total == 0:
                    break

def sair ():
    print("***********************\n")
    print("\tFim Do Programa")
    print("***********************\n")
    quit()

def menu():
    print("\n\t\t*********************************************************"
          "\n\t\t\t\t\t\t\t\tMenu Principal"
          "\n\t\t*********************************************************")
    escolha = input(""" 
                A: Calcular o Troco
                B: Sair
           \n\t\t*********************************************************
    """)
    escolha = escolha.lower()
    if escolha == 'a':
        troco()
        menu()
    elif escolha == 'b':
        sair()
    else:
        print("Erro na Tecla!")
        print("Por favor, escolha novamente.")
        menu()
menu()