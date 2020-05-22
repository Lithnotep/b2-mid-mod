describe 'Movies show page', type: :feature do
  describe "when I visit a movies show page" do
    it 'shows the movies its details and all its actors statistics' do
      studio_1 = Studio.create!(name: "Megaplex", location: "Utah")
      studio_2 = Studio.create!(name: "Gigaville", location: "Colorado")
      movie_1 = Movie.create!(title: "Goobers", creation_year: "1996", genre: "Horror", studio_id: studio_1.id)
      actor_1 = Actor.create!(name: "Sally Mae", age: "25")
      actor_2 = Actor.create!(name: "Johnny Bee", age: "35")
      MovieActor.create(movie: movie_1, actor: actor_1)
      MovieActor.create(movie: movie_1, actor: actor_2)

      visit "/movies/#{movie_1.id}"


      expect(page).to have_content(movie_1.title)
      expect(page).to have_content(movie_1.creation_year)
      expect(page).to have_content(movie_1.genre)
      expect(page).to have_content(actor_1.name)
      expect(page).to have_content(actor_2.name)
      expect(page).to have_content("30.0")



    end
    it 'shows the movies its details and all its actors statistics' do
      studio_1 = Studio.create!(name: "Megaplex", location: "Utah")
      studio_2 = Studio.create!(name: "Gigaville", location: "Colorado")
      movie_1 = Movie.create!(title: "Goobers", creation_year: "1996", genre: "Horror", studio_id: studio_1.id)
      actor_1 = Actor.create!(name: "Sally Mae", age: "25")
      actor_2 = Actor.create!(name: "Johnny Bee", age: "35")
      actor_3 = Actor.create!(name: "Katie", age: "17")
      MovieActor.create(movie: movie_1, actor: actor_1)
      MovieActor.create(movie: movie_1, actor: actor_2)

      visit "/movies/#{movie_1.id}"
      expect(page).to_not have_content("Katie")
      fill_in :name, with: "Katie"
      click_on "Submit"

      expect(page).to have_content("Katie")
    end
  end
end
