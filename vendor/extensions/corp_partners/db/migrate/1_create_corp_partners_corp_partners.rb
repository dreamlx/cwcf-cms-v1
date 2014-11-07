class CreateCorpPartnersCorpPartners < ActiveRecord::Migration

  def up
    create_table :refinery_corp_partners do |t|
      t.string :title
      t.integer :corp_partner_avatar_id
      t.string :main_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-corp_partners"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/corp_partners/corp_partners"})
    end

    drop_table :refinery_corp_partners

  end

end
