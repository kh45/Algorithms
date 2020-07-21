## Description

##Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

##Examples:

# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']


## Best solution
def solution(str)
    str.length.even? ? str.scan(/../) : str.scan(/../).push("#{str[-1]}_")
end

##even better would be to add "_" to end of str and THEN scan, no need to check if even or odd
