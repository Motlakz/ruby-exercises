require 'spec_helper'
require_relative '../exercises/string_exercises'

RSpec.describe 'String Exercises' do

  describe 'concatenation example exercise' do

    it 'returns "Classic Ruby"' do
      expect(concatenate_example('Ruby')).to eq('Classic Ruby')
    end
  end

  describe 'concatenation exercise' do

    it 'returns "Hello world!"' do
      expect(concatenate('world')).to eq('Hello world!')
    end

    def concatenate(str)
      return "Hello #{str}!"
    end    

    it 'returns "Hello universe!"' do
      expect(concatenate('universe')).to eq('Hello universe!')
    end

    def concatenate(str2)
      return "Hello #{str2}!"
    end
    
  end

  describe 'substrings exercise' do

    it 'returns the first 4 letters of the word' do
      expect(substrings('chocolate')).to eq('choc')
    end

    def substrings(chocolate)
      return "chocolate"[0, 4]
    end
    
  end

  describe 'capitalizing exercise' do

    it 'capitalizes a word' do
      expect(capitalize('paris')).to eq('Paris')
    end

    def capitalize(word)
      word.capitalize
    end

    it 'only capitalizes the first word if there are multiple words' do
      expect(capitalize('miami in the summer')).to eq('Miami in the summer')
    end

    def cap(words_in_a_sentence)
      words_in_a_sentence = 'miami in the summer'
      words_in_a_sentence.capitalize
    end

    it 'leaves an already capitalized word as is' do
      expect(capitalize('London')).to eq('London')
    end

    def caps(word)
      word = 'London'
      return word
    end
  end

  describe 'uppercasing exercise' do

    it 'uppercases a word' do
      expect(uppercase('small')).to eq('SMALL')
    end

    def uppercase(word)
      return word.upcase
    end

    it 'uppercases multiple words' do
      expect(uppercase('make me bigger')).to eq('MAKE ME BIGGER')
    end

    def titalize(words)
      return words.titalize
    end
  end


  describe 'downcasing exercise' do

    it 'downcases a word' do
      expect(downcase('LARGE')).to eq('large')
    end

    def downcase(text)
      return text.downcase
    end

    it 'downcases multiple words' do
      expect(downcase('MAKE ME SMALLER')).to eq('make me smaller')
    end

    def downsize(words)
      words = 'A BUNCH OF WORDS'
      return words.downcase
    end
  end

  describe 'empty exercise' do

    it 'returns true if string is empty' do
      expect(empty_string('')).to eq(true)
    end

    def empty_string(str)
      str = ''
      str.empty?
    end

    it 'returns false if string is not empty' do
      expect(string_is_empty('wow')).to eq(false)
    end

    def string_is_empty(string)
      string = 'word'
      string.empty?
    end
  end

  describe 'length exercise' do

    it 'returns the length of a word' do
      expect(string_length('longitude')).to eq(9)
    end

    def string_length(word)
      word = 'longitude'
      word.length
    end

    it 'returns the length of a string with multiple words' do
      expect(multiple_length('i am quite long')).to eq(15)
    end

    def multiple_length(sentence)
      sentence = 'I am quite long'
      sentence.length
    end
  end

  describe 'reverse exercise' do

    it 'reverses a word' do
      expect(reverse('desrever')).to eq('reversed')
    end

    def reverse(word)
      word = 'desrever'
      word.reverse
    end

    it 'reverses multiple words' do
      expect(revert('dnuora kcab')).to eq('back around')
    end

    def revert(words)
      words = 'dnuora kcab'
      words.reverse
    end
  end

  describe 'remove spaces exercise' do

    it 'removes a single space' do
      expect(space_remover('white space')).to eq('whitespace')
    end

    def space_remover(space)
      space.gsub(' ', '')
    end

    it 'removes multiple spaces' do
      expect(space_removal('many white spaces')).to eq('manywhitespaces')
    end

    def space_removal(spaces)
      spaces.gsub(' ', '')
    end
  end
end
