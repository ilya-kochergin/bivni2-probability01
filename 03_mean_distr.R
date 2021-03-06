# distribution of  sample mean ( normal  population ) 
nosim <- 10000
n=160
rnd_norm_samples<-  matrix(data=rnorm(nosim*n),ncol = n, byrow = T)
population_mean <- mean(rnd_norm_samples)
population_mean 
population_sd <- sd(rnd_norm_samples) 
population_sd 
rnd_norm_samples_means <-  apply(X = rnd_norm_samples,1 ,FUN = mean)
# View(rnd_norm_samples_means)
sample_mean <- mean(rnd_norm_samples_means)
sample_mean 
sample_mean_sd <- sd(rnd_norm_samples_means)
sample_mean_sd 
population_sd/sqrt(n)

ggplot(data.frame(x=rnd_norm_samples_means),aes(x)) +
  stat_function(fun=dnorm,args=list(mean=population_mean,sd=population_sd/sqrt(n)),col="red",size=2)+
  geom_histogram(aes(y=..density..),fill="green",alpha=0.3,col="green")


# distribution of  sample mean ( exponential  population ) 
nosim <- 10000
n=50
rnd_exp_samples<-  matrix(data=rexp(nosim*n),ncol = n, byrow = T)
population_mean <- mean(rnd_exp_samples)
population_mean 
population_sd <- sd(rnd_exp_samples) 
population_sd 
rnd_exp_samples_means <-  apply(X = rnd_exp_samples,1 ,FUN = mean)
# View(rnd_exp_samples_means)
sample_mean <- mean(rnd_exp_samples_means)
sample_mean 
sample_mean_sd <- sd(rnd_exp_samples_means)
sample_mean_sd 
population_sd/sqrt(n)

ggplot(data.frame(x=rnd_exp_samples_means),aes(x)) +
  stat_function(fun=dnorm,args=list(mean=population_mean,sd=population_sd/sqrt(n)),col="red",size=2)+
  geom_histogram(aes(y=..density..),fill="green",alpha=0.3,col="green")

