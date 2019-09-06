class Quiz < ApplicationRecord
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        question: row["question"],
        answer: row["answer"]
      }
    end
    puts "インポート処理を始めます"
    begin
      Quiz.create!(list)
      puts "インポート処理が完了しました"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end
end
