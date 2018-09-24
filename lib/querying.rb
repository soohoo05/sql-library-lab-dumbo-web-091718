def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM series JOIN books ON books.series_id=series.id WHERE series.id=1 ORDER BY books.year "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT MAX(name),motto FROM characters ORDER BY name LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series JOIN subgenres ON series.subgenre_id=subgenres.id JOIN authors ON authors.id=series.author_id "
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN characters ON series.id=characters.series_id WHERE species = 'human' LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.character_id) FROM characters JOIN character_books ON character_books.character_id=characters.id GROUP BY characters.name ORDER BY Count(character_books.character_id) DESC"
end
