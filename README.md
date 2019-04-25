# RecordLocator for Lua

**A lua library to encode integers into a short and easy to read string and decode the strings back to the initial numbers**

This is the Lua equivalent to [php-recordlocator](https://github.com/jakoubek/php-recordlocator) and [sqlanywhere-recordlocator](https://github.com/jakoubek/sqlanywhere-recordlocator). Two functions, one for encoding and one for decoding.

A RecordLocator is an alphanumerical string that represents an integer. This library encodes integers to RecordLocators and decodes RecordLocators back to integers.

A RecordLocator is shorter than the corresponding integer and easier to read and memorize. You can use it to encode autoincrement primary keys from an database into an human-readable representation for your users.

## Examples

- The integer 5,325 encodes to the RecordLocator 78G.
- The integer 3,512,345 encodes to the RecordLocator 5E82T.

Both RecordLocators are shorter than their integer equivalent. You can encode more than 33.5 million integers in an 5-char RecordLocator: the largest 5-char RecordLocator, ZZZZZ, represents the integer 33,554,431.

With 6 chars you can encode integers up to more than 1 billion.

## Usage

Encoding integers to recordlocators:

```lua
require('recordlocator')

rl = encode(5325)
print(rl)  -- 78G
```

Decoding recordlocators back into the integer values:

```lua
require('recordlocator')

number = decode('78G')
print(number)   -- 5325
```
