## This function set and return the inverse of a matrix, and save it in cache

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL # I stablish inv variable as "inverse" with null value
  set<<-function(B){ #I set the value of the matrix as the matrix 
                     # is introduce to call makeCacheMatrix
    B<-X
    inv<<-NULL
  }
  get<-function()X #I get the function and return the value of 
                   # the matrix which call makeCacheMatrix
  #Inv is the variable for inverse
  setinverse<- function(inverse) inv<<-inverse(A) # setinverse is a function which 
                                                  # set the inverse of the matrix. 
  getinverse<- function() inv #getinverse get the function inverse of the matrix
  list(set=set, get=get, 
       setinverse=setinverse,
       getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inv<-X$setinverse() # the function search if there is 
                    # an inverse saved in cache memory
  if(!is.null(X)){ #if there is not an inverse matrix in cache 
                   # memeory then it will pop-up a message indicating 
                   # is getting cache matrix
    message("getting cache matrix")
    return(inv) #it will return the inverse matrix
  }
  dataMatrix<-X$get() #dataMatrix get the value of the function above
  inv<-inverse(dataMatrix,...) #inv will return the inveerse of the matrix
  X$setinverse(inv) 
  inv
}
        ## Return a matrix that is the inverse of 'x'. 
        
        solve<<-function(inverse) inv
}
