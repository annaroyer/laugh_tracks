describe "As a user" do
  context "when I visit /comedians" do
    it "I can see all the comedians" do
      Comedian.create(name: 'funny guy', age: 20)

      visit '/comedians'

      save_and_open_page

      expect(page).to have_content('funny guy')
      expect(page).to have_content(20)
    end

    it "I can see each a list of all comedian specials" do
      Comedian.create(name: 'funny guy', age: 20)
      Special.create(name: 'laugh a lot', comedian_id: 1)
      Special.create(name: 'laugh a lot', comedian_id: 1)
      Special.create(name: 'laugh a lot', comedian_id: 1)

      visit '/comedians'

      expect(page).to have_content('laugh a lot')
    end
  end
end

# As a user, when I visit /comedians I see a list of comedians with the following information for each comedian.
#
# Name
# Age
# As a user, when I visit /comedians I also see a list of each comedian's specials.
#
# As a user, when I visit /comedians I also see the average age for all comedians.
#
# As a user, when I visit /comedians?age=34 I see a list of all comedians with an age of 34.
#
# As a user, when I visit /comedians I also see the count of specials for each comedian.
