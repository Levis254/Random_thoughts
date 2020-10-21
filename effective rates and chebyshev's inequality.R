# calculating effective rates from nominal rates

effective_rates=function(nominal,period){
  effective_rate=((1+(nominal/period))^period)-1
  return(effective_rate)
}
# example
effective_rates(0.0383,2)

#Chebyshev's Inequality
Chebyshev_min_prob=function(mean,standard_dev,lower_limit,upper_limit){
  
  h=((upper_limit-lower_limit)/(2*standard_dev))
  if (h>=1){
    prob=1-(1/(h^2))
    return(prob)}
  else{
    return(0)}
  
}
#this is a simple formula but there is aspects such as when the standard deviation is negative
# example
Chebyshev_min_prob(60,4,50,70)


