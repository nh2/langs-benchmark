all: python c c++ java js coffee cs go d pascal perl ruby scala
.PHONY: all

.PHONY: python
python: python/matmult.py
	time python python/matmult.py

.PHONY: python3
python3: python3/matmult.py
	time python3 python3/matmult.py

.PHONY: c
c: c/matmult.c
	gcc -O3 -Wall -static -o matmult c/matmult.c && time ./matmult

.PHONY: c++
c++: cpp/matmult.cpp
	g++ -O3 -Wall -static -o matmult cpp/matmult.cpp && time ./matmult

.PHONY: java
java: java/matmult.java
	javac java/matmult.java && time java -cp java/. matmult

.PHONY: js
js: javascript/matmult.js
	time node javascript/matmult.js

.PHONY: coffee
coffee: coffeescript/matmult.coffee
	time coffee coffeescript/matmult.coffee

.PHONY: cs
cs: csharp/matmult.cs
	mcs csharp/matmult.cs && time mono csharp/matmult.exe

.PHONY: go
go: go/matmult.go
	time go run go/matmult.go

.PHONY: d
d: d/matmult.d
	gdc -o matmult -O3 d/matmult.d && time ./matmult

.PHONY: pascal
pascal: pascal/matmult.pas
	fpc -optimize pascal/matmult.pas && time ./matmult

.PHONY: perl
perl: perl/matmult.pl
	time perl perl/matmult.pl

.PHONY: ruby
ruby: ruby/matmult.ruby
	time ruby ruby/matmult.ruby

.PHONY: scala
scala: scala/matmult.scala
	time scala scala/matmult.scala

.PHONY: clean
clean:
	rm -rf *.class *.o *.out
