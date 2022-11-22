
Diary Entry: 

title
-> return @title as a string

contents 
-> return @contents as a string 

count_words 
-> @contents.count -> as an integer [3]

reading_time (wpm) 
-> wpm / 200.to ceil -> round up the words per minute it will take to read the @contents 

reading_chunk (wpm, minutes)
fail "Reading speed must be above zero." unless wpm.positive?
    no_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    return word_list.join(" ")
  end




Diary  

diary = Diary.new
diary_entry = DiaryEntry.new("title", "contents")
add (diary_entry) -> push into @listof_entries


all -> return @listof_entries 

count_words
#count_words -> (unpack the number in @contents)
#count_words on diary entry + count_words on diary to get count_words 

reading_time 
#reading_time  count words / wpm =  reading_time 
.ceil 

find_best_entry_for_reading time 
takes reading_time and count_words methods and then finds closest match 
biggest one possible to match








