## This function creates a new matrix object and caches its inverse using the solve function, then accesses the cached inverse value.

## Creates the new matrix and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
 	inv <- NULL
 	set <- function(y) {
 		x <<- y
 		inv <<- NULL
 	}
 	get <- function() x
 	setsolve <- function(solve) inv <<- solve
 	getsolve <- function() inv
 	list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Retrieves the cached inverse

cacheSolve <- function(x, ...) {
    inv <- x$getsolve()
    if(!is.null(m)) {
    	message("getting cached data")
    	return(inv)
    }
    data <- x$get
    inv <- solve(data, ...)
    x$setsolve(inv)
    inv
}
