// 1. Prove "aa" would match "å" in a Danish tailoring of the UCA and "ß" would match against "ss" in a German tailoring of the UCA (string.Compare("å", "aa", TODO))

// 2. Sort array of strings ["z", "ö"] in a German and Swedish tailoring of the UCA (new string [] {"z", "ö"}.Order(StringComparer.Create(TODO)).ToList().ForEach(c => Console.WriteLine(c));)


Console.WriteLine(["z", "ö"].Sort());
