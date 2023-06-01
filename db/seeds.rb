require "faker"
require_relative "../app/models/article"

10.times do
  title = Faker::Hipster.sentence(word_count: 4, supplemental: false, random_words_to_add: 4)
  content = Faker::Hipster.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 3)
  article = Article.create(title: title, content: content)
end
