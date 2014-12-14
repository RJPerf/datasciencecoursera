makeVector <- function(x = numeric()) {
  m <- NULL
  x_inv <- solve(x)
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  
  list(set = set, get = get)
}
