​"""
clase que suma una lista de numeros
"""


class CalculatorClass(object):
    """
    Class con la suma
    """

    def sum(self, num_list):
        """
        Metodo para sumar
        """
        total = 0
        for number in num_list:
            total += number
        return total​
