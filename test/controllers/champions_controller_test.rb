require 'test_helper'

class ChampionsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get champions_name:string_url
    assert_response :success
  end

  test "should get lore:string" do
    get champions_lore:string_url
    assert_response :success
  end

  test "should get spells:List[ChampionSpellDto]" do
    get champions_spells:List[ChampionSpellDto]_url
    assert_response :success
  end

end
