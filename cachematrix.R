## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverseM <- NULL
  set <- function(y) {
    x <<- y
    inverseM <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) inverseM <<- inv
  getinverse <- function() inverseM
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseM <- x$getinverse()
  if(!is.null(inverseM)) {
    message("getting cached data")
    return(inverseM)
  }
  matr <- x$get()
  inverseM <- solve(matr, ...)
  x$setinverse(inverseM)
  inverseM
}
