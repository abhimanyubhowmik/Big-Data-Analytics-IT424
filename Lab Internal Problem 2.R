#To check whether prime or not
prime <- function(n){
  count <- 0
  num <- n-1
  for(i in  2 : num){
    if((n %% i) == 0){
      count = count + 1
    }
  }
  if(count == 0){
    return (TRUE)
  }else{
    return(FALSE)
  }
}

# Generate prime between a given range
prime_generation <- function(n1,n2){
  prime_num = c()
  for(i in seq(n1,n2)){
    p = prime(i)
    if(p == TRUE){
      prime_num = c(prime_num, i)
    }
  }
  return(prime_num)
}

# Count prime numbers between a given range
prime_count <- function(n1,n2){
  count_prime = 0
  for(i in seq(n1,n2)){
    p = prime(i)
    if(p == TRUE){
      count_prime = count_prime + 1
    }
  }
  return(count_prime)
}

print(prime_generation(5000,10000))
print(prime_count(5000,10000))