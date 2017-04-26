require ('open-uri')
require ('json')

get_info = JSON.parse open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=').read

numbers = []
get_info.each do |k, v|
   numbers << v if k.include? 'drwtNo'
end
numbers.sort!

bonus_number = get_info["bnusNo"]
my_numbers = [*1..45].sample(6).sort
result = numbers & my_numbers

print "이번주 로또 번호 : #{numbers} and 보너스 번호 : #{bonus_number} "; puts
print "your numbers : #{my_numbers} "; puts
print "Match numbers : #{result}."; puts
