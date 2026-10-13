-- Define the names of the items you are looking for
local targetNames = { "Safety Statue", "Bag" } -- Change these to the exact names of your models/parts

-- Function to search the workspace
local function locateItems()
    for _, object in ipairs(workspace:GetDescendants()) do
        for _, targetName in ipairs(targetNames) do
            if object.Name == targetName and (object:IsA("BasePart") or object:IsA("Model")) then
                print("Found " .. object.Name .. " at coordinates: " .. tostring(object:GetPivot().Position))
                
                -- Optional: Add a Highlight effect to see it through walls during testing
                if not object:FindFirstChildOfClass("Highlight") then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red highlight
                    highlight.Parent = object
                end
            end
        end
    end
end

-- Execute the search
locateItems()
