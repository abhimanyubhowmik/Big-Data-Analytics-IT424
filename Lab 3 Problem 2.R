
# WAP in R Language to generate a Reverse Fibonacci Series.
# E.g., n1, n2, ....,3.2.1 where input is n. Test your implementation with 83,833
# and others and summerize the result to test all the logics of the program.
# Mention the limitations/demerits of your implementation, if any.   

# Checking of the Number if Fibonacci or not
check_fibo <- function(n){
  t1 = 5 * n^2 + 4
  t2 = 5 * n^2 - 4
  if (sqrt(t1) == as.integer(sqrt(t1))||sqrt(t2) == as.integer(sqrt(t2))){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

# Calculation of the Previous Fibonacci Number 
previousFibonacci <- function(n){
  a = n/((1 + sqrt(5))/2.0)
  return(round(a))
}

# Reverse Fibonacci Calculation
reverse_fibo <- function(n){
  num = n
  num_check = check_fibo(n)
  if (num_check == TRUE){
    pre_num = previousFibonacci(num)
    fibo_series = c(num,pre_num)
    while(pre_num > 0){
      fibo_num = num - pre_num
      num = pre_num
      pre_num = fibo_num
      fibo_series = c(fibo_series,fibo_num)
    }
    return(fibo_series)
  }else{
    print('Given Number is not Fibonacci Number')
    return(NULL)
  }
}

# Checking Using Different Inputs
reverse_fibo(8)
reverse_fibo(83)
reverse_fibo(833)
