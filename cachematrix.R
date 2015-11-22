  # makeCacheMatrix function creates a special matrix object, and then cacheSolve  
  # calculates the inverse of the matrix. 
  # If the matrix inverse is already calculated, it will find it in the cache and return
  
  makeCacheMatrix <- function(x = matrix()) {
    
    inverse_x <- NULL 
    set <- function(y) { 
      x <<- y 
      inverse_x <<- NULL 
    } 
    get <- function() x 
    setinverse<- function(inverse) inverse_x <<-inverse 
    getinverse <- function() inverse_x 
    list(set = set, get = get, 
         setinverse = setinverse, 
         getinverse = getinverse) 
    
  }


# The cacheSolve function returns the inverse of a matrix created with the makeCacheMatrix function. 
# If the cached inverse is available, cacheSolve retrieves it else it calculates and returns

cacheSolve <- function(x, ...) {
}
inverse_x <- x$getinverse() 

if (!is.null(inverse_x)) { 
  message("cached inverse matrix detected") 
  return(inverse_x) 
  } else { 
  inverse_x <- solve(x$get()) 
  x$setinverse(inverse_x) 
  return(inverse_x) 
  }


}
