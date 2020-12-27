## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function creates a list containing set (set a matrix),
##get (call the matrix), setinverse (set the inverse of matrix)
##and getinverse (call the inverse of matrix) function 

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


## Write a short comment describing this function
## This function takes makeCacheMatrix(matrix) as an input
##and return inverse of the matrix (compute if  inverse of matrix is not cached
##or else restore from cache)

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
