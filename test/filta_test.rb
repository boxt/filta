require 'test_helper'

class Filta::Test < ActiveSupport::TestCase

  it "should be something" do
    assert_kind_of Module, Filta
  end

  with_model :Foo do
    table do |t|
      t.string :title
      t.string :slug
      t.timestamps null: false
    end
  end

  describe "methods" do
    describe "#filter(by)" do
      before do
        @found = Foo.create!(title: "Bar", slug: "bar")
        @not_found1 = Foo.create!(title: "Bar", slug: "bar2")
        @not_found2 = Foo.create!(title: "Baz", slug: "baz")

        @foos = Foo.filter({ title: "Bar", slug: "bar" })
      end

      it "should return the foos" do
        assert_equal 1, @foos.count
        assert @foos.include?(@found)
        refute @foos.include?(@not_found1)
        refute @foos.include?(@not_found2)
      end
    end
  end
end
