# Displays and takes info from users

class TasksView
  def ask_for_description
    puts "What's the description?"
    return gets.chomp
  end

  def ask_for_index
    puts "What's the number?"
    return gets.chomp.to_i - 1
  end

  def display(array_of_tasks)
    array_of_tasks.each_with_index do |task, index|
      # task => task instance
      state_display = task.completed? ? "[x]" : "[ ]"
      puts "#{index + 1}. #{state_display} #{task.description}"
    end
  end
end
