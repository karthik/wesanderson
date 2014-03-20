context("colors are returned correctly")

test_that("Colors work", {
	x <- wes.palette(3, "Royal1")
	expect_equal(length(x), 3)
	expect_equal(x[1], "#899DA4")
	# More tests needed
})