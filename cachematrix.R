## Below are two functions that are used to create a special object that stores a matrix 
## and compute the inverse.

##creates a special "vector", which is really a list containing a function to
##set the original matrix
##get the original matrix
##set the inverse of a Matrix
##get the inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## The following function computes the inverse of a matrix
##If the inverse has already been computed, it gets the inverse from the cache 

cacheSolve <- function(x, ...) {
i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}


