# Класс отвечающий за получение слова из файла
class WordReader
  def read_from_args
    ARGV[0]
  end

  def get_one_random_word_from_file(file_name)
    read_all_words_from_file(file_name).sample.chomp
  end

  def read_all_words_from_file(file_name)
    return nil unless File.exist?(file_name)

    f = File.new(file_name, 'r:UTF-8')
    lines = f.readlines
    f.close

    lines
  end
end
