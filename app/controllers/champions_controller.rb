class ChampionsController < ApplicationController
  def name:string
    response = HTTParty.get("https://na1.api.riotgames.com/lol/static-data/v3/champions?locale=en_US&champListData=lore&champListData=spells&dataById=false")

@name = response ['name']
@lore = response ['lore']
@spells= response ['spells']

  end


  def index

    # Creates an array of champions that our user can choose from on our index page
    @states = %w(Aatrox Ahri Akali Alistar Amumu Anivia Annie Ashe Aurelion Sol Azir Bard Blitzcrank Brand Braum Caitlyn Camille Cassiopeia Cho'Gath Corki Darius Diana Dr_Mundo Draven Ekko Elise Evelynn Ezreal Fiddlesticks Fiora Fizz Galio Gangplank Garen Gnar Gragas Graves Hecarim Heimerdinger Illaoi Irelia Ivern Janna Jarvan_IV Jax Jayce Jhin Jinx KaiSa Kalista Karma Karthus Kassadin Katarina Kayle Kayn Kennen Kha_Zix Kindred Kled Kog_Maw LeBlanc Lee Sin Leona Lissandra Lucian Lulu Lux Malphite Malzahar Maokai Master_Yi Miss_Fortune Mordekaiser Morgana Nami Nasus Nautilus Nidalee Nocturne Nunu Olaf Orianna Ornn Pantheon Poppy Quinn Rakan Rammus Rek_Sai Renekton Rengar Riven Rumble Ryze Sejuani Shaco Shen Shyvana Singed Sion Sivir Skarner Sona Soraka Swain Syndra Tahm Kench Taliyah Talon Taric Teemo Thresh Tristana Trundle Tryndamere Twisted_Fate Twitch Udyr Urgot Varus Vayne Veigar Vel_Koz Vi Viktor Vladimir Volibear Warwick Wukong Xayah Xerath Xin_Zhao Yasuo Yorick Zac Zed Ziggs Zilean Zoe Zyra).sort!
  end

  def lore:string
  end

  def spells:List[ChampionSpellDto]
  end
end
