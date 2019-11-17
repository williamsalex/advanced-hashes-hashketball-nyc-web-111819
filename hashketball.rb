def game_hash
  hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => [{:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},{:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},{:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},{:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},{:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}]}, :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => [{:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},{:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},{:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},{:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},{:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}]}}
end

def num_points_scored(name)
  masterList = game_hash
  for x in masterList[:home][:players] do
    if x[:player_name] == name
      return x[:points]
    end
  end
  for x in masterList[:away][:players] do
    if x[:player_name] == name
      return x[:points]
    end
  end
end

def shoe_size(name)
  masterList = game_hash
  for x in masterList[:home][:players] do
    if x[:player_name] == name
      return x[:shoe]
    end
  end
  for x in masterList[:away][:players] do
    if x[:player_name] == name
      return x[:shoe]
    end
  end
end

def team_colors(name)
  masterList = game_hash
  if masterList[:home][:team_name] == name
    return masterList[:home][:colors]
  end
  if masterList[:away][:team_name] == name
    return masterList[:away][:colors]
  end
end

def team_names
  return [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team)
  hash = game_hash
  numbers = []
  if hash[:home][:team_name] == team
    for dude in hash[:home][:players] do
      numbers << dude[:number]
    end
  end
  if game_hash[:away][:team_name] == team
    for dude in game_hash[:away][:players] do
      numbers << dude[:number]
    end
  end
  numbers
end


def player_stats(name)
  masterList = game_hash
  stats = {}
  for x in masterList[:home][:players] do
    if x[:player_name] == name
      stats[:shoe] = x[:shoe]
      stats[:number] = x[:number]
      stats[:points] = x[:points]
      stats[:rebounds] = x[:rebounds]
      stats[:assists] = x[:assists]
      stats[:steals] = x[:steals]
      stats[:blocks] = x[:blocks]
      stats[:slam_dunks] = x[:slam_dunks]
    end
  end
  for x in masterList[:away][:players] do
    if x[:player_name] == name
      stats[:shoe] = x[:shoe]
      stats[:number] = x[:number]
      stats[:points] = x[:points]
      stats[:rebounds] = x[:rebounds]
      stats[:assists] = x[:assists]
      stats[:steals] = x[:steals]
      stats[:blocks] = x[:blocks]
      stats[:slam_dunks] = x[:slam_dunks]
    end
  end
  return stats
end

def big_shoe_rebounds
  masterList = game_hash
  largestShoe = [0, "hi"]
  for x in masterList[:home][:players] do
      if x[:shoe] > largestShoe[0]
        largestShoe[0] = x[:shoe]
        largestShoe[1] = x[:rebounds]
    end
  end
  for x in masterList[:away][:players] do
      if x[:shoe] > largestShoe[0]
        largestShoe[0] = x[:shoe]
        largestShoe[1] = x[:rebounds]
    end
  end
  return largestShoe[1]
end

def most_points_scored
  masterList = game_hash
  largestShoe = [0, "hi"]
  for x in masterList[:home][:players] do
      if x[:points] > largestShoe[0]
        largestShoe[0] = x[:points]
        largestShoe[1] = x[:player_name]
    end
  end
  for x in masterList[:away][:players] do
      if x[:points] > largestShoe[0]
        largestShoe[0] = x[:points]
        largestShoe[1] = x[:player_name]
    end
  end
  return largestShoe[1]
end