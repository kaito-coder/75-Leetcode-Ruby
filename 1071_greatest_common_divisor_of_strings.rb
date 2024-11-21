def gcd_of_strings(str1, str2)
  return str1[0, gcd(str1.length, str2.length)] if str1 + str2 == str2 + str1
  ""
end

def gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end