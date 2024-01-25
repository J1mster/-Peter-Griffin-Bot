local discordia = require("discordia")
local client = discordia.Client()

print("PETER GRIFFIN ACTIVATING")

local activations = {
    "griffin",
    "peter",
    "lois",
    "chris",
    "meg",
    "stewie",
    "brian",
    "glenn",
    "cleveland",
    "quagmire",
    "joe",
    "herbert",
    "pervert",
    "bruce",
    "family"
}

local responses = {
    "hhehheehhehhehhe",
    "Freakin' sweet!",
    "Holy crap!",
    "I'm cumming... Oh Lois~ OH~! I'm cumming!",
    "Oh no Lois. A guy I know bought a car out of the paper once. 10 years later, BAM. Herpes!!",
    "A child Lois? Well if I’m a child that makes you a pedophile, and I’ll be damned if I’m going to sit here and be lectured by a pervert.",
    "I WAS JUST THERE!",
    "Dance with me Lois, dance! Dance the dance of life",
    "shimmy shimmy yay shimmy yuh",
    "Lois, where are my pants?",
    "Lois, this is not my Batman glass.",
    "I haven't been this scared since my father stopped hiding the magazines.",
    "Just because I don't care doesn't mean I don't understand.",
    "I'm not gonna lie. I'm impressed.",
    "Lois, you better watch who you're calling a child. Because if I'm a child, you know what that makes you? A pedophile. And I'll be damned if I'm gonna stand here and be lectured by a pervert.",
    "I can't swallow that. Well, I can swallow it, but it doesn't go down smoothly.",
    "Oh, I'm not like other office romances. I'm a real loose cannon, like a Dirty Harry... or a funny Harry. I'm like a funny Dirty Harry.",
    "I wanna have three kids and name them Ctrl, Alt, and Delete.",
    "I don't have a drinking problem. I drink, I get drunk, I fall down. No problem!",
    "Hey, you guys wanna see a dead body?",
    "I'm gonna go get drunk enough to make you all seem interesting.",
    "I'm not fat. I'm big-boned!",
    "I'm a winner. I win things. That's what I do.",
    "What do you mean, I can't take my pants off in the middle of this restaurant? I'm not 'technically' inside!",
    "I wish I could speak dolphin.",
    "I don't need drugs to enjoy this. Just to enhance it... like the way that midget made my wedding night unforgettable.",
    "Hey, let's talk about something else. How about those Red Sox?",
    "I can't wear skinny jeans. I have a date tonight!",
    "I haven't felt a rush like this since I won that marathon.",
    "I'm not bad. I'm just drawn that way.",
    "You know, some people think I'm cocky, but the truth is, I'm really great.",
    "I've got so many pimples right now. I could join the Ku Klux Klan.",
    "You can't just give up on a pop tart. People give up on things, and they end up being Garbage Men.",
    "I can't wait to see that woman who works in the library.",
    "I'm gonna sit on the couch and watch TV all day like a vegetable.",
    "I'm not a big fat panda. I'm the big fat panda.",
    "I need to remember this moment. I'm going to take a mental picture.",
    "I'm not afraid of anything. I'm like Superman, but without the cape, the tights, and the Kryptonite... so I guess I'm not like Superman at all.",
    "That's worse than getting a birthday card from my sister!",
    "I am the cheese! I am the best character on the show! I am better than both the salami and the bologna combined!",
    "That's more ridiculous than Paris Hilton's jail sentence!",
    "I got the power! I'm like He-Man, but with a lot more body hair.",
    "Do you know why I pulled you over? It's because I'm not wearing my seatbelt, isn't it? Dammit, Brian!",
    "Hey, Lois, remember that time I took a dump on the set of Roseanne?",
    "What are the odds of me winning the lottery? I'm gonna say 50-50.",
    "I'm like a black guy, I can't swim.",
    "I'm so hungry I could ride a horse.",
    "I'm not touching you, I'm not touching you!",
    "I feel like one of those guys who goes on a killing spree after losing a video game.",
    "I'm gonna make like a prom dress and take off early.",
    "I'm not addicted to cocaine; I just like the way it smells.",
    "I'm not addicted to porn. I'm addicted to masturbating.",
    "I'm gonna do the kind of things that nobody in their right mind would do.",
    "I'm not really a doctor; I just play one on TV.",
    "I'm gonna have a good cry in the shower like last night.",
    "I'm not the hero this city deserves, but I'm the one it needs right now.",
    "I'm not a quitter; I'm checking for squirrels!",
    "Oh my god no way, I'm in FORTNITE?!",
    "Oh my god I'm in fortnite.",
    "LOIS IM IN FORTNITE, YOU GOTTA SEE THIS",
    "GYATT!",
    "You stupid ni-"
}

retrieveToken = (function()
    local success, file = pcall(function()
        return io.open("./token.txt", "r")
    end)
    
    if not success then
        print("TOKEN FAILED: " .. file)
        return ""
    end
    
    local token = file:read("*a")
    file:close()
    
    return token
end)()

local discordia = require('discordia')
local client = discordia.Client()

client:on("ready", function()
    client:setActivity({
        name = "LOIS IM IN FORTNITE",
    })
    print("PETER GRIFFIN ACTIVE")
end)
client:on("messageCreate", function(message)
    local comp = false
    if message.author == client.user or message.author.id=="1191836718098296923" or message.author.id=="1191922358143942677" then comp = true return end
    if message.author.id == "821567060022132787" then
        if message.content == "/s1" then 
            message:delete()
            io.write("What would you like to say?\n")
            message.channel:send(io.read())
            comp = true
        end 
    end
    for index, item in pairs(activations) do 
        if string.match(message.content:lower(), ".*(".. item.. ").*") and (comp==false) then 
            comp = true
            message.channel:send(responses[math.random( 1, #responses)])
            return 
        end
    end 
end)

-- Replace 'retrieveToken' with your actual bot token
client:run("Bot " .. retrieveToken)
