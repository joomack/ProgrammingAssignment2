## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix setup a special matrix object that will allow the cacheSolve to reference to without recalculating the inverse

makeCacheMatrix <- function(x = matrix()) {
	    m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## The cacheSolve function calculates the inverse of the matrix if the inverse of the matrix has not been calculated before

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinve
}
