## Put comments here that give an overall description of what your
## functions do

# set the value of the vector
# get the value of the vector
# set the value of the mean
# get the value of the mean

makeCacheMatrix <- function(myMat = matrix()) {

          another_mat <- NULL
          set <- function(var_1){
            myMat <<- var_1
            another_mat <<- NULL
            
          }
          get  <- function() myMat
          setSolveInverse <- function(solve){
            another_mat <<- solve
          } 
          getSolveInverse <- function() {
            another_mat
            }
          list(set = set, get = get,
               setSolveInverse = setSolveInverse,
               getSolveInverse = getSolveInverse)
  
}


## below function checks if the cached data is present or not. and if it is not present it will re-calculate

cacheSolve <- function(myMat, ...) {
        ## Return a matrix that is the inverse of 'myMat'
              another_mat <- myMat$getSolveInverse()
            if(!is.null(another_mat)){
              message("getting cached data")
              return(another_mat)
            }
            data <- myMat$get()
            another_mat <- solve(data, ...)
            myMat$setSolveInverse(another_mat)
            another_mat
}
