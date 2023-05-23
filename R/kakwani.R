kakwani <- function(var1,var2,weights=1){
  
  kakwani<-sum(((cumsum(var1*(weights/sum(weights))))/sum(var1)) - 
        ((cumsum(var2*(weights/sum(weights))))/sum(var2)))/sum((weights/sum(weights)))
  
  return(kakwani)
}