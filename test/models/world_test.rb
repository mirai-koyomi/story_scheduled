require 'test_helper'

class WorldTest < ActiveSupport::TestCase
  # statusがdraft, public, private以外の場合はエラー
  test "status_test" do
    thorn_chester = FactoryGirl.build(:world, status: "public")
    risomata = FactoryGirl.build(:world, status: "ganma")

    assert thorn_chester.invalid?
    assert risomata.valid?

    assert risomata.errors.include?(:status)
  end

  test "description test" do
    risomata = FactoryGirl.build(:world, description: "A" * 501)

    assert risomata.valid?

    assert risomata.errors.include?(:description)
  end
end
