# frozen_string_literal: true

describe Filta do
  with_model(:Foo) do
    table do |t|
      t.string(:title)
      t.string(:slug)
      t.timestamps(null: false)
    end
  end

  describe ".filta" do
    before do
      # Not returned
      Foo.create!(title: "Baz", slug: "baz")
    end

    it "returns the foos for title 'Bar'" do
      foo1 = Foo.create!(title: "Bar", slug: "bar")
      foo2 = Foo.create!(title: "Bar", slug: "bar2")

      expect(Foo.filta(title: "Bar")).to contain_exactly(foo1, foo2)
    end
  end
end
