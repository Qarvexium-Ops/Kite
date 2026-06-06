# Kite Quick Start Guide

## Installation

Run the installer:

```
install.bat
```

Close and reopen your terminal after installation.

## First Program

Create a file called hello.kite:

```kite
print("Hello, World!")
```

Run it:

```
kite run hello.kite
```

## Interactive Mode

Start the REPL:

```
kite repl
```

Try commands:

```kite
let x = 10
print(x * 2)
let name = "Alice"
print("Hello, " + name)
```

Exit with: exit or quit

## Basic Syntax

### Variables

```kite
let number = 42
let text = "Hello"
let flag = true
let empty = null
```

### Math

```kite
let sum = 5 + 3
let product = 4 * 7
let quotient = 20 / 4
let remainder = 10 % 3
```

### Strings

```kite
let greeting = "Hello"
let name = "World"
let message = greeting + ", " + name + "!"
print(message)
```

### Arrays

```kite
let numbers = [1, 2, 3, 4, 5]
print(numbers[0])
push(numbers, 6)
print(len(numbers))
```

### Dictionaries

```kite
let person = {
    name: "Alice",
    age: 30
}
print(person.name)
print(person["age"])
```

## Control Flow

### If Statement

```kite
let x = 10

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
let a = true
let b = false

if a and not b {
    print("Condition met")
}

if a or b {
    print("At least one true")
}
```

### Loops

```kite
for i in range(5) {
    print(i)
}

let x = 0
while x < 5 {
    print(x)
    x = x + 1
}
```

## Functions

### Define Function

```kite
fn greet(name) {
    return "Hello, " + name
}

print(greet("Alice"))
```

### Multiple Parameters

```kite
fn add(a, b) {
    return a + b
}

let result = add(5, 3)
print(result)
```

### Anonymous Functions

```kite
let square = (x) => x * x
print(square(5))
```

## Error Handling

```kite
try {
    let result = 10 / 0
} catch (error) {
    print("Error:", error)
}
```

## File Operations

### Read File

```kite
let content = read_file("data.txt")
print(content)
```

### Write File

```kite
write_file("output.txt", "Hello, File!")
```

### Check If Exists

```kite
if exists("file.txt") {
    print("File exists")
}
```

## Working with Data

### Map

```kite
let numbers = [1, 2, 3, 4, 5]
let doubled = map(numbers, (x) => x * 2)
print(doubled)
```

### Filter

```kite
let numbers = [1, 2, 3, 4, 5]
let evens = filter(numbers, (x) => x % 2 == 0)
print(evens)
```

### Reduce

```kite
let numbers = [1, 2, 3, 4, 5]
let sum = reduce(numbers, (acc, x) => acc + x, 0)
print(sum)
```

## Modules

### Create Module

File: math_utils.kite

```kite
fn add(a, b) {
    return a + b
}

fn multiply(a, b) {
    return a * b
}
```

### Use Module

File: main.kite

```kite
use "./math_utils.kite"

print(add(5, 3))
print(multiply(4, 7))
```

## Classes

```kite
class Counter {
    fn init(start) {
        this.count = start
    }
    
    fn increment() {
        this.count = this.count + 1
    }
    
    fn get_value() {
        return this.count
    }
}

let counter = Counter(0)
counter.increment()
counter.increment()
print(counter.get_value())
```

## GUI Applications

```kite
let html = "
<!DOCTYPE html>
<html>
<head>
    <title>My App</title>
</head>
<body>
    <h1>Hello from Kite</h1>
    <button onclick='test()'>Click</button>
    <div id='output'></div>
    
    <script>
        async function test() {
            const result = await window.kite.call_hook('greet', 'User');
            document.getElementById('output').textContent = result.result;
        }
    </script>
</body>
</html>
"

let app = webview("My App", 600, 400, html)

fn greet(name) {
    return "Hello, " + name
}

webview_hook(app, "greet", greet)
webview_show(app)
```

## Common Tasks

### Reading User Input

```kite
let name = input("Enter your name: ")
print("Hello, " + name)
```

### Working with JSON

```kite
let json_string = '{"name": "Alice", "age": 30}'
let data = json_parse(json_string)
print(data.name)

let obj = {name: "Bob", age: 25}
let json = json_stringify(obj)
print(json)
```

### HTTP Request

```kite
let response = http_get("https://api.example.com/data")
let data = json_parse(response)
print(data)
```

### String Methods

```kite
let text = "  Hello World  "
print(text.strip())
print(text.upper())
print(text.split())
print(text.replace("World", "Kite"))
```

## Examples

Run the included examples:

```
kite run examples\01_hello_world.kite
kite run examples\02_variables.kite
kite run examples\03_functions.kite
kite run examples\04_control_flow.kite
kite run examples\05_classes.kite
kite run examples\06_data_structures.kite
kite run examples\07_file_operations.kite
kite run examples\08_webview.kite
```

## Help

### Command Help

```
kite --help
```

### Check Health

```
kite doctor
```

### Format Code

```
kite fmt myfile.kite
```

## Next Steps

1. Read README.md for overview
2. Read LANGUAGE_REFERENCE.md for complete syntax
3. Explore examples directory
4. Build your first project

## Common Commands

```
kite run <file>        Run program
kite repl              Interactive mode
kite eval <code>       Evaluate code
kite fmt <file>        Format code
kite test              Run tests
kite compile <file>    Compile to exe
```

## Tips

- Use let to declare variables
- Functions defined with fn keyword
- Try/catch for error handling (not try/except)
- Use and/or instead of &&/|| if preferred
- Strings are UTF-8 encoded
- Arrays and dictionaries are mutable
- Classes use this keyword

## Getting Help

1. Check documentation in installation directory
2. Run example programs
3. Use kite doctor to verify setup
4. Review error messages for context

## Version

Kite v1.0.0
