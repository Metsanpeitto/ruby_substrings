#######################################################################################################
#######################################################################################################
#
#         SUBSTRINGS --- Odin Project - Ruby Course
#
#         Implement a method #substrings that takes a word as the first argument 
#         and then an array of valid substrings (your dictionary) as the second argument. 
#         It should return a hash listing each substring (case insensitive) that was found in 
#         the original string and how many times it was found.
#        
#          > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#          => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#          > substrings("below", dictionary)
#          => { "below" => 1, "low" => 1 }
#         Next, make sure your method can handle multiple words:
#         
#           > substrings("Howdy partner, sit down! How's it going?", dictionary)
#           => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, 
#           "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
#         Please note the order of your keys might be different.
#         
#         Quick Tips:
#         
#         Recall how to turn strings into arrays and arrays into strings.
#         
#
#######################################################################################################
#######################################################################################################

dictionary = ["below","down","go","going","horn","ho","ho","how","howdy","it","i","low","own","part","partner","sit"]
quote = "Howdy partner, sit down! How's it going?"
simple = "ho"

def substrings(text,dictionary )
    # Initialize the counter and the container for the result
    total = 0
    words = Hash.new 
    # Find out if the input text is an String
    puts text.is_a? (String)
    if text.is_a? (String)
    # If the input 'text' is a string split it in
    # an array of words
       words_array = text.split(" ")
       puts "the String is : #{text}"
    
       text = words_array
       puts "the String array became : #{text}"
    end  
    # Iterate over every element in the array 
    # If the element equals the input variable 'word'
    text.each do |w|  
        dictionary.each do |w_2|
            w_2_downcase = w_2.downcase()
            w_downcase = w.downcase()
             if w_downcase.include? w_2_downcase
              # Search into the result container for a
              # copy of the key element 
              if words[w_2_downcase]
              # If found the key, get its value
              # Increment its value by 1
              num = words[w_2_downcase] + 1
              words[w_downcase] = num
              else
              # If there is not an instance of the key
              # create it and add a value of 1
               words[w_2_downcase] = 1   
              end 
             end                
        end    
    end    
    
    puts "The last result #{words}"
    return words
end  

substrings(simple, dictionary)
substrings(quote, dictionary)



