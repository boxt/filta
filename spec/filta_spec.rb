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
    let!(:foo1) { Foo.create!(title: "Bar", slug: "bar") }
    let!(:foo2) { Foo.create!(title: "Bar", slug: "bar2") }

    before do
      # Not returned
      Foo.create!(title: "Baz", slug: "baz")
    end

    it "returns the foo objects when searching with title: 'Bar'" do
      expect(Foo.filta(title: "Bar")).to contain_exactly(foo1, foo2)
    end

    it "returns the foo objects when searching with { slug: 'bar2' }" do
      expect(Foo.filta({ slug: "bar2" })).to contain_exactly(foo2)
    end
  end
end
