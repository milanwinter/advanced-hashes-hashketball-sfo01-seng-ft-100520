require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def player_helper
  game_hash[:away][:players].concat(game_hash[:home][:players])
end

def num_points_scored(player)
  # count = 0
  # while count < player_helper.length
  #   if player_helper[count][:player_name] == player
  #     return player_helper[count][:points]
  #   end
  #     count += 1
  # end
  player_helper[player][:points]
end

def shoe_size(player)
  count = 0
  while count < player_helper.length
    if player_helper[count][:player_name] == player
      return player_helper[count][:shoe]
    end
    count += 1
  end
end

def team_colors(team_name)
  case team_name
  when game_hash[:home][:team_name]
    game_hash[:home][:colors]
  when game_hash[:away][:team_name]
    game_hash[:away][:colors]
  end
end

def team_names
  teams_array = []
  teams_array.push(game_hash[:away][:team_name])
  teams_array.push(game_hash[:home][:team_name])
  teams_array
end

def player_numbers(team)
  case team
  when game_hash[:home][:team_name]
    game_hash[:home][:players].map do |player|
      player[:number]
    end
  when game_hash[:away][:team_name]
    game_hash[:away][:players].map do |player|
      player[:number]
    end
  end
end


def player_stats(player)
  count = 0
  while count < player_helper.length
    if player_helper[count][:player_name] == player
      return player_helper[count]
    end
    count += 1
  end
end

def shoe_size_helper
  count = 0
  biggest_shoe = 0
  biggest_shoe_player = nil
  while count < player_helper.length
    if player_helper[count][:shoe] > biggest_shoe
      biggest_shoe = player_helper[count][:shoe]
      biggest_shoe_player = player_helper[count][:player_name]
    end
    count += 1
  end
  return biggest_shoe_player
end


def big_shoe_rebounds
  player_helper.each do |element|
    if element[:player_name] == shoe_size_helper
      return element[:rebounds]
    end
  end
end
