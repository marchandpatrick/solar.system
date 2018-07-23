#' Returns number of planets
#'
#' @return `integer` - number of planets
#' @export
#'
#' @examples
#' solar.system::planetnumbers()
planetnumbers <- function() {
  message('There are 9 planets in The Solar System.')
  return(9)
}

#' Returns list of planets
#'
#' @return `list` - list of planet names
#' @export
#'
#' @examples
#' solar.system::planetnames()
planetnames <- function() {
  planets <- c("Mercury","Venus", "Earth", "Mars", "Jupiter","Saturn", "Uranus", "Neptune", "Pluto")
  message(planets)
  return(planets)
}
