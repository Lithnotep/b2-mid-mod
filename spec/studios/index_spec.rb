require 'rails_helper'

describe 'Studios index page', type: :feature do
  describe "when I visit '/studios'" do
    it 'shows a list of all studios and thier movies' do
      studio_1 = Studio.create(name: "Megaplex", location: "Utah")
      studio_2 = Studio.create(name: "Gigaville", location: "Colorado")
      movie_1 = Movie.create(title: "Goobers", creation_year: "1996", genre: "Horror")
      movie_2 = Movie.create(title: "Slurps", creation_year: "2000", genre: "Rom-Com")

      visit "/studios"

      expect(page).to have_content(studio_1.name)
      expect(page).to have_content(studio_1.location)
      expect(page).to have_content(studio_2.name)
      expect(page).to have_content(studio_2.location)
      expect(page).to have_content(movie_1.title)
      expect(page).to have_content(movie_1.creation_year)
      expect(page).to have_content(movie_1.genre)
      expect(page).to have_content(movie_2.title)
      expect(page).to have_content(movie_2.creation_year)
      expect(page).to have_content(movie_2.genre)

    end
  end
end




# <!-- Story 1 -->
# As a visitor,
# When I visit the studio index page
# I see a list of all of the movie studios
# And underneath each studio, I see the names of all of its movies. %>
