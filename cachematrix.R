## Put comments here that give an overall description of what your
## functions do

## Making a cache matrix and setting the functions to solve the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Retrieving the cached data and inversing it

cacheSolve <- function(x, ...) {
  xI <- x$getInverse() 
  if(!is.null(xI))
    message("getting cached data")
    return(xI)
  }
  data <- x$get()  
  xI <- solve(data) 
  x$setInverse(xI)  
  xI     
}
