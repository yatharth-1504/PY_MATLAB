X = [1.1,2.2,3.3,4.4,5.5]
Q = [[1.1, 1.2, 1.3],[2.1, 2.2, 3.3],[3.1, 3.2, 3.3]]
class Struct:
    def __init__(self, model, n, A, system):
        self.model = model
        self.n = n
        self.A = A
        self.system = system
    def __repr__(self): 
      return "model:% s; n:% s; A:% s; system:% s" % (self.model, self.n, self.A, self.system) 
t = Struct('"Avarami"', 4, 1.05, '"sample binary"')
f = open("mydata.dat", "w")
f.write("List\t| X | \t")
f.write(str(X))
f.write("\nString\t| S | \t")
f.write('"Authentication code for this file is XzmBqr"')
f.write("\nStruct\t| P | \t")
f.write(str({t}))
f.write("\nMatrix\t| Q | \t")
f.write(str(Q))f1 = open("mydata.dat", "r")
f1 = open("mydata.dat", "r")
print(f1.read())
