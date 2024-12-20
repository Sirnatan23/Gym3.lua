-- Referências
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local gui = player.PlayerGui:WaitForChild("ScreenGui")
local startButton = gui:WaitForChild("StartButton")
local stopButton = gui:WaitForChild("StopButton")
local isTrainingActive = false

-- Função para iniciar o treinamento automático
local function startTraining()
    -- A variável "isTrainingActive" será usada para controlar o loop
    while isTrainingActive do
        -- Aqui você pode adicionar a lógica que automatiza o ganho de pontos de força
        -- Por exemplo, clicar em um botão ou realizar uma ação que aumente a força
        local trainingButton = game.Workspace:FindFirstChild("TrainingButton") -- Substitua pelo botão real de treinamento no jogo
        if trainingButton then
            mouse:ClickButton1Down(trainingButton.Position) -- Simula o clique no botão de treinamento
        end
        
        wait(1) -- Aguarda um segundo antes de repetir (ajuste o tempo conforme necessário)
    end
end

-- Função para parar o treinamento automático
local function stopTraining()
    isTrainingActive = false
end

-- Conectar o botão "Start" para ativar o treinamento
startButton.MouseButton1Click:Connect(function()
    isTrainingActive = true
    startTraining()
end)

-- Conectar o botão "Stop" para parar o treinamento
stopButton.MouseButton1Click:Connect(function()
    stopTraining()
end)
