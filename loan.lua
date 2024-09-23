function calculate_new_balance(balance, monthly_payment, monthly_interest_rate)
    local interest_for_the_period = balance * monthly_interest_rate
    local principal_repayment = monthly_payment - interest_for_the_period
    local new_balance = balance - principal_repayment
    return new_balance
end

print("Enter the loan amount:")
local loan_amount = tonumber(io.read())

print("Enter the annual interest rate:")
local annual_interest_rate = tonumber(io.read())

print("Enter the monthly payment:")
local monthly_payment = tonumber(io.read())

local monthly_interest_rate = annual_interest_rate / 12 / 100

local balance = loan_amount
local balance_1 = calculate_new_balance(balance, monthly_payment, monthly_interest_rate)

local balance_2 = calculate_new_balance(balance_1, monthly_payment, monthly_interest_rate)

local balance_3 = calculate_new_balance(balance_2, monthly_payment, monthly_interest_rate)

print(string.format("Balance after 1st payment: %.2f", balance_1))
print(string.format("Balance after 2nd payment: %.2f", balance_2))
print(string.format("Balance after 3rd payment: %.2f", balance_3))
