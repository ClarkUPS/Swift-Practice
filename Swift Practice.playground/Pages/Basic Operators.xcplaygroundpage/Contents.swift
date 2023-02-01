    // Comments
// inline comments use two forward slashes
// block comments use forward slashes and asterisks /* */

/*
 Block comments can have other /* Block comments inside of them */
 */



    // Constants
// constants cannot change variables can
// constants are preferred
// variables and constants can be named with any symbols including emojis

let constant = 6

var variable = 5
variable += 7

    // Types
// Type declaration
// Types can be set using a colon : which represents of the type

let explicitType: Int = 50

// multiple variables can be declared at once
// Explicitly typed variables do not need to have an initial value
let multiCon1, multiCon2, multiCon3: Double

// Variable/constant names can be swift key woods in necessary using back ticks however this is not preferred
let `let` = "let"
    
/*
 Integers:
 
 Interpreted integers always default to signed ints.
 It is best to use regular ints unless absolutely necessary.
 Different int type declarations follow c naming convention
 */

// Quick min max function for integers
let largeInt: Int64 = Int64.max
let smallInt: Int64 = Int64.min

// Can also create unsigned
let unsignedInt: UInt32 = 800


/*
 Doubles/Floats:
 
 Store floating point values. Interpreter prefers/defaults to
 doubles for floating point values. Doubles are the convention
 */

// Doubles can be stored as decimal inters, binary integers, octal integers or hexadecimal integers
let hexadecimalInteger = 0x15

// Floating point exponentiation can also be represented
let exponentValue = 1.30e2 // This equals 130


/*
 Booleans:
 
 Classic one bit true or false
 */

var `true` = true
var `false` = false

// Booleans can toggle between true and false with
var falseTrue = false
falseTrue.toggle()

/*
 Tuples:

 Tuples are grouped values which can consist of different types
 and can include any number of values. Useful to get multiple
 values returned from a function
 */

let tuple = ("Clark", 22, true)

// Tuple decomposition used to extract information from tuples
let (name, age, eyeColorBrown) = tuple // Now name age and sysColorBrown can be accessed independently

// An underscore can be used to ignore an element in a tuple
let tuple2 = (55, 33.0)
let(_,floatValue) = tuple2

// Tuple information can be accessed by index
print(tuple.1)

// Tuple elements can be named in the tuple
let tuple3 = (favoriteColor: "Blue", yearOfGraduation: 2023)

// Values can be extracted directly from named tuples
print(tuple3.favoriteColor)

/*
 Optionals:
 
 Representative type for when there may or may not be
 a value present. A concept born from null/nil values
 which often times were ambiguous. The type of optionals
 is any type followed by a question mark ex: Int?
 
 nil is the valueless state optionals are set to upon
 failing/a proper value is not able to be found. Nil
 cannot be used with non-options variables/constants.
 
 Once verified that the value in an optional is not nil
 the exclamation mark symbol can be used to unwrap the
 value. This is called forced unwrapping
 
 Variables created using an if statement are only available
 in the scope of said if statement
 
 Implicit unwrapping one check to confirm an optional as
 being a value and not nil *
 
 */

// Attempting to parse a string to int may or may not work
let possibleNumber = "String"
let convertNumber = Int(possibleNumber)

// Declare optionals
var optionalString: String? = "It is a string!"

// If no value is given to an optional nil is set to the default
var optionalDefault: Bool?

// Use comparative operator to check for nil values
if optionalDefault == nil{
    print("The value of optionalDefault is nil")
}

// Forced unwrapping
let possibleLargeInt: Int64? = Int64.max
if possibleLargeInt != nil{
    print("The value in possible large in was \(possibleLargeInt!)") // Forced unwrapping
}

// Optional Binding set variable if not nil/there is a value
// Must specify type. Use cast to do so
let testIng: Int? = 5
if let confirmedInt = testIng{
    print("The possible large integer was confirmed as being \(confirmedInt)")
}

let confirmedPossible = Int(possibleNumber)
if let confirmedPossible = confirmedPossible{
    print("Confirmed number was \(confirmedPossible)")
}

// Also rewrite for simplicity * better practice
if var confirmedPossible{ // Use let or var and conversion is seamless
    print("Confirmed number was \(confirmedPossible)")
}

// Many variables in bindings
let oneNumber: Int? = 1
let secondNumber: Int? = 2

if let oneNumber, let secondNumber{
    let combinedNumber = oneNumber + secondNumber
}

// Implicit unwrapping *



/*
 Type conversion:
 
 At times types need to be combined or casted between
 because swift is a safe type language which means
 types are checked before operations to ensure types
 are not combined illegally. Often casting is needed
 */

// Integers of differing types can be combined if casted
let int8Bit: Int8 = 8
let int64Bit: Int64 = 2000
let newInt64Bit = int64Bit + Int64(int8Bit)


// More casting for int to double and double to int
let pi = 3.14159
let intValue = 5
let combinedValue = Double(intValue) + pi

/*
 Type Aliasing:
 
 Useful way to refer to already created types. Like a pointer
 to a type.
 */

typealias littleInt = Int8
var maxLittleInt = littleInt.max // Set as the max of the named type little int


// Randomness


// Printing
// Use print to print out values
// to include inline values in print use backslash and brackets \()
let inline = "inline"
print("We are talking about \(inline) printing right now")




    // Other tricks
// Semicolons are not needed in swift however if you want to execute multiple statements on the same line they can be used
let multipleStatement = "This thing"; print(multipleStatement)


// Numerical values can also have underscores for easier readably
let oneMillion = 1_000_000


