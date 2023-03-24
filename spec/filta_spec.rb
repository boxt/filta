# frozen_string_literal: true

RSpec.describe Filta do
  with_model(:Foo) do
    table do |t|
      t.string(:title)
      t.string(:slug)
      t.boolean(:active)
      t.timestamps(null: false)
    end
  end

  describe ".filta" do
    let!(:foo1) { Foo.create!(title: "Bar", slug: "bar", active: true) }
    let!(:foo2) { Foo.create!(title: "Bar", slug: "bar2", active: false) }

    before do
      # Not returned
      Foo.create!(title: "Baz", slug: "baz", active: true)
    end

    it "returns the foo objects when searching with title: 'Bar'" do
      expect(Foo.filta(title: "Bar")).to contain_exactly(foo1, foo2)
    end

    it "returns the foo objects when searching with title: 'Bar', slug: 'bar3'" do
      expect(Foo.filta(title: "Bar", slug: "bar3")).to be_blank
    end

    it "returns the foo objects when searching with slug: 'bar'" do
      expect(Foo.filta(slug: "bar")).to contain_exactly(foo1)
    end

    it "returns the foo objects when searching with a hash of { slug: 'bar2' }" do
      expect(Foo.filta({ slug: "bar2" })).to contain_exactly(foo2)
    end

    it "returns the foo objects when searching with a hash of { active: false }" do
      expect(Foo.filta({ active: false })).to contain_exactly(foo2)
    end
  end
end
