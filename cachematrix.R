## Put comments here that give an overall description of what your
## functions do

##This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inverseMatrix <- NULL
        set <- function(y) {
                x <<- y
                inverseMatrix <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inverseMatrix <<- inverse
        getinv <- function() inverseMatrix
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                inverseMatrix <- x$getinv()
        if(!is.null(inverseMatrix)) {
                message("getting cached data")
                return(inverseMatrix)
        }
        data <- x$getMatrix()
        inverseMatrix <- solve(data, ...)
        x$setinv(inverseMatrix)
        inverseMatrix

}
