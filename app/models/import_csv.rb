class ImportCsv < ApplicationRecord
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      Quiz.create(
        question: row["question"],
        answer: row["answer"]
      )
    end
  end
end
