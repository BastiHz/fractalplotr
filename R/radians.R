# Copyright (C) 2020 Sebastian Henz
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see https://www.gnu.org/licenses/.


#' Radians
#'
#' Convert degrees to radians.
#'
#' This function just returns `degrees * pi / 180`.
#'
#' @param degrees The degrees to convert to radians.
#'
#' @return The radians equivalent to the input degrees.
#'
#' @examples radians(90)
#'
#' @export
radians <- function(degrees) {
    degrees * pi / 180
}
