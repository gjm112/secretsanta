#Secret santa function goes here

#Input is a character vector of names

secretsanta <- function(names, sean = FALSE){

  #The "sean" method to always create a cycle
  if (sean){
  temp <- sample(names)
  out <- data.frame(secretsanta = temp,
                    recipient = c(temp[-1], temp[1]))
  return(out)
  }

  if (!sean){
    recipient <- names

    while(any(recipient == names)){
      recipient <- sample(names)
    }

    out <- data.frame(secretsanta = names, recipient = recipient)
    return(out)
  }


}



