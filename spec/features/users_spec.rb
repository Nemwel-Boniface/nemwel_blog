require 'rails_helper'

RSpec.describe 'Testing user index page' do
  describe 'GET index' do
    before(:each) do
      @first_user = User.create(name: 'Nemwel', photo: 'nemwel.jpg', bio: 'Taekwondo master.', post_counter: 0)
      @second_user = User.create(name: 'Boniface', photo: 'boniface.jpg', bio: 'Bio Chemist.', post_counter: 0)
      @second_user = User.create(name: 'Rhino', photo: 'rhino.jpg', bio: 'Human resource manager.', post_counter: 0)

      @first_post = Post.create(author_id: @first_user, text: 'post text', title: 'post title')
      @first_post.save
    end

    feature 'The User Index' do
      background { visit users_path }

      scenario 'shows the right content in the view' do
        visit users_path
        sleep(5)
        expect(page).to have_content('List of all Users:')
      end

      scenario 'See all usernames listed' do
        expect(page).to have_content('Boniface')
        expect(page).to have_content('Rhino')
      end

      scenario 'See the number of posts each user has written' do
        expect(page).to have_content('Number of posts:')
      end

      scenario 'See users profile picture for each user' do
        expect(page.first('img')['src']).to have_content 'nemwel.jpg'
      end
    end

    feature 'User show page' do
      background { visit user_path(User.first.id) }

      scenario 'I can see the user\'s profile picture' do
        expect(page.first('img')['src']).to have_content 'nemwel.jpg'
      end

      scenario 'I can see a button that lets me view all of a user\'s posts' do
        expect(page).to have_content('See all posts')
      end

      scenario 'I can see the user\'s username' do
        expect(page).to have_content('Nemwel')
      end

      scenario 'I can see the number of posts the user has written' do
        expect(page).to have_content("Number of posts: 0")
      end

      scenario 'I can see the user\'s bio' do
        expect(page).to have_content('Taekwondo master.')
      end
    end
  end
end