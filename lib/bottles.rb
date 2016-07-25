class Bottles

  def verse(nb)
    if nb == 0
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    elsif nb == 1
      <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    elsif nb == 2
      <<-VERSE
#{nb} bottles of beer on the wall, #{nb} bottles of beer.
Take one down and pass it around, #{nb-1} bottle of beer on the wall.
      VERSE
    else
      <<-VERSE
#{nb} bottles of beer on the wall, #{nb} bottles of beer.
Take one down and pass it around, #{nb-1} bottles of beer on the wall.
      VERSE
    end
  end

  def verses(nb1, nb2)
    nb1.downto(nb2).inject([]) do |array, n|
      array << verse(n)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
end

# 18min
# 23.03 =>
