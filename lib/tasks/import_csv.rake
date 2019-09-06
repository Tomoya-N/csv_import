namespace :import_csv do
  # rake import_csv:quizzes
  desc "Quiz CSVデータのインポート"

  task quizzes: :environment do
    Quiz.import('db/csv_data/quiz_data.csv')
  end
end
