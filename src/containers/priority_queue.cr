require "./heap"

module Crystalline::Containers
  class PriorityQueue(T)
    alias Priority = Int8 | Int16 | Int32 | Int64 | Int128 | UInt8 | UInt16 | UInt32 | UInt64 | UInt128

    def initialize(comparator = ->(x : Priority, y : Priority) { (x <=> y) == 1 })
      @heap = Heap(Priority, T).new(comparator)
    end

    def size
      @heap.size
    end

    def push(object : T, priority : Priority)
      @heap.push(priority, object)
    end

    def clear
      @heap.clear
    end

    def empty?
      @heap.empty?
    end

    def has_priority?(priority : Priority)
      @heap.has_key?(priority)
    end

    def next
      @heap.next
    end

    def pop
      @heap.pop
    end

    def next!
      pop
    end

    def delete(priority : Priority)
      @heap.delete(priority)
    end
  end
end
