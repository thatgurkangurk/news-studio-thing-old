print("server has started")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local Models = ReplicatedStorage.Models

local studio = Models.StudioStructure:Clone()
studio.Parent = Workspace