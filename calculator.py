"""
Modulo suma
"""


class CalculatorClass(object):
    """
    Clase suma
    """

    def sum(self,num_list):
        """
        Metodo para sumar
        """
        suma = 0
        for number in num_list:
            suma += number
        return suma​
