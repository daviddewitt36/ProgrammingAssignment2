## Put comments here that give an overall description of what your
## functions do

## The following 2 functions calculate the inverse of a matrix, if needed,
## and then stores the inserve matrix.

## Write a short comment describing this function

## The below function creates a special "matrix" object
## that can cache its inverse.

##makeCacheMatrix <- function(x = matrix()) {

##}


makeCacheMatrix <- function(m=matrix()) {
        i <- NULL
        set <- function(y) {
                m <<- y
                i <<- NULL
        }
        get <- function() m
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function

## The below function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix. If the inverse has already been calculated
## (and the matrix has not changed), then the cacheSolve will retrieve
## the inverse from the cache.

## cacheSolve <- function(x, ...) {}
        ## Return a matrix that is the inverse of 'x'


cacheSolve <- function(m, ...) {
        i <- m$getinverse()
        if(!is.null(i)) {
        message( "getting cached data" )
        return(i)
         }
        m$setinverse( solve( m$get(),...))
}

