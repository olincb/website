#

Wacket is my final project for CMSC430: Compilers. It is a collaboration between myself, [Stefan Heller](https://stheller.com/), and Peter Geertsema.
Currently in progress, this project is a compiler for a lisp-inspired language, that targets [WebAssembly](https://webassembly.org/).
The project's code is on GitHub [here](https://github.com/stefanhts/wacket), but the repo will remain private until we obtain permission from our professor to make it public.
It is implemented mainly in [Racket](https://racket-lang.org/), with a runtime system written in Javascript.

An unexpected challenge of this project was building an adequate understanding of WebAssembly, whose docs are thorough and mathematically rigourous... _almost_ to a fault.
Then, we had to build an abstraction (an Abstract Syntax Tree (AST), in our case) of WebAssembly to build well-formed WebAssembly programs in our compiler.
The pretty printer, which takes the AST representation to a readable text format, was next, and was probably the most time consuming part of the project.
From there, we started from the most absolute building blocks, and began building up and adding functionality to our language.
The first revision of Wacket involved only integers... and nothing else.
Currently, we have three types (integers, booleans, and characters), logical control flow, and an assortment of primitive operators (+, -, etc.).
By the time we're done, we plan to implement local variables, I/O, user defined functions, object storage on a heap, strings, tail recursion, and lambdas.
