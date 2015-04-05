class AddCorpPartnerTypeToRefineryCorpPartners < ActiveRecord::Migration
  def change
    add_column :refinery_corp_partners, :corp_partner_type_id, :integer
  end
end
