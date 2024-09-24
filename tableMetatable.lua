-- Base class SmartPhones
SmartPhones = {}
SmartPhones.__index = SmartPhones

function SmartPhones:new(brand, model, price)
  local instance = {
    brand = brand,
    model = model,
    price = price
  }
  setmetatable(instance, SmartPhones)
  return instance
end

function SmartPhones:charging()
  print("Charging " .. self.model)
end

-- Derived class iOS
iOS = SmartPhones:new()
iOS.__index = iOS

function iOS:new(brand, model, price)
  local instance = SmartPhones:new(brand, model, price)
  setmetatable(instance, iOS)
  return instance
end

function iOS:airDrop()
  print("iOS has AirDrop")
end

-- Derived class Android
Android = SmartPhones:new()
Android.__index = Android

function Android:new(brand, model, price)
  local instance = SmartPhones:new(brand, model, price)
  setmetatable(instance, Android)
  return instance
end

function Android:splitScreen()
  print("Android has split screen")
end

-- Create instances
local iPhone = iOS:new("Apple", "iPhone 12", 12000000)
local samsung = Android:new("Samsung", "Galaxy S21", 10000000)

-- Call methods
iPhone:charging() -- Charging iPhone 12
iPhone:airDrop() -- iOS has AirDrop

samsung:charging() -- Charging Galaxy S21
samsung:splitScreen() -- Android has split screen