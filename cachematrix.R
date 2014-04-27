#In the file Test_DoloresZurdo, I have uploaded,
#Test I accomplish for this Peer Assessment.


#This function return a list of functions:set, get, setinverse, getinverse
#inv is "inverse" variable.
#makeCacheMatrix search if we have set a previous value.
#If we have not set a value, getinverse return "null".

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL # first time inverse value is null
  set<-function(B){ 
    x<<-B #I set the matrix introduced by user.
    inv<<-NULL #inverse value is null
  }
  get<-function()x 
  setinverse<- function(inverse) {inv<<-inverse 
                                  
  } 
  getinverse<- function() inv 
  #makeCacheMatrix return the following list
  list(set=set, get=get, 
       setinverse=setinverse,
       getinverse=getinverse)
  
}


#This function use "solve" to return the inverse of a matrix
cacheSolve <- function(y, ...) {
  inv <- y$getinverse() # the function search if there is 
  # an inverse saved in cache memory
  if(!is.null(inv)) { #if there is not an inverse matrix in cache 
    # memeory then it will pop-up a message indicating 
    # is getting cache matrix
    message("getting cache matrix")
    return(inv) #it will return the inverse matrix
  }
  dataMatrix<-y$get() #dataMatrix get the value of the function above
  inv <- solve(dataMatrix) #solve is used to obtain the inverse matrix
  y$setinverse(inv) 
  return(inv) #cacheSolve return the inverse matrix
}
