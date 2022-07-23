local function getSmallestDistance(Distances)
	if #Distances < 2 then return 0 end
	local SmallestDistance = math.huge
	for i, v in ipairs(Distances) do
		for o, b in ipairs(Distances) do
			local Distance = (v - b).Magnitude -- Didn't bother using squared distance lmao
			if o ~= i and Distance < SmallestDistance then
				SmallestDistance = Distance
			end
		end
	end
	return SmallestDistance
end

print(getSmallestDistance({Vector3.new(-6, 34, 10), Vector3.new(66, -53, -65), Vector3.new(-54, 7, -64), Vector3.new(7, -75, -51), Vector3.new(68, -81, 18)}))
print(getSmallestDistance({Vector3.new(30, -50, 34), Vector3.new(-93, 100, -85), Vector3.new(-92, 67, -50), Vector3.new(-100, -88, 97), Vector3.new(53, -55, -37)}))
