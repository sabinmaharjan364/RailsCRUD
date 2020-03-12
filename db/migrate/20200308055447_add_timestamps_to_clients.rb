class AddTimestampsToClients < ActiveRecord::Migration[6.0]
  def change
    change_table(:clients) do |t|
        t.timestamps
    end
  end
end
