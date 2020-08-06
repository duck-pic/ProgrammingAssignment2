makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
  ###This function will create matrix object, storing inverse.
=======
>>>>>>> 2f9415f7b619623686b94d73414db67e3596b3cb
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
cacheSolve <- function(x, ...) {
<<<<<<< HEAD
  ###This function gets cached inverse or calculates it anew, if there are no previously calculated inverse matrix.
=======
>>>>>>> 2f9415f7b619623686b94d73414db67e3596b3cb
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}