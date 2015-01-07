all:
	coffee -c -b js/**/*.coffee js/*.coffee

watch:
	coffee -c -b -w js/**/*.coffee js/*.coffee
