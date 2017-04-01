"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
         if num_int <= 1:
           return False
         else:
            for divisor in range (2,num_int):
                if num_int % divisor == 0:
                   return False
            return True
