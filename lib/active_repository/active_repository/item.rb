# frozen_string_literal: true

require 'forwardable'

module ActiveRepository
  class Item
    extend Forwardable

    def_delegators :@data, *%I([] to_h except)

    def initialize(item, selected_fields = [])
      item = item.to_h if item.respond_to? :to_h
      item.slice!(*selected_fields)

      @data = item
    end
  end
end
