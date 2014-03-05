# Implementación de grafos en Python.
# Usando diccionarios como lista de adyacencia.
# Implementación tomada de: http://interactivepython.org/courselib/static/pythonds/Graphs/graphintro.html

class Vertex:
    def __init__(self,key):
        self.id = key
        self.connectedTo = {}

    def addNeighbor(self,nbr,weight=0):
        """ Añade una adyacencia. """
        self.connectedTo[nbr] = weight

    def __str__(self):
        return str(self.id) + ' connectedTo: ' + str([x.id for x in self.connectedTo])

    def getConnections(self):
        """ Devuelve los vértices adyacentes a él. """
        return self.connectedTo.keys()

    def getId(self):
        """ Devuelve contenido del vértice. """
        return self.id

    def getWeight(self,nbr):
        """ Devuelve peso de la arista. """
        return self.connectedTo[nbr]
