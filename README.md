# c442

[![Build Status](https://travis-ci.org/lkadian/c442.svg?branch=master)](https://travis-ci.org/lkadian/c442)

A compiler for a simple language with features like classes, inheritance, functions, recursion, integer types, arrays, console i/o.

## Implementation

Everything was implemented from scratch as part of a project for a compiler design course.

| Phase             | Description                                                                                                                                                                          |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Lexing            | Converts the source file's character stream into a sequence of tokens, using the "hand-written" approach.                                                                            |
| Parsing           | Implementation of an LL(1) parser generator which loads the grammar found in `conf` and creates a parsing table. The token stream is then parsed using this table, producing an AST. |
| Semantic analysis | Several checks for semantic errors/warnings like undefined variables, multiple declarations, circular dependencies, etc. as well as type checking.                                   |
| Code generation   | Generation of "moon" assembly code, which is to be executed by the Moon processor (virtual machine).                                                                                 |
## Example program

```
fib(integer n) : integer
  do
    if (n <= 1)
    then
      return (n);
    else
      return (fib(n - 1) + fib(n - 2));
    ;
  end

main
  local
    integer x;
  do
    read(x);
    write(fib(x));
  end
```

## Usage

```
c442 [options] file...

-e, --exe   Execute the generated code after compilation.
-h, --help  Display this information.
```

## Building

In the project root:
```
mkdir build
cd build
cmake ..
```

By now Makefiles should be created. Then, to build executables and do all the linking:
```
make
```

## Running the Executables

To run the compiler:
```
./c442 [options] file...
```

To run the tests:
```
./run_tests
```

To run moon code:
```
./moon file...
```

For example files see `test/fixtures`
