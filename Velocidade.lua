-- TESTE DE VELOCIDADE SIMPLES
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Cria a tela
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

-- Cria o botão
local Botao = Instance.new("TextButton")
Botao.Size = UDim2.new(0, 150, 0, 50)
Botao.Position = UDim2.new(0.5, -75, 0.5, -25)
Botao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Botao.Text = "⚡ VELOCIDADE: OFF"
Botao.TextColor3 = Color3.fromRGB(0, 0, 0)
Botao.Font = Enum.Font.GothamBold
Botao.TextSize = 16
Botao.Parent = ScreenGui

-- Lógica do botão
local ligado = false
Botao.MouseButton1Click:Connect(function()
    ligado = not ligado
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        if ligado then
            char.Humanoid.WalkSpeed = 100
            Botao.Text = "⚡ VELOCIDADE: ON"
            Botao.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            char.Humanoid.WalkSpeed = 16
            Botao.Text = "⚡ VELOCIDADE: OFF"
            Botao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        end
    end
end)
