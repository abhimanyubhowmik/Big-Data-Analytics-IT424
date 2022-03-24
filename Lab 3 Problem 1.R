# Problem 1:

# Quadratic Equation of One Variable.

a = readline()
b = readline()
c = readline()

a = as.integer(a)
b = as.integer(b)
c = as.integer(c)

x = seq.int(-10,10,.5)
y = a*x^2 + b*x + c 

plot(x,y)
abline(0,0)

D = b^2 - 4*a*c

if(D > 0){
  x1 = (-b + sqrt(D)) / (2*a)
  x2 = (-b - sqrt(D)) / (2*a)
  sprintf('Roots of the Qudratic Equation: %s , %s', x1, x2)
}else if(D == 0){
  X = (-b + sqrt(D)) / (2*a)
  sprintf('Root of the Qudratic Equation: %s ', X)
}else{
  print('Qudratic Equation has imaginary root')
}







