#comment

#Problem3
house_elves_data <- read.csv("./data/houseelf_earlength_dna_data_1.csv", header=TRUE)
print(house_elves_data)


dna_sequence <- function(earlength) {
  sequence <- str_to_lower(earlength)
  s <- str_count(earlength, "G")
  Cs <- str_count(earlength, "C")
  gc_content <- (Gs + Cs) / str_length(earlength) * 100
  return(gc_content)
  
}

dna_sequence(house_elves_data$dnaseq)

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}













