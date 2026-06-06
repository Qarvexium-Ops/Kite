# Kite Programming Language v1.0.0

## Overview

Kite is a modern programming language with a focus on simplicity and expressiveness. This release includes enhanced syntax features, comprehensive error handling, and built-in GUI support.

## Features

### Core Language
- Functions and classes
- Arrays and dictionaries
- Try/catch error handling
- Logical operators: and, or, not
- Full else if support
- Module system with use statement
- 280+ built-in functions

### GUI Support
- WebView for HTML/CSS/JavaScript interfaces
- Automatic fallback to tkinter
- No external dependencies required

### Development Tools
- Interactive REPL
- Code formatter
- Test runner
- Time-travel debugger
- Project health checker

## Installation

### Automated Installation

Run the installer:

```
install.bat
```

This will:
- Copy kite.exe to %USERPROFILE%\.kite
- Install standard library and examples
- Add to PATH
- Install documentation

### Manual Installation

1. Copy kite.exe to a directory of your choice
2. Add that directory to your PATH
3. Copy stdlib and examples folders (optional)

## Quick Start

### Hello World

Create hello.kite:

```kite
print("Hello, World!")
```

Run it:

```
kite run hello.kite
```

### Using the REPL

Start the interactive shell:

```
kite repl
```

### Running Examples

```
kite run examples\01_hello_world.kite
kite run examples\02_variables.kite
kite run examples\08_webview.kite
```

## Language Basics

### Variables

```kite
let x = 10
let name = "Alice"
let active = true
```

### Functions

```kite
fn greet(name) {
    return "Hello, " + name
}

print(greet("World"))
```

### Control Flow

```kite
if x > 0 {
    print("Positive")
} else if x < 0 {
    print("Negative")
} else {
    print("Zero")
}
```

### Logical Operators

```kite
if x > 0 and y > 0 {
    print("Both positive")
}

if x == 0 or y == 0 {
    print("At least one zero")
}

if not is_empty {
    print("Not empty")
}
```

### Loops

```kite
for i in range(5) {
    print(i)
}

while x > 0 {
    print(x)
    x = x - 1
}
```

### Error Handling

```kite
try {
    let result = risky_operation()
} catch (error) {
    print("Error:", error)
}
```

### Arrays

```kite
let numbers = [1, 2, 3, 4, 5]
push(numbers, 6)
print(numbers[0])
print(len(numbers))
```

### Dictionaries

```kite
let user = {
    name: "Alice",
    age: 30,
    email: "alice@example.com"
}

print(user.name)
print(user["age"])
```

### Classes

```kite
class Person {
    fn init(name, age) {
        this.name = name
        this.age = age
    }
    
    fn greet() {
        return "Hello, I'm " + this.name
    }
}

let person = Person("Alice", 30)
print(person.greet())
```

## Built-in Functions

### Core Functions
- print, input, len, type_of, range
- str, int, float, bool
- keys, values, has_key, push, pop

### Array Functions
- map, filter, reduce, sort, reverse
- find, any, all, join

### String Functions
- upper, lower, strip, split, replace
- starts_with, ends_with, contains

### File Operations
- read_file, write_file, exists, delete_file
- list_dir, make_dir, is_file, is_dir

### HTTP Functions
- http_get, http_post, http_put, http_delete
- json_parse, json_stringify

### Utility Functions
- sleep, time, random, trace
- exit, assert, min, max, abs, round

## WebView GUI

Create desktop applications with HTML/CSS/JavaScript:

```kite
let html = "
<!DOCTYPE html>
<html>
<head>
    <title>My App</title>
</head>
<body>
    <h1>Hello from Kite</h1>
    <button onclick='test()'>Click Me</button>
    <div id='output'></div>
    
    <script>
        async function test() {
            const result = await window.kite.call_hook('greet', 'World');
            document.getElementById('output').textContent = result.result;
        }
    </script>
</body>
</html>
"

let app = webview("My App", 800, 600, html)

fn greet(name) {
    return "Hello, " + name
}

webview_hook(app, "greet", greet)
webview_show(app)
```

## Module System

### Importing Modules

```kite
use "./helper.kite"
use "../utils/math.kite"
```

### Creating Modules

File: helper.kite
```kite
fn add(a, b) {
    return a + b
}

fn multiply(a, b) {
    return a * b
}
```

File: main.kite
```kite
use "./helper.kite"

print(add(5, 3))
print(multiply(4, 7))
```

## Command Line Interface

### Available Commands

```
kite run <file>        Run a Kite program
kite repl              Start interactive shell
kite eval <code>       Evaluate code directly
kite fmt <file>        Format a Kite file
kite test              Run tests
kite doctor            Check project health
kite compile <file>    Compile to executable
```

### Options

```
--secure               Enable secure mode
--exc                  Exact mode (no typo fixing)
```

## Error Messages

Kite provides clear error messages with context:

```
Error: Division by zero
At: program.kite:5:13
  let x = 10 / 0
              ^
```

## Documentation

- README.md - This file
- LANGUAGE_REFERENCE.md - Complete language reference
- INSTALLATION.md - Installation and setup guide

## Examples

Located in the examples directory:

- 01_hello_world.kite - Basic output
- 02_variables.kite - Variable usage
- 03_functions.kite - Function definitions
- 04_control_flow.kite - If/else and loops
- 05_classes.kite - Object-oriented programming
- 06_data_structures.kite - Arrays and dictionaries
- 07_file_operations.kite - File I/O
- 08_webview.kite - GUI application
- 09_easter_egg.kite - Special features

## Troubleshooting

### Command not found

After installation, close and reopen your terminal to refresh the PATH.

### WebView not working

WebView requires Windows 10/11 with Edge browser. If unavailable, Kite automatically falls back to tkinter.

### Permission denied

Run the installer as administrator or manually copy files.

## Version

Kite v1.0.0

## License

See LICENSE file for details.
