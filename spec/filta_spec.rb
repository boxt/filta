# frozen_string_literal: true

require "rails_helper"

describe Filta do
  with_model(:Foo) do
    table do |t|
      t.string(:title)
      t.string(:slug)
      t.timestamps(null: false)
    end
  end

  describe ".filta(by)" do
    it "returns the foos for title 'Bar'" do
      foo1 = Foo.create!(title: "Bar", slug: "bar")
      foo2 = Foo.create!(title: "Bar", slug: "bar2")
      Foo.create!(title: "Baz", slug: "baz")
      foos = Foo.filta(title: "Bar")

      expect(foos).to contain_exactly(foo1, foo2)
    end
  end
end
