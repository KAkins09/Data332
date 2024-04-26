

get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

score <- function(symbols) {
    prize}
  





get_symbols()

get_symbols()

get_symbols()

a <- 3.14

dec <- a - trunc(a)
dec

if (dec >= 0.5) {
  a <- trunc(a) + 1 } else {
    a <- trunc(a)
  }
a
  
a <- 1
b <- 1

if (a > b) {
  print("A wins!")
} else if (a < b) {
  print("B wins!")
} else {
  print("Tie.")
}

symbols <- c("7", "7", "7")
symbols <- c("B", "BB", "BBB")
symbols <- c("C", "DD", "0")

symbols

symbols[1] == symbols[2] & symbols[2] == symbols[3]

symbols[1] == symbols[2] & symbols[1] == symbols[3]

all(symbols == symbols[1])

length(unique(symbols) == 1)

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]


symbols <- c("B", "BBB", "BB")


symbols[1] == "B" | symbols[1] == "BB" | symbols[1] == "BBB" &
  symbols[2] == "B" | symbols[2] == "BB" | symbols[2] == "BBB" &
  symbols[3] == "B" | symbols[3] == "BB" | symbols[3] == "BBB"

all(symbols %in% c("B", "BB", "BBB"))


same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

if (same) {
  symbol <- symbols[1]
  if (symbol == "DD") {
    prize <- 800
  } else if (symbol == "7") {
    prize <- 80
  } else if (symbol == "BBB") {
    prize <- 40
  } else if (symbol == "BB") {
    prize <- 5
  } else if (symbol == "B") {
    prize <- 10
  } else if (symbol == "C") {
    prize <- 10
  } else if (symbol == "0") {
    prize <- 0}
}

payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
             "B" = 10, "C" = 10, "0" = 0)
payouts

payouts["DD"]

payouts["B"]

unname(payouts["DD"])

symbols <- c("7", "7", "7")
symbols[1]

payouts[symbols[1]]

symbols <- c("C", "C", "C")
payouts[symbols[1]]

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")


symbols <- c("C", "DD", "C")

symbols == "C"

sum(symbols == "C")

sum(symbols == "DD")

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

if (cherries == 2) {
  prize <- 5
} else if (cherries == 1) {
  prize <- 2
} else {}
prize <- 0

  
c(0, 2, 5)

cherries + 1

c(0, 2, 5)[cherries + 1]

cherries + 1


c(0, 2, 5)[cherries + 1]

cherries + 1

c(0, 2, 5)[cherries + 1]

same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

prize * 1 

score <- function (symbols) {
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")
  # get prize
  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else {
    cherries <- sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1]
  }
  # adjust for diamonds
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds
}

play <- function() {
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}

play()



one_play <- play()
one_play

attributes(one_play)

attr(one_play, "symbols") <- c("B", "0", "B")
attributes(one_play)

attr(one_play, "symbols")

one_play

one_play + 1


play <- function() {
  symbols <- get_symbols()
  prize <- score(symbols)
  attr(prize, "symbols") <- symbols
  prize
}

play()

two_play <- play()
two_play

play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols)
}
three_play <- play()
three_play






slot_display <- function(prize){
  symbols <- attr(prize, "symbols")
  symbols <- paste(symbols, collapse = " ")
  string <- paste(symbols, prize, sep = "\n$")
  cat(string)
}

slot_display(one_play)

symbols <- attr(one_play, "symbols")
symbols

symbols <- paste(symbols, collapse = " ")
symbols

prize <- one_play
string <- paste(symbols, prize, sep = "\n$")
string

cat(string)


slot_display(play())
slot_display(play())

print(pi)
pi

print(head(deck))

head(deck)

print(play())

play()

num <- 1000000000
print(num)

class(num) <- c("POSIXct", "POSIXt")
print(num)

print

print.POSIXct

print.factor

methods(print)

class(one_play) <- "slots"

args(print)

print.slots <- function(x, ...) {
  cat("I'm using the print.slots method")
}

print(one_play)
one_play
rm(print.slots)

now <- Sys.time()
attributes(now)

print.slots <- function(x, ...) {
  slot_display(x)
}

one_play

play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols, class = "slots")
}

class(play())

play()
play()

methods(class = "factor")

play1 <- play()
play1

play2 <- play()
play2

c(play1, play2)

play1[1]


































































