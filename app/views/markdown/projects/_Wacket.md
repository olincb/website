#

Wacket began as a final project for CMSC430: Compilers. It is a collaboration between myself, [Stefan Heller](https://stheller.com/), and Peter Geertsema.
This project is a compiler for a lisp-inspired language, that targets [WebAssembly](https://webassembly.org/).
The project's code is on GitHub [here](https://github.com/stefanhts/wacket). It is implemented mainly in [Racket](https://racket-lang.org/), with a runtime system written in Javascript.

A somewhat expected, but worse than expected, challenge of this project was building an adequate understanding of WebAssembly, whose docs are thorough and mathematically rigourous... _almost_ to a fault.
Then, we had to build an abstraction (an Abstract Syntax Tree (AST), in our case) of WebAssembly to build well-formed WebAssembly programs in our compiler.
The pretty printer, which takes the AST representation to a readable text format, was next, and was probably the most time consuming individual part of the project.

From there, we started from the most absolute building blocks, and began building up and adding functionality to our language.
The first revision of Wacket involved only integers... and nothing else.
One at a time, we added very basic things like booleans, characters, logical control flow, an assortment of primitive operators (+, -, etc.), and local variables.
Continuing with more complex features, we added strings, I/O, object storage on a heap (cons cells for lists, boxes for pointers), and functions in both regular and lambda form.

Over summer 2022, we had our first external PR to the project, with someone adding the modulo (%) operator.
In the future, I would love to rework the runtime system to use [WASI](https://wasi.dev/) instead of JavaScript, so programs can execute on the command line instead of in the browser. Additionally, I would love to begin work on a standard library to make the language slightly more usable, even if I still don't expect anyone to actually use it.
