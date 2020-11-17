## Put comments here that give an overall description of what your
## functions do

 
## makes a list of function to and stores caches
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  getm <- function() x
  setinv <- function(inv1) inv <<- inv1
  getinv <- function() inv
  list(getm = getm , setinv = setinv , getinv = getinv)
}


## Checks and returns cached value if not caches the memory and returns inverse of the matrix

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
  if ( !is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$getm()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv      ## Return a matrix that is the inverse of 'x'
}
