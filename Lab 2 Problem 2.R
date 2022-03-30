# Problem Statement:

# A ball is thrown straight up, from 3 m above the ground, 
# with a velocity of 14 m/s. When does it hit the ground? 
# Ignore air resistance,  and consider t is time in seconds where Gravity pulls it down, 
# changing its position by about 5 m per second squared. 
# WAP in R to test the result of the above problem statement, 
# possibly with t=-0.2 and t= 3 , the ball hits the ground. 


# Initilization of Variable
v = 14
g = 10
h0 = 3


t = seq.int(-10,10,.5)
# Formation of Quadratic Equation
h = -(g * t^2)/ 2 + v * t + h0

# Ploting of the Equation
plot(t,h)
abline(0,0)

# Solving the Quadratic Equation
a = -g/2
b = v
c = h0
D = b^2 - 4*a*c

if(D > 0){
  x1 = (-b + sqrt(D)) / (2*a)
  x2 = (-b - sqrt(D)) / (2*a)
  sprintf('Solution to the Problem: %s , %s', x1, x2)
}else if(D == 0){
  X = (-b + sqrt(D)) / (2*a)
  sprintf('Solution to the Problem: %s ', X)
}else{
  print('The given problem has no solution')
}


# Checking the Values at given roots
t1 = -0.2
h1 = -(g * t1^2)/ 2 + v * t1 + h0
t2 = 3
h2 = -(g * t2^2)/ 2 + v * t2 + h0

sprintf("The height of the ball at t=-0.2 and t= 3 second respectively is: h=%s, h=%s",h1,h2)













