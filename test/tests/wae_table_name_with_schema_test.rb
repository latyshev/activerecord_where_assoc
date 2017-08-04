# frozen_string_literal: true

require "test_helper"

describe "where_assoc_exists" do
  it "belongs_to works with table_names that have a schema" do
    s0 = SchemaS0.create!
    s0.create_b1!
    s0.save! # Save the changed id

    assert_exists_with_matching_from(SchemaS0, :b1)
  end

  it "has_one works with table_names that have a schema" do
    s0 = SchemaS0.create!
    s0.create_o1!

    assert_exists_with_matching_from(SchemaS0, :o1)
  end

  it "has_many works with table_names that have a schema" do
    s0 = SchemaS0.create!
    s0.m1.create!

    assert_exists_with_matching_from(SchemaS0, :m1)
  end
end