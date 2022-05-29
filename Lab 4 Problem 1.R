df <- read.csv('https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv')

count_str <- function(df){
  count = 0
  for (i in df){
    for (j in i){
      if (typeof(j) =="character"){
        if(nchar(j) > 0){
          count = count + 1
        }
    }

    }
  } 
  return(count)
}

count_str(df)

count = 0
for (i in df$Cabin){

  if(nchar(i) > 0){
    count = count + 1
  }
}

count
