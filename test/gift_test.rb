require './test/test_helper'

class GiftMeTest < Minitest::Test
  def test_find_returns_a_gift
    VCR.use_cassette('one_gift') do
      gift = AnimatedGiftMe::Gift.find(1971)
      assert_equal AnimatedGiftMe::Gift, gift.class

      assert_equal 1971, gift.id
      assert_equal 45, gift.user_id
      assert_equal "{\"id\":\"2d18c061594ac6d9b6dffc73c98aba02.png\",\"storage\":\"store\",\"metadata\":{\"filename\":\"Untitled drawing (1).png\",\"size\":26794,\"mime_type\":\"image/png\"}}", gift.image_data
      assert_equal "https://animatedgif.me/gifs/1971.json", gift.url
      assert_equal "2020-09-18T14:09:51.027Z", gift.created_at
      assert_equal "2020-09-18T14:09:51.071Z", gift.updated_at
    end
  end
end
