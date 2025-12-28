# Awesome Formal Methods

## Languages and Proof Assistants

+ [Rocq](https://rocq-prover.org/) - The Rocq Prover was formerly known as the Coq Proof Assistant. 
    + [Coq](https://coq.inria.fr/) - An interactive theorem prover for formal verification. This is the old name of Rocq.
+ [Isabelle](https://isabelle.in.tum.de/) - A generic proof assistant.
+ [Agda](https://agda.readthedocs.io/) - A dependently typed functional programming language and proof assistant.
    + [PLFA](https://plfa.github.io/) - Programming Language Foundations in Agda, a textbook on programming language theory using Agda.
    + [Repo](https://github.com/agda/agda) - The official Agda repository.
+ [Dafny](https://dafny.org/) - An imperative programming language with built-in specification constructs.
+ [Idris](https://www.idris-lang.org/) - A general-purpose functional programming language with dependent types.
+ [F*](https://fstar-lang.org/) - A functional programming language aimed at program verification.
+ [Lean](https://lean-lang.org/) - A theorem prover and programming language designed for formalizing mathematics.
+ [Eiffel](https://www.eiffel.org/) - An object-oriented programming language with built-in support for design by contract.
+ [ADA](https://www.adacore.com/) - A structured, statically typed, imperative, and object-oriented high-level computer programming language, extended from Pascal and other languages.
    + [SPARK](https://www.adacore.com/sparkpro) - A subset of Ada designed for high-integrity and safety-critical systems. Not to be confused with the Spark big data processing engine.

## Solvers and Model Checkers

+ [Alloy](https://alloytools.org/) - A lightweight modeling language for software design.
+ [TLA+](https://lamport.org/tla/tla.html) - A formal specification language for concurrent and distributed systems.
+ [SMT](https://en.wikipedia.org/wiki/Satisfiability_modulo_theories) Solvers:
    + [SMT-LIB](http://smt-lib.org/) - The standard input language for SMT solvers.
    + [Z3](https://www.microsoft.com/en-us/research/project/z3-3/) - A high-performance theorem prover developed by Microsoft Research.
         + [Programming Z3](https://theory.stanford.edu/~nikolaj/programmingz3.html) - Programming Z3, a guide to using Z3 (Python).
    + [CVC5](https://cvc5.github.io/) - An efficient open-source SMT solver for various theories.
+ [Alloy Analyzer](https://alloytools.org/) - A tool for analyzing Alloy models.
+ [SPIN](http://spinroot.com/spin/whatispin.html) - A popular model checker for verifying concurrent systems.
+ [NuSMV](https://nusmv.fbk.eu/) - A symbolic model checker for finite state systems.
+ [TLA+ Toolbox](https://lamport.org/tla/toolbox.html) - An integrated development environment for TLA+ specifications.

## Methods

- [B Method](https://en.wikipedia.org/wiki/B-Method) - A formal method for software development and system design, based on refinement and proof.
    - [Atelier B](https://www.atelierb.eu/) - An industrial tool for the B-Method, supporting formal specification, design, and code generation.
    - [ProB](https://prob.hhu.de/) - An animator, constraint solver, and model checker for the B-Method and Event-B.
    - [Event-B](http://www.event-b.org/) - A formal method extending the B-Method, designed for modeling and reasoning about complex systems.

## Big Tech Companies Using Formal Methods

- [Amazon Web Services (AWS)](https://www.amazon.science/blog/how-aws-uses-formal-methods) - AWS uses TLA+ and other formal methods to verify the correctness of critical systems like S3, DynamoDB, and EC2.
- [Microsoft](https://www.microsoft.com/en-us/research/project/z3-3/) - Microsoft Research developed Z3 SMT solver and uses formal methods in Windows kernel verification, Azure services, and cloud infrastructure.
- [Intel](https://www.intel.com/content/www/us/en/research/overview.html) - Intel uses formal verification extensively for CPU design validation and microprocessor verification.
- [Meta (Facebook)](https://engineering.fb.com/2019/04/08/developer-tools/infer/) - Meta developed Infer, a static analysis tool based on formal methods, used to find bugs in code before production.
- [Apple](https://developer.apple.com/security/) - Apple uses formal methods in security-critical components of iOS and macOS, and in the development of programming languages like Swift.

## Books and Tutorials

+ [The Essence of Software](https://essenceofsoftware.com/) - A book by Daniel Jackson on software design using formal methods.
+ [Software Foundations](https://softwarefoundations.cis.upenn.edu/) - A series of textbooks on formal verification using Coq.
+ [Certified Programming with Dependent Types](http://adam.chlipala.net/cpdt/) - A book by Adam Chlipala on programming with dependent types using Coq.
+ [Software Abstractions](https://mitpress.mit.edu/books/software-abstractions) - A book by Daniel Jackson on software modeling and analysis using Alloy.
+ [Pratical Alloy](https://practicalalloy.github.io/) - A practical guide to using Alloy for software modeling.