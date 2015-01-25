# This migration comes from essential_selling (originally 20141221102940)
class CreateEssentialSellingShowcaseBlocks < ActiveRecord::Migration
  def up
    create_table :essential_selling_showcase_blocks do |t|
      t.string :style
      t.string :images
      t.string :link
      t.string :video_url

      t.timestamps
    end
    EssentialSelling::ShowcaseBlock.create_translation_table!(
      title: :string,
      subtitle: :text,
      text: :text,
      link_text: :string
    )
  end
  
  def down
    drop_table :essential_selling_showcase_blocks
    EssentialSelling::ShowcaseBlock.drop_translation_table!
  end
end
