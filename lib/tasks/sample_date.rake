namespace :db do
  desc "sample date" 
  task populate: :environment do
    make_users
  end

  def make_one
    User.create!(username: "京戟", email: "jingji@yipinuu.com", password: "jingji123", password_confirmation: "jingji123") 
    specol1 = Specols.new(title:"太白山", user_id:"1", modify: false)
    specol1.save
    specol1.spepages.create!(pagename:"日记", specol_id:"1")
  make_article
    Article.create!(title:"侠客行--李太白", content:"赵客缦胡缨，吴钩霜雪明。银鞍照白马，飒沓如流星。
十步杀一人，千里不留行。事了拂衣去，深藏身与名。
闲过信陵饮，脱剑膝前横。将炙啖朱亥，持觞劝侯嬴。
三杯吐然诺，五岳倒为轻。眼花耳热后，意气素霓生。
救赵挥金锤，邯郸先震惊。千秋二壮士，烜赫大梁城。
纵死侠骨香，不惭世上英。谁能书阁下，白首太玄经。", user_id:"1", specol_id:"1", spepage_id:"2")
  end

  def make_users
    99.times do |n|
    name = Faker::Name.name
    email = "Q-#{n+1}@yipinuu.com"
    password = "Password"    
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)

    title = name
    user_id = "#{n+2}"
    modify = false
    Specol.create!(title: title,
                   user_id: user_id,
                   modify: modify)
    
    pagename = "默认"
    specol_id = "#{n+2}"
    Spepage.create!(pagename: pagename,
                    specol_id: specol_id)

    content = Faker::Lorem.sentence(10)
    spepage_id = "#{n+2}"
    Article.create!(title: title,
                    content: content,
                    user_id: user_id,
                    specol_id: specol_id,
                    spepage_id: spepage_id)
    end
  end

end
                 
