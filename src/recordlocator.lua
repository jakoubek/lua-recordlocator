function encode(number)

    local assign = {
        [0] = '2',
        [1] = '3',
        [2] = '4',
        [3] = '5',
        [4] = '6',
        [5] = '7',
        [6] = '8',
        [7] = '9',
        [8] = 'A',
        [9] = 'C',
        [10] = 'D',
        [11] = 'E',
        [12] = 'F',
        [13] = 'G',
        [14] = 'H',
        [15] = 'I',
        [16] = 'J',
        [17] = 'K',
        [18] = 'L',
        [19] = 'M',
        [20] = 'N',
        [21] = 'O',
        [22] = 'P',
        [23] = 'Q',
        [24] = 'R',
        [25] = 'T',
        [26] = 'U',
        [27] = 'V',
        [28] = 'W',
        [29] = 'X',
        [30] = 'Y',
        [31] = 'Z'
    }

    i = 0
    numbers = {}
    while number > 0 do
        i = i + 1
        numbers[i] = math.fmod(number, 32)
        number = math.floor(number/32)
    end

    recordLocator = ""
    for i,v in ipairs(numbers) do
        recordLocator = recordLocator .. assign[v]
    end

    return string.reverse(recordLocator)

end

function decode(recordLocator)

    local assign = {
        ['0'] = 21,
        ['1'] = 15,
        ['S'] = 12,
        ['B'] = 22,
        ['2'] = 0,
        ['3'] = 1,
        ['4'] = 2,
        ['5'] = 3,
        ['6'] = 4,
        ['7'] = 5,
        ['8'] = 6,
        ['9'] = 7,
        ['A'] = 8,
        ['C'] = 9,
        ['D'] = 10,
        ['E'] = 11,
        ['F'] = 12,
        ['G'] = 13,
        ['H'] = 14,
        ['I'] = 15,
        ['J'] = 16,
        ['K'] = 17,
        ['L'] = 18,
        ['M'] = 19,
        ['N'] = 20,
        ['O'] = 21,
        ['P'] = 22,
        ['Q'] = 23,
        ['R'] = 24,
        ['T'] = 25,
        ['U'] = 26,
        ['V'] = 27,
        ['W'] = 28,
        ['X'] = 29,
        ['Y'] = 30,
        ['Z'] = 31
    }

    recordLocator = string.upper(recordLocator)

    number = 0
    for c in recordLocator:gmatch"." do
        number = (number * 32) + assign[c]
    end

    return number

end
