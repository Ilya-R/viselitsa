current_path = File.dirname(__FILE__)

require current_path + '/lib/game.rb'
require current_path + '/lib/result_printer.rb'
require current_path + '/lib/word_reader.rb'

VERSION = "Игра виселица \n".freeze

word_reader = WordReader.new
words_file_name = current_path + '/data/words.txt'
word = word_reader.get_one_random_word_from_file(words_file_name)

game = Game.new(word)
game.version = VERSION

printer = ResultPrinter.new(game)

while game.in_progress?
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
