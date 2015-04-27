#### Metacharacter ####

> .^$*+?|(){}[]\-


[Reference](D:\PrivateWorkspace\techguide\programming\regex\regex.jpeg)



### Metacharacters

| Metacharacter  |   Name                     |   Matches                           |
| --------------| --------------------------  | ----------------------------------------- |
|    .          | dot                          any one character                                              |
|    [....]     | character class                        |   any character listed                                    |
|    [^ ...]    |   Explicit character match       |         any character not listed                                |
|    ^          |                                  |            start of the line                                   |
|    $          |                                  |           end of the line                              |
|    \<         |     meta sequence                |      the position at the start of the word                     |
|    \>         |     meta sequence                   |      the position at the end of a word                      |
|    |          |                                             |    matches either expression it seprates       |  
|    (..)       |                                             |    used to limit scope of |, plus additional uses  |

> ? (Question) - Optional  - Example color or colour -> col
> + (Plus) - one or more
> (Star) - as many times as possible or nothing

* Meta characters have different meaning when they are inside meta class 
like [.] - here dot is not a metacharacter



### Alternation
|  -  Matches either expression

(a|b|c)  is different from [abc]   as later matches single character, | matches long alternatives
|  does not have negation as does []

### Grouping

() - paranthesis


###  Quantifiers 

?  -   Matches character/group maximum once or none if it does not exists
               Example colou?r Matches color or colour  u is optional
*  -   (Repitition) Matches character/group minimum zero and maximum unlimited 
+  - (Repitition) Matches character/group  minimum once and maximum unlimited times 

Example :

<HR( +SIZE *= *[0-9]+)? */>

# Backreferencing



# Regular Expressions :: greedy vs. non-greedy

.* vs .*?

## Example

- greedy vs. non-greedy matching
  - my $string = 'This string has one dog and another dog'
  
- .* matches as much as it can (greedy)
> if ($string =~ /^(.*)dog/) {
>          print $1;   # prints 'This string has one dog and another '
> };
    
- .* matches as little as it needs to yet still match
    if ($string =~ /^(.*?)dog/) {
         print $1;   # prints 'This string has one '
    };


