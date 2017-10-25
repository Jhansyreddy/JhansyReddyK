#comment: This data analyzes the ear length and dna sequence of the house elves'.

#Problem3
house_elves_data <- read.csv("data/houseelf_earlength_dna_data_1.csv")
print(house_elves_data)

library(stringr)
dna_sequence <- function(sequence){
  sequence <- str_to_upper(sequence)
  Gs <- str_count(sequence, "G")
  Cs <- str_count(sequence, "C")
  gc_content <- (Gs + Cs)/str_length(sequence) * 100
  return(gc_content)
}
dna_seq <- dna_sequence(house_elves_data$dnaseq)
print(dna_seq)

#Problem7
#comitted code from Dr.Alderman
get_size_class <- function(ear_length){
     # Calculate the size class for one or more earth lengths
      ear_lengths <- ifelse(ear_length > 10, "large", "small")
      return(ear_lengths)
}
ear_length <- get_size_class(house_elves_data$earlength)
print(ear_length)

#Problem7-4
id <- house_elves_data$id
print(id)

table_data <- data.frame(id, ear_length, dna_seq)
print(table_data)

#Problem7-5

write.csv(table_data, file="output_data/table_data.csv")





