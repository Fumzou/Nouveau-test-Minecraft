if not DarkRP then return end

TEAM_BAKER = DarkRP.createJob("Boulanger traditionnel", {
    color = Color(255, 200, 150, 255),
    model = {"models/player/Group03/male_02.mdl"},
    description = [[Fabrique pains et viennoiseries manuellement.]],
    weapons = {},
    command = "boulanger",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Métiers civils"
})

TEAM_BAKER_IND = DarkRP.createJob("Boulanger industriel", {
    color = Color(200, 200, 255, 255),
    model = {"models/player/Group03/female_02.mdl"},
    description = [[Utilise des machines automatiques pour produire rapidement.]],
    weapons = {},
    command = "boulanger_ind",
    max = 2,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Métiers civils"
})
