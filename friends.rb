def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  # return person[:favourites][:snacks].include? food
  for snack in person[:favourites][:snacks]
      if snack == food
        return true
      end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_cash(people)
  total_cash = 0
  for person in people
    total_cash += person[:monies]
  end
  return total_cash
end
  def lend(lender, lendee, amount)
    lender[:monies] -= amount
    lendee[:monies] += amount
  end

def list_favourite_food(people)
  food = []
  for person in people
    for snack in person[:favourites][:snacks]
      food.push(snack)
    end
  end
  return food
end

def find_lonely_people(people)
  array = []
  for person in people
    if person[:friends] == []
      array.push(person[:name])
    end
  end
  return array
end
