class RailsComMigration9 < ActiveRecord::Migration[6.0]

  def change


















































    add_column :wechat_apps, :help, :string
    remove_column :wechat_apps, :help_feedback, :string



























































































































  end

end
