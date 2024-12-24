##soln 1 using normal for

sum <- 0
for(i in 1:999){
	if(i %% 3 == 0 || i %% 5 ==0){
		sum<- sum+i
	}
}
print(sum)




##soln 2 using vectors
sum <- sum((1:999)[(1:999) %% 3 == 0 | (1:999) %% 5 == 0])
print(sum)

