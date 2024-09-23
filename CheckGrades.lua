function CheckGrades(grades)
  for i, grade in ipairs(grades) do
    if type(grade) ~= "number" then
      error("Invalid input. Please input a number.")
    end

    local predicate

    if grade >= 90 then
      predicate = "A"
    elseif grade >= 80 then
      predicate = "B"
    elseif grade >= 70 then
      predicate = "C"
    elseif grade >= 60 then
      predicate = "D"
    else
      predicate = "E"
    end

    print(string.format("Grade %d: %d (%s)", i, grade, predicate))
  end
end

-- Grades to check
local studentGrades = { 95, 85, 75, 65, 55 }

-- Calling the function
local status, err = pcall(function()
  CheckGrades(studentGrades)
end)

-- Error handling
if not status then
  print(err)
end