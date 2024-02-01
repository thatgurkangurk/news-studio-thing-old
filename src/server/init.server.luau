print("server has started")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local Models = ReplicatedStorage.Models

local studio = Models.StudioStructure:Clone()
studio.Parent = Workspace

local screen = Models.Screen:Clone()
screen.Parent = studio

local stageLights = Models.StageLights:Clone()
stageLights.Parent = studio