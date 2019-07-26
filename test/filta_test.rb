# frozen_string_literal: true

require "test_helper"

module Filta
  class Test < ActiveSupport::TestCase
    describe Filta do
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
        before do
          @foo1 = Foo.create!(title: "Bar", slug: "bar")
          @foo2 = Foo.create!(title: "Bar", slug: "bar2")
          @foo3 = Foo.create!(title: "Baz", slug: "baz")
        end

        describe "#filta(by)" do
          it "should return the foos for title 'Bar'" do
            foos = Foo.filta(title: "Bar")

            assert_equal 2, foos.count
            assert foos.include?(@foo1)
            assert foos.include?(@foo2)
            refute foos.include?(@foo3)
          end

          it "should return the foos for an array of ids" do
            foos = Foo.filta(id: [@foo1.id, @foo2.id])

            assert_equal 2, foos.count
            assert foos.include?(@foo1)
            assert foos.include?(@foo2)
            refute foos.include?(@foo3)
          end
        end

        describe "filter(by)" do
          it "should work the same as the .filta method" do
            foos = Foo.filter(title: "Bar")

            assert_equal 2, foos.count
            assert foos.include?(@foo1)
            assert foos.include?(@foo2)
            refute foos.include?(@foo3)
          end
        end
      end
    end
  end
end
