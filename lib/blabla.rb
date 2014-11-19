class Blabla
  WORD_LIST = File.read(File.dirname(__FILE__)+"/randomWords.txt").split
  def self.get_random_words(n)
    WORD_LIST.sample(n)
  end

  def self.generate_author
    author = get_random_words(2)
    "#{author[0].capitalize} #{author[1].capitalize}"
  end

  def self.generate_sentence
    get_random_words(rand(9)+1).join(' ').capitalize << "."
  end

  def self.generate_title
    get_random_words(rand(4)+1).join(' ').capitalize << "."
  end

  def self.generate_article
    article = ""
    rand(10).times { article += generate_sentence }
    article
  end

  def self.random_number
    rand(100)
  end
end