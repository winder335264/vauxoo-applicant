"""
Clase en python que suma una lista de numeros
"""


class CalculatorClass(object):

    def sum(self, num_list):

        suma = 0
        for number in num_list:
           suma += number
        return suma
