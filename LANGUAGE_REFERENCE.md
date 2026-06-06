# Kite Language Reference

## Table of Contents

1. [Syntax](#syntax)
2. [Data Types](#data-types)
3. [Operators](#operators)
4. [Control Flow](#control-flow)
5. [Functions](#functions)
6. [Classes](#classes)
7. [Error Handling](#error-handling)
8. [Modules](#modules)
9. [Built-in Functions](#built-in-functions)
10. [Standard Library](#standard-library)

## Syntax

### Comments

```kite
# Single line comment
```

### Variable Declaration

```kite
let variable_name = value
```

### Statement Termination

Statements are terminated by newlines. Semicolons are optional.

```kite
let x = 10
let y = 20
```

## Data Types

### Null

```kite
let empty = null
```

### Boolean

```kite
let is_active = true
let is_disabled = false
```

### Integer

```kite
let count = 42
let negative = -10
```

### Float

```kite
let price = 19.99
let ratio = 3.14159
```

### String

```kite
let name = "Alice"
let message = "Hello, World!"
```

String methods:
- upper, lower, capitalize, title
- strip, lstrip, rstrip
- split, lines, words, chars
- replace, contains, starts_with, ends_with
- find, index, count

### Array

```kite
let numbers = [1, 2, 3, 4, 5]
let mixed = [1, "two", true, null]
let nested = [[1, 2], [3, 4]]
```

Array operations:
- Indexing: array[0]
- Length: len(array)
- Methods: push, pop, map, filter, reduce

### Dictionary

```kite
let person = {
    name: "Alice",
    age: 30,
    active: true
}
```

Dictionary operations:
- Access: dict.key or dict["key"]
- Methods: keys, values, has_key

## Operators

### Arithmetic

```kite
+   Addition
-   Subtraction
*   Multiplication
/   Division
%   Modulo
```

### Comparison

```kite
==  Equal
!=  Not equal
<   Less than
<=  Less than or equal
>   Greater than
>=  Greater than or equal
```

### Logical

```kite
and   Logical AND
or    Logical OR
not   Logical NOT

&&    Alternative AND
||    Alternative OR
!     Alternative NOT
```

### Assignment

```kite
=    Assignment
+=   Add and assign
-=   Subtract and assign
*=   Multiply and assign
/=   Divide and assign
```

## Control Flow

### If Statement

```kite
if condition {
    # code
}
```

### If-Else Statement

```kite
if condition {
    # code
} else {
    # code
}
```

### If-Else If-Else Statement

```kite
if condition1 {
    # code
} else if condition2 {
    # code
} else if condition3 {
    # code
} else {
    # code
}
```

### While Loop

```kite
while condition {
    # code
}
```

### For Loop

```kite
for item in iterable {
    # code
}
```

Examples:

```kite
for i in range(10) {
    print(i)
}

for item in array {
    print(item)
}

for key in keys(dict) {
    print(key, dict[key])
}
```

### Break and Continue

```kite
for i in range(10) {
    if i == 5 {
        break
    }
    if i % 2 == 0 {
        continue
    }
    print(i)
}
```

## Functions

### Function Definition

```kite
fn function_name(param1, param2) {
    # code
    return value
}
```

### Function Call

```kite
let result = function_name(arg1, arg2)
```

### Default Return

Functions without explicit return statement return null.

### Anonymous Functions

```kite
let add = (a, b) => a + b
let square = (x) => x * x
```

### Higher-Order Functions

```kite
fn apply(func, value) {
    return func(value)
}

let result = apply((x) => x * 2, 5)
```

## Classes

### Class Definition

```kite
class ClassName {
    fn init(param1, param2) {
        this.property1 = param1
        this.property2 = param2
    }
    
    fn method_name() {
        return this.property1
    }
}
```

### Creating Instances

```kite
let instance = ClassName(arg1, arg2)
```

### Accessing Members

```kite
let value = instance.property1
let result = instance.method_name()
```

## Error Handling

### Try-Catch

```kite
try {
    # code that might fail
} catch (error) {
    # handle error
}
```

### Try-Catch-Finally

```kite
try {
    # code
} catch (error) {
    # handle error
} finally {
    # always executed
}
```

### Try-Finally

```kite
try {
    # code
} finally {
    # cleanup
}
```

### Throw

```kite
throw "Error message"
```

### Error Object

```kite
catch (error) {
    let message = str(error)
    print("Error occurred:", message)
}
```

## Modules

### Import Module

```kite
use "./module.kite"
use "../utils/helper.kite"
use "C:/path/to/module.kite"
```

### Module Structure

All functions and variables defined in a module are exported.

File: math_utils.kite
```kite
fn add(a, b) {
    return a + b
}

fn subtract(a, b) {
    return a - b
}

let pi = 3.14159
```

File: main.kite
```kite
use "./math_utils.kite"

print(add(5, 3))
print(pi)
```

## Built-in Functions

### Core Functions

```kite
print(value, ...)          Output to console
input(prompt)              Read user input
len(collection)            Length of array or string
type_of(value)             Get type name
range(start, end, step)    Generate number sequence
```

### Type Conversion

```kite
str(value)                 Convert to string
int(value)                 Convert to integer
float(value)               Convert to float
bool(value)                Convert to boolean
```

### Array Functions

```kite
push(array, value)         Add to end
pop(array)                 Remove from end
map(array, func)           Transform elements
filter(array, func)        Select elements
reduce(array, func, init)  Reduce to single value
sort(array)                Sort in place
reverse(array)             Reverse in place
find(array, func)          Find first match
any(array, func)           Check if any match
all(array, func)           Check if all match
join(array, separator)     Join to string
```

### Dictionary Functions

```kite
keys(dict)                 Get all keys
values(dict)               Get all values
has_key(dict, key)         Check key existence
```

### String Functions

```kite
upper(string)              To uppercase
lower(string)              To lowercase
strip(string)              Remove whitespace
split(string, separator)   Split to array
replace(string, old, new)  Replace substring
```

String methods:
```kite
string.upper()
string.lower()
string.capitalize()
string.title()
string.strip()
string.lstrip()
string.rstrip()
string.split(separator)
string.lines()
string.words()
string.chars()
string.replace(old, new)
string.starts_with(prefix)
string.ends_with(suffix)
string.contains(substring)
string.find(substring)
string.index(substring)
string.count(substring)
```

### File Operations

```kite
read_file(path)            Read entire file
write_file(path, content)  Write to file
exists(path)               Check if exists
delete_file(path)          Delete file
list_dir(path)             List directory
make_dir(path)             Create directory
is_file(path)              Check if file
is_dir(path)               Check if directory
```

### HTTP Functions

```kite
http_get(url)              GET request
http_post(url, data)       POST request
http_put(url, data)        PUT request
http_delete(url)           DELETE request
```

### JSON Functions

```kite
json_parse(string)         Parse JSON string
json_stringify(value)      Convert to JSON
```

### Utility Functions

```kite
sleep(milliseconds)        Pause execution
time()                     Current timestamp
random()                   Random float 0-1
trace()                    Get stack trace
exit(code)                 Exit program
assert(condition, message) Assert condition
min(a, b)                  Minimum value
max(a, b)                  Maximum value
abs(value)                 Absolute value
round(value)               Round to integer
```

## Standard Library

### stdlib.math

Mathematical functions and constants.

### stdlib.text

Advanced string manipulation.

### stdlib.io

Input/output operations.

### stdlib.fs

File system operations.

### stdlib.http

HTTP client functionality.

### stdlib.time

Time and date functions.

### stdlib.random

Random number generation.

### stdlib.regex

Regular expressions.

### stdlib.crypto

Cryptographic functions.

### stdlib.process

Process management.

## WebView Functions

### Creating WebView

```kite
webview(title, width, height, html)
```

### Registering Hooks

```kite
webview_hook(app, name, function)
```

### Showing WebView

```kite
webview_show(app)
```

### Setting State

```kite
webview_set_state(app, key, value)
```

### Emitting Events

```kite
webview_emit(app, event_name, data)
```

### Loading HTML

```kite
webview_load_html(path)
```

## Examples

### Complete Program

```kite
# Calculator program

fn add(a, b) {
    return a + b
}

fn subtract(a, b) {
    return a - b
}

fn multiply(a, b) {
    return a * b
}

fn divide(a, b) {
    if b == 0 {
        throw "Division by zero"
    }
    return a / b
}

fn calculate(operation, a, b) {
    if operation == "add" {
        return add(a, b)
    } else if operation == "subtract" {
        return subtract(a, b)
    } else if operation == "multiply" {
        return multiply(a, b)
    } else if operation == "divide" {
        return divide(a, b)
    } else {
        throw "Unknown operation"
    }
}

# Main program
try {
    let result = calculate("add", 10, 5)
    print("Result:", result)
} catch (error) {
    print("Error:", error)
}
```

## Language Features

### Circular Import Support

Kite allows circular imports between modules.

### Method Chaining

Most functions return values that can be chained.

### Type Inference

Variables are dynamically typed.

### Garbage Collection

Memory is automatically managed.

## Best Practices

### Naming Conventions

- Variables: lowercase with underscores
- Functions: lowercase with underscores
- Classes: PascalCase
- Constants: UPPERCASE with underscores

### Code Organization

- One file per module
- Related functions in same file
- Clear file and function names

### Error Handling

- Use try-catch for operations that may fail
- Provide meaningful error messages
- Clean up resources in finally blocks

### Performance

- Avoid unnecessary loops
- Use built-in functions when available
- Cache expensive calculations

## Limitations

### Integer Size

Integers are limited by the underlying implementation.

### String Encoding

Strings are UTF-8 encoded.

### File Size

File operations are limited by available memory.

### Module Depth

Deep module nesting may cause performance issues.

## Version

This reference is for Kite v1.0.0.
