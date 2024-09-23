function IsPrime(num)
  if num <= 1 then return false end
  if num == 2 then return true end
  if num % 2 == 0 then return false end

  for i = 3, math.sqrt(num), 2 do
    if num % i == 0 then return false end
  end
  return true
end

function CategorizeNumber(input)
  if type(input) ~= "number" then
    error("Input harus berupa bilangan bulat")
  elseif input == 0 then
    return "Nol"
  elseif input < 0 then
    return "Negatif"
  elseif IsPrime(input) then
    return "Prima"
  elseif input % 2 == 0 then
    return "Genap"
  else
    return "Ganjil"
  end
end

-- Testing the function
print(CategorizeNumber(15)) -- Ganjil
print(CategorizeNumber(12)) -- Genap
print(CategorizeNumber(17)) -- Prima
print(CategorizeNumber(0)) -- Nol
print(CategorizeNumber(-3)) -- Negatif

-- Handling error
local status, err = pcall(function()
  CategorizeNumber("abc")
end)

if not status then
  print(err)
end