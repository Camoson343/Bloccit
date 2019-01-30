class ChangeReslovedToResolvedOnQuestions < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :resloved, :resolved
  end
end
