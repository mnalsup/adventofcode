class IntcodeComputer

  def initialize(memory)
    @memory = memory
  end

  def run()
    pointer = 0
    while true do 
      opcode = @memory[pointer]
      case opcode 
      when 1
        opLength = 4
        param1 = @memory[pointer + 1]
        param2 = @memory[pointer + 2]
        store = pointer + 3
        @memory[store] = @memory[param1] + @memory[param2]
        return @memory
      when 2
        opLength = 4
        param1 = @memory[pointer + 1]
        param2 = @memory[pointer + 2]
        store = pointer + 3
        @memory[store] = @memory[param1] * @memory[param2]
        return @memory
      when 99
        opLength = 1
        return @memory
      else
        raise "Invalid opcode"
      end
      pointer += opLength
    end
  end

end
