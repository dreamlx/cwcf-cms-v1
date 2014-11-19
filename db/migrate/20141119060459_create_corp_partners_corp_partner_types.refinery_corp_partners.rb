# This migration comes from refinery_corp_partners (originally 2)
class CreateCorpPartnersCorpPartnerTypes < ActiveRecord::Migration

  def up
    create_table :refinery_corp_partners_corp_partner_types do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-corp_partners"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/corp_partners/corp_partner_types"})
    end

    drop_table :refinery_corp_partners_corp_partner_types

  end

end
