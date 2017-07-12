
insert ignore into db_example.university (location, name, about, image_url) values
  ('Orlando', 'University Of Central Florida', "The University of Central Florida, or UCF, is an American metropolitan public research university in Orlando, Florida.", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/UCF_Knights_logo.svg/2000px-UCF_Knights_logo.svg.png")
  ,('Gainesville', 'University of Florida', "The University of Florida is an American public land-grant, sea-grant, and space-grant research university on a 2,000-acre campus in Gainesville, Florida.", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/University_of_Florida_Vertical_Signature.svg/1032px-University_of_Florida_Vertical_Signature.svg.png")
  ,('Tampa', 'University of South Florida', "The University of South Florida, also known as USF, is an American metropolitan public research university located in Tampa, Florida, United States.", "http://mediad.publicbroadcasting.net/p/wusf/files/201609/usf.gif")
  ,('Pensacola', 'University of West Florida', "The University of West Florida, also known as West Florida and UWF, is a mid-sized public university located in Pensacola, Florida, United States.", "http://uwf.edu/media/university-of-west-florida/style-assets/newhomepage/images/UWF-Athletics_Logo.svg")
  ,('Cocoa', 'Eastern Florida State College', "Eastern Florida State College, formerly Brevard Community College, is a public state college on Florida's Space Coast, in Brevard County, Florida.","https://thunder.cdn.overdrive.com/logos/crushed/5488.png?1")
  ,('Orlando', 'Full Sail', "Located in Winter Park, Florida, Full Sail University offers associate's, bachelor's, and master's degrees designed for the world of entertainment, media, arts, and technology.","http://reblhq.com/clients/fullsail-logo.png")
  ,('Orlando', 'Valencia', "Valencia provides opportunities for academic, technical and life-long learning in a collaborative culture dedicated to inquiry, results and excellence.","http://www.hccmo.org/wp-content/uploads/2015/01/Valencia-College-trustees-400x240.png")
  ,('Miami', 'Florida International University', "Florida International University is an American metropolitan public research university in Greater Miami, Florida, United States. FIU has two major campuses in Miami-Dade County, with its main campus in University Park.", "http://www.fiu.edu/_assets/images/core/fiu-blue-small.png")
  ,('Fort Myers', 'Florida Gulf Coast University', "Florida Gulf Coast University is a public university located in Fort Myers, Florida, United States, part of unincorporated Lee County. The university belongs to the 12-campus State University System of Florida.", "http://cdn.bleacherreport.net/images/team_logos/328x328/florida_gulf_coast.png")
  ,('Tallahassee', 'Florida A&M University', "Florida Agricultural and Mechanical University, commonly known as FAMU, is a public, historically black university in Tallahassee, Florida, United States.","https://upload.wikimedia.org/wikipedia/en/4/44/Florida_A%26M_University_seal.png");

insert IGNORE into db_example.user (name, email, password,uni_id) values
  ("Felicity","Felicity.Pullman@knights.ucf.edu","jkaxIYJV",1), ("Sarah","Sarah.Turner@ufl.edu","XtO#usbh",2), ("David","David.Berry@usf.edu","K.ov2VDl",3), ("Phil","Phil.Taylor@uwf.edu","l7XGlKxC",4), ("Keith","Keith.Slater@uef.edu","eiR-RVAo",5), ("Dan","Dan.Kelly@fullsail.edu","v'9PUlcH",6), ("Felicity","Felicity.Taylor@valencia.edu","UMYeI4Uv",7), ("Christian","Christian.Carr@fiu.edu","WStmHy-C",8), ("Connor","Connor.May@fgu.edu","00svFQim",9), ("Jennifer","Jennifer.MacDonald@famu.edu","OIJqZpe4",10),
("Yvonne","Yvonne.Chapman@knights.ucf.edu","2ir4ksKp",1), ("Caroline","Caroline.Duncan@ufl.edu","h?KjuCy!",2), ("Oliver","Oliver.Gill@usf.edu","UmK,LBMO",3), ("Joanne","Joanne.Edmunds@uwf.edu","Mwa7W4Rx",4), ("Dorothy","Dorothy.Ferguson@uef.edu",",00S3uMu",5), ("Michelle","Michelle.Brown@fullsail.edu","UBMM4J6N",6), ("Lucas","Lucas.Powell@valencia.edu","aloPZDJV",7), ("Liam","Liam.Avery@fiu.edu","eZ31ckol",8), ("John","John.Butler@fgu.edu","QZc!MAi1",9), ("Justin","Justin.Sharp@famu.edu","cj.?Wpmg",10),
("Gordon","Gordon.Hardacre@knights.ucf.edu","iALoKPd3",1), ("Harry","Harry.Davies@ufl.edu","n,ka0d,O",2), ("Joshua","Joshua.Terry@usf.edu","##TUcLp?",3), ("Rose","Rose.Paterson@uwf.edu","g2YQ8jP9",4), ("Claire","Claire.Springer@uef.edu","C-'0PABY",5), ("Cameron","Cameron.Rampling@fullsail.edu","MG#D,BGQ",6), ("Jason","Jason.Miller@valencia.edu","k87puwtp",7), ("Andrea","Andrea.Russell@fiu.edu","MCLItq86",8), ("Lily","Lily.Kerr@fgu.edu","4?0RaDJV",9), ("Oliver","Oliver.McDonald@famu.edu","8?UgMlS6",10),
("Jacob","Jacob.Edmunds@knights.ucf.edu","Dc6RFU7g",1), ("Leonard","Leonard.Piper@ufl.edu","2h#AEHpm",2), ("Jennifer","Jennifer.Newman@usf.edu","qx7hziy.",3), ("Dan","Dan.Pullman@uwf.edu","GA1pcSB.",4), ("Oliver","Oliver.Buckland@uef.edu","r?rjsFuL",5), ("Benjamin","Benjamin.MacLeod@fullsail.edu","lTsLN2S5",6), ("Benjamin","Benjamin.Underwood@valencia.edu","Ytjca5,W",7), ("Jacob","Jacob.Cornish@fiu.edu","lAshXJ?o",8), ("Caroline","Caroline.Henderson@fgu.edu","pMhVZYL-",9), ("Bella","Bella.Young@famu.edu","IU7#5!N1",10),
("Angela","Angela.Greene@knights.ucf.edu","3aRI1RVg",1), ("Una","Una.MacDonald@ufl.edu","dbKuQ64k",2), ("Penelope","Penelope.Peake@usf.edu","xpwisjV9",3), ("Nicholas","Nicholas.Carr@uwf.edu","'N4ZJjwK",4), ("Katherine","Katherine.Hill@uef.edu","w9Bg9avk",5), ("Warren","Warren.Berry@fullsail.edu",".epaFUkK",6), ("Gordon","Gordon.McDonald@valencia.edu","w1QQxw9R",7), ("Stewart","Stewart.Taylor@fiu.edu","'tDIxsv9",8), ("Lauren","Lauren.Edmunds@fgu.edu","ufSzAIYq",9), ("Jason","Jason.Kelly@famu.edu","viXv1CsZ",10),
("Anna","Anna.Hamilton@knights.ucf.edu","xdW'd.AP",1), ("Bernadette","Bernadette.Berry@ufl.edu","jUZawwLS",2), ("Anthony","Anthony.Dickens@usf.edu","uBNBH#Su",3), ("Thomas","Thomas.Sutherland@uwf.edu","wSTkEGG8",4), ("Jessica","Jessica.Stewart@uef.edu","ab19mboP",5), ("Faith","Faith.Poole@fullsail.edu","nFTg!wsN",6), ("Max","Max.Grant@valencia.edu","R!aTafuX",7), ("Andrew","Andrew.Greene@fiu.edu","oO3fp#a7",8), ("Amelia","Amelia.Ince@fgu.edu","OCrJBj7Q",9), ("Jacob","Jacob.Lee@famu.edu","53sy7El4",10),
("Stewart","Stewart.Duncan@knights.ucf.edu","H4jdWz!n",1), ("Ian","Ian.Hudson@ufl.edu","G2lamoP-",2), ("Gabrielle","Gabrielle.Lawrence@usf.edu","YZjwdaMc",3), ("Edward","Edward.Hudson@uwf.edu","L1BPtDRX",4), ("Theresa","Theresa.MacLeod@uef.edu","xyhHrz6M",5), ("Carolyn","Carolyn.Sanderson@fullsail.edu","zZ49Ay.a",6), ("Yvonne","Yvonne.Gray@valencia.edu","gMqppV!P",7), ("Natalie","Natalie.Scott@fiu.edu","RtlmNL!j",8), ("Richard","Richard.Allan@fgu.edu","vV0XDsfG",9), ("Liam","Liam.Alsop@famu.edu","fT0s4u8w",10),
("Sam","Sam.Grant@knights.ucf.edu","Cqgp0Pjj",1), ("Maria","Maria.Randall@ufl.edu","Pf2h3y'Z",2), ("Amanda","Amanda.Knox@usf.edu","Ebyi'rf#",3), ("Carol","Carol.Wright@uwf.edu","j!,s1y#'",4), ("Tracey","Tracey.Smith@uef.edu","ynBvd7Al",5), ("Sophie","Sophie.Gibson@fullsail.edu","8oOav#RQ",6), ("Jan","Jan.Lewis@valencia.edu","J5TIpUiY",7), ("Fiona","Fiona.Hill@fiu.edu",".6a#F.kV",8), ("Adrian","Adrian.King@fgu.edu","Zy4I.I.O",9), ("Megan","Megan.Ferguson@famu.edu","p4,kQr9p",10),
("Megan","Megan.Rees@knights.ucf.edu","TKQrIWey",1), ("Maria","Maria.Rutherford@ufl.edu","oI5aP.kj",2), ("William","William.Skinner@usf.edu","a.#CQk0v",3), ("Wendy","Wendy.Hart@uwf.edu","kdE!iSLn",4), ("Amy","Amy.Jackson@uef.edu","-P?i7bm1",5), ("Jonathan","Jonathan.Morrison@fullsail.edu","u!pWQG,I",6), ("Wanda","Wanda.Quinn@valencia.edu","5!-YiOdP",7), ("Lily","Lily.Forsyth@fiu.edu","NvJ8md1O",8), ("Lauren","Lauren.Paige@fgu.edu","b5t6.X0U",9), ("Amelia","Amelia.Mills@famu.edu","j'MmcMtk",10),
("Alexander","Alexander.Lyman@knights.ucf.edu","4p6,bVEm",1), ("Ryan","Ryan.Ellison@ufl.edu","uOmzk5A3",2), ("Trevor","Trevor.Slater@usf.edu","Bx9zXGr9",3), ("Jonathan","Jonathan.Cameron@uwf.edu","vG82et7V",4), ("Blake","Blake.Dickens@uef.edu","jn?QKTTZ",5), ("Carl","Carl.Quinn@fullsail.edu","1WoXb?Mj",6), ("Frank","Frank.Lawrence@valencia.edu","AkRc6LC1",7), ("Connor","Connor.Mills@fiu.edu","dsaJBzr8",8), ("Zoe","Zoe.Wright@fgu.edu","h1ZsvzBK",9), ("Jan","Jan.Lee@famu.edu","vSQQ!-dV",10),
("Theresa","Theresa.Piper@knights.ucf.edu","OqC!4?QW",1), ("Sue","Sue.Turner@ufl.edu","4NU2zSb-",2), ("Rose","Rose.McDonald@usf.edu","02Twvl,6",3), ("Adam","Adam.Newman@uwf.edu","m#y?X4-.",4), ("Sarah","Sarah.Berry@uef.edu","8G.'.VM2",5), ("Richard","Richard.Kelly@fullsail.edu","JoA6dMlT",6), ("James","James.Wilkins@valencia.edu","5J3NhKw.",7), ("James","James.Hart@fiu.edu","LfsQlT2b",8), ("Max","Max.Fisher@fgu.edu","cP13Zwgt",9), ("Olivia","Olivia.Berry@famu.edu","r-qEsgxB",10),
("Natalie","Natalie.Pullman@knights.ucf.edu","P6HtHrBO",1), ("Diana","Diana.Jackson@ufl.edu","#WSMIC#V",2), ("Mary","Mary.James@usf.edu","'IsFxBMe",3), ("Natalie","Natalie.Murray@uwf.edu","m2x-FSWa",4), ("Audrey","Audrey.Avery@uef.edu","I1EN8'h,",5), ("Robert","Robert.Hart@fullsail.edu","6bQYOaa1",6), ("Lauren","Lauren.MacLeod@valencia.edu","BbXrRZlU",7), ("Connor","Connor.Hunter@fiu.edu","yS#.VpWB",8), ("Joe","Joe.Henderson@fgu.edu","Q06UUTIG",9), ("Stewart","Stewart.Marshall@famu.edu","AgqTNytg",10),
("Max","Max.Baker@knights.ucf.edu","rWotTsIY",1), ("Olivia","Olivia.Bell@ufl.edu","wV8p7EEH",2), ("Hannah","Hannah.Duncan@usf.edu","cWNg1Uyu",3), ("Anne","Anne.Robertson@uwf.edu","WEqu-Zwg",4), ("Vanessa","Vanessa.Turner@uef.edu","!kE8fCkJ",5), ("Cameron","Cameron.Ross@fullsail.edu","5dNx3k01",6), ("Audrey","Audrey.Forsyth@valencia.edu","QDLeusrU",7), ("Kylie","Kylie.Allan@fiu.edu","wzTqf!br",8), ("Katherine","Katherine.Mitchell@fgu.edu","p9!QDUFk",9), ("Yvonne","Yvonne.McDonald@famu.edu","FET,OcVM",10),
("Paul","Paul.MacLeod@knights.ucf.edu","FgnHY4Nc",1), ("Boris","Boris.Ferguson@ufl.edu","oWJ!dCpj",2), ("Lily","Lily.Nolan@usf.edu","6Nf?TN'b",3), ("Faith","Faith.Scott@uwf.edu","HBn-UN4Y",4), ("Joanne","Joanne.Wilson@uef.edu","'V9w7R2S",5), ("Lucas","Lucas.Smith@fullsail.edu","NLnwoF-O",6), ("Cameron","Cameron.Fisher@valencia.edu","QrJu'F?#",7), ("Irene","Irene.Grant@fiu.edu","y2Li72iq",8), ("Fiona","Fiona.Hunter@fgu.edu","pAV#IMjY",9), ("Gordon","Gordon.Baker@famu.edu","FZJBRRNJ",10),
("Jan","Jan.Forsyth@knights.ucf.edu","lE7q#PEd",1), ("Caroline","Caroline.Clarkson@ufl.edu","?1!CcKdv",2), ("Steven","Steven.Gibson@usf.edu","EGegvHrK",3), ("Alexandra","Alexandra.Miller@uwf.edu","E5-KK'?,",4), ("Deirdre","Deirdre.Glover@uef.edu","3Fs-AeNm",5), ("Elizabeth","Elizabeth.Henderson@fullsail.edu","hBgj7m!X",6), ("Joan","Joan.Ellison@valencia.edu","SDLVGaEP",7), ("Justin","Justin.Russell@fiu.edu","!8mhEz!6",8), ("Phil","Phil.Carr@fgu.edu","B#SugrsU",9), ("Charles","Charles.Coleman@famu.edu","P-zoGgSq",10),
("Jonathan","Jonathan.May@knights.ucf.edu","Z9x,!qcq",1), ("Matt","Matt.Randall@ufl.edu","l#RW!3B#",2), ("Melanie","Melanie.May@usf.edu",".TY2jGJY",3), ("Michael","Michael.Davies@uwf.edu","g.Y!7Hey",4), ("Anthony","Anthony.Underwood@uef.edu","pIDiQrgl",5), ("Blake","Blake.Skinner@fullsail.edu","7,mO4nHw",6), ("Andrew","Andrew.Abraham@valencia.edu","Kfmapxg.",7), ("Jake","Jake.Hamilton@fiu.edu","r-A?CnAH",8), ("Sebastian","Sebastian.Lewis@fgu.edu","b!ptzCzv",9), ("Robert","Robert.James@famu.edu","bq1nsg8f",10),
("Charles","Charles.Wilson@knights.ucf.edu","cNgxyI'O",1), ("Alison","Alison.Coleman@ufl.edu","zs3u#3vL",2), ("Chloe","Chloe.Edmunds@usf.edu","MKJP0#ro",3), ("Lucas","Lucas.Sharp@uwf.edu","af6VhqrX",4), ("Ava","Ava.Hodges@uef.edu","GaW#AJZD",5), ("Anthony","Anthony.Poole@fullsail.edu","w1OiJyln",6), ("Jake","Jake.Johnston@valencia.edu","lZjEJF2O",7), ("Ruth","Ruth.Newman@fiu.edu","6e9iyGxx",8), ("Peter","Peter.Bower@fgu.edu","PHXUra-J",9), ("Lily","Lily.Bell@famu.edu","wmIDiERE",10),
("Lauren","Lauren.Knox@knights.ucf.edu","JeMJhe8N",1), ("Jacob","Jacob.Butler@ufl.edu","KbTmfFz!",2), ("Wanda","Wanda.Bower@usf.edu","i.icFxAQ",3), ("Robert","Robert.Murray@uwf.edu","BQPK'JtZ",4), ("Anthony","Anthony.Thomson@uef.edu","LSPF9wZ7",5), ("Frank","Frank.Allan@fullsail.edu","scvbAWq.",6), ("Ava","Ava.Langdon@valencia.edu","ON7jk015",7), ("Virginia","Virginia.Lawrence@fiu.edu","Fnx'WI1i",8), ("Adrian","Adrian.Russell@fgu.edu","XxoD1l1W",9), ("Alexander","Alexander.Johnston@famu.edu",",wQiZ,8K",10),
("Virginia","Virginia.Sutherland@knights.ucf.edu","2.aU!cAo",1), ("Jessica","Jessica.Walker@ufl.edu","nr#A0zef",2), ("Joan","Joan.Cornish@usf.edu","In,qQ,9M",3), ("Anne","Anne.Carr@uwf.edu","LnFDhR,X",4), ("Ella","Ella.Fraser@uef.edu","Y51zJdv?",5), ("Joanne","Joanne.Knox@fullsail.edu","lJv8NJTO",6), ("Amy","Amy.Vance@valencia.edu","#nPPDC?K",7), ("Nathan","Nathan.Butler@fiu.edu","dapkZ0i9",8), ("Julian","Julian.Powell@fgu.edu","tIp4v?xA",9), ("Jane","Jane.Payne@famu.edu","3ibSG2w5",10),
("Sally","Sally.Powell@knights.ucf.edu","5mvQdICg",1), ("David","David.Churchill@ufl.edu","sce3mngn",2), ("Alexandra","Alexandra.Powell@usf.edu","obgP?Ewm",3), ("Wendy","Wendy.Underwood@uwf.edu","w0DbpzmI",4), ("Evan","Evan.Langdon@uef.edu","82x''KOZ",5), ("Piers","Piers.Vaughan@fullsail.edu","kRr7Q6N8",6), ("Olivia","Olivia.Lyman@valencia.edu","lujjKY0J",7), ("Carl","Carl.Metcalfe@fiu.edu","kj.Hj0vR",8), ("Andrea","Andrea.Peake@fgu.edu","LXx4cM0M",9), ("Stephen","Stephen.Davidson@famu.edu","Kn#FM6Ll",10),
("Gavin","Gavin.Payne@knights.ucf.edu","QKd-7-dZ",1), ("Virginia","Virginia.Cornish@ufl.edu","ENu.Bsqm",2), ("Amy","Amy.MacDonald@usf.edu","DHq7Ld#d",3), ("Joe","Joe.Graham@uwf.edu","wbeqbh3T",4), ("Jessica","Jessica.Henderson@uef.edu","mN3t!JdD",5), ("Nicola","Nicola.Jackson@fullsail.edu","!-qh0'A#",6), ("Melanie","Melanie.Langdon@valencia.edu","q2RFzvKC",7), ("Joseph","Joseph.Terry@fiu.edu","djiR.a#l",8), ("Andrea","Andrea.Baker@fgu.edu","iRedtc4b",9), ("Emily","Emily.King@famu.edu","LKUNUpAP",10),
("Nicholas","Nicholas.Baker@knights.ucf.edu","5tLqc8Wg",1), ("Anna","Anna.Walker@ufl.edu","'VT7Rs'd",2), ("Dorothy","Dorothy.Grant@usf.edu","Fkp0'Lii",3), ("Caroline","Caroline.Nolan@uwf.edu","3at.ZYWQ",4), ("Stephen","Stephen.Blake@uef.edu","qk6BRHnD",5), ("Michael","Michael.Vance@fullsail.edu","TlMFUHVP",6), ("David","David.Gibson@valencia.edu","C-JnIiOq",7), ("Phil","Phil.Gray@fiu.edu","ZI,SYP,X",8), ("Evan","Evan.Mills@fgu.edu","RnA!cuhN",9), ("Melanie","Melanie.Henderson@famu.edu","twPI'2S6",10),
("Luke","Luke.Paige@knights.ucf.edu","!Z3Ck-gS",1), ("Donna","Donna.Taylor@ufl.edu","gT83t5am",2), ("Jake","Jake.Short@usf.edu","uEl7zS0Y",3), ("Dorothy","Dorothy.Lawrence@uwf.edu","ijs5OAf1",4), ("Paul","Paul.Vance@uef.edu","i,nL-3WA",5), ("Heather","Heather.Ferguson@fullsail.edu","ad'0.R5Z",6), ("Angela","Angela.McGrath@valencia.edu","krylkuQa",7), ("Jasmine","Jasmine.Glover@fiu.edu","DPpm8WMN",8), ("Lillian","Lillian.Murray@fgu.edu","AVmVTIS!",9), ("Paul","Paul.Hodges@famu.edu","IUMcY-k,",10),
("Simon","Simon.Parsons@knights.ucf.edu","3enSFfnJ",1), ("Diane","Diane.Quinn@ufl.edu","kaUgUTpz",2), ("Luke","Luke.Campbell@usf.edu","i2axPflp",3), ("Amelia","Amelia.Campbell@uwf.edu","h6z8V#lY",4), ("Ryan","Ryan.Sutherland@uef.edu","vIFxgkHW",5), ("Gordon","Gordon.Forsyth@fullsail.edu","BTJ8Jh46",6), ("Caroline","Caroline.Nash@valencia.edu","49BGms8o",7), ("Warren","Warren.Lewis@fiu.edu","..8btCh#",8), ("Charles","Charles.Sanderson@fgu.edu","B4.?pz!?",9), ("Tim","Tim.King@famu.edu","BZr2GPMx",10),
("Phil","Phil.Cameron@knights.ucf.edu","r5omTwvQ",1), ("Virginia","Virginia.Quinn@ufl.edu","5VXro-bI",2), ("Kimberly","Kimberly.Hemmings@usf.edu","'dUI-dlg",3), ("Keith","Keith.Bell@uwf.edu","#lrDyi,v",4), ("Wendy","Wendy.Alsop@uef.edu","'Yx,X8-D",5), ("Ian","Ian.Forsyth@fullsail.edu","aRirJBK4",6), ("Christopher","Christopher.Brown@valencia.edu","XoJcT7nA",7), ("Max","Max.Gray@fiu.edu","-OgLo9!E",8), ("Ella","Ella.Parsons@fgu.edu","h0sOMLq8",9), ("Blake","Blake.Dyer@famu.edu","oDpUc4ia",10),
("Ryan","Ryan.Gibson@knights.ucf.edu","IsQTTj?J",1), ("Una","Una.Ferguson@ufl.edu","WIS-ahdl",2), ("Katherine","Katherine.Jones@usf.edu","Nsk-Ahpu",3), ("Zoe","Zoe.Skinner@uwf.edu","HnaBABDH",4), ("Christian","Christian.Newman@uef.edu","-jOAL6Br",5), ("Caroline","Caroline.McGrath@fullsail.edu","EtRZBWVK",6), ("Anne","Anne.Paige@valencia.edu","?EcQYAEI",7), ("Tracey","Tracey.Nash@fiu.edu","pTr'D-rA",8), ("James","James.Thomson@fgu.edu","3'.fN'UQ",9), ("Jasmine","Jasmine.Morrison@famu.edu","-VxxZiFy",10),
("Victoria","Victoria.Hardacre@knights.ucf.edu","PoRsLeYD",1), ("Sue","Sue.Baker@ufl.edu","lL!H#AMJ",2), ("Eric","Eric.Davies@usf.edu","he'-hyRw",3), ("Chloe","Chloe.Mackenzie@uwf.edu","Ug-'UdrQ",4), ("Felicity","Felicity.Marshall@uef.edu","Rvpc9UeY",5), ("Joseph","Joseph.Hughes@fullsail.edu","nNUCu#7A",6), ("Robert","Robert.Vaughan@valencia.edu","'Ql-DA9h",7), ("Vanessa","Vanessa.Randall@fiu.edu","9FI!2Dct",8), ("Emily","Emily.Mackenzie@fgu.edu","JYw7Jh#6",9), ("Neil","Neil.Short@famu.edu","30'9k14u",10),
("Amy","Amy.Robertson@knights.ucf.edu","gKejrubm",1), ("Stewart","Stewart.Thomson@ufl.edu","i5.riUxm",2), ("Trevor","Trevor.Rutherford@usf.edu","P'f#F'Bh",3), ("Jessica","Jessica.Short@uwf.edu","VcnqBzNn",4), ("Jake","Jake.Arnold@uef.edu","Lx8slWKJ",5), ("Emily","Emily.MacLeod@fullsail.edu","E8Lg1,Ru",6), ("Dominic","Dominic.Morrison@valencia.edu","XUlMwSe8",7), ("Christopher","Christopher.Randall@fiu.edu","S!IIl-8Q",8), ("Stephen","Stephen.Black@fgu.edu","KMf8eCHB",9), ("Jacob","Jacob.Mackenzie@famu.edu","x?gwre!J",10),
("Boris","Boris.McGrath@knights.ucf.edu","6cnAW2vk",1), ("Benjamin","Benjamin.Parsons@ufl.edu","mQjTy?'A",2), ("Joshua","Joshua.Graham@usf.edu","7W#aX5H'",3), ("David","David.Mackenzie@uwf.edu","v4HYzhzC",4), ("Jake","Jake.Miller@uef.edu","#sUvSqVY",5), ("Olivia","Olivia.May@fullsail.edu","P.agSfUR",6), ("Kevin","Kevin.Wilson@valencia.edu","o,Gau,,j",7), ("Eric","Eric.Parr@fiu.edu","'XE7X?XU",8), ("Piers","Piers.Bailey@fgu.edu","Gz#NyiQ5",9), ("Austin","Austin.Martin@famu.edu","53mA?60f",10),
("Ian","Ian.Roberts@knights.ucf.edu","B0Xw5AaR",1), ("Luke","Luke.Nash@ufl.edu","48A55PqI",2), ("William","William.Duncan@usf.edu","JGqS1V#0",3), ("Max","Max.Mitchell@uwf.edu","vCzh6lT?",4), ("Sophie","Sophie.Bower@uef.edu","Xz.Pgs2f",5), ("Blake","Blake.Piper@fullsail.edu","Xd6m'aQk",6), ("Christian","Christian.Watson@valencia.edu","nNkHDXCY",7), ("Thomas","Thomas.Jackson@fiu.edu","V3C2b!7v",8), ("Zoe","Zoe.Abraham@fgu.edu","BSreLaUM",9), ("Alexandra","Alexandra.Lyman@famu.edu","pxLUhc!E",10),
("Andrea","Andrea.Mitchell@knights.ucf.edu","BT8g,.sb",1), ("Wendy","Wendy.Ince@ufl.edu","u8N,VYn'",2), ("Richard","Richard.Dyer@usf.edu","WEzf3Vkr",3), ("Ruth","Ruth.Knox@uwf.edu","B4AS?5Gt",4), ("Evan","Evan.Churchill@uef.edu","?!k-h#Wl",5), ("James","James.Coleman@fullsail.edu","5ywPf#eO",6), ("Jack","Jack.Kerr@valencia.edu","'j6d9Vwa",7), ("Bernadette","Bernadette.Anderson@fiu.edu","gjXfDchV",8), ("Hannah","Hannah.Payne@fgu.edu","lu5RvY,a",9), ("Olivia","Olivia.Bower@famu.edu","xouxS-jY",10),
("Irene","Irene.Springer@knights.ucf.edu","j4HYE?xY",1), ("Emily","Emily.Rees@ufl.edu","lG8qCJ2!",2), ("Jane","Jane.Ball@usf.edu","OZH!X7N?",3), ("Emma","Emma.Cameron@uwf.edu","GodAZ9Kb",4), ("Jan","Jan.Abraham@uef.edu","Cy!Xnjco",5), ("Julian","Julian.Thomson@fullsail.edu","IstdMvy,",6), ("Lisa","Lisa.Randall@valencia.edu","0?.JfAt6",7), ("Keith","Keith.Wilson@fiu.edu","vSdJsOGt",8), ("Alexander","Alexander.Powell@fgu.edu","GfPyLMwJ",9), ("Amanda","Amanda.Abraham@famu.edu","aU-9PhJA",10),
("Katherine","Katherine.Chapman@knights.ucf.edu","gF.#L'5Z",1), ("Joshua","Joshua.Kerr@ufl.edu","7md0FLLJ",2), ("Stephen","Stephen.McDonald@usf.edu","sZqiBy-p",3), ("Sean","Sean.Bailey@uwf.edu","y-nZcTHG",4), ("Warren","Warren.Taylor@uef.edu","xSama7v#",5), ("Carolyn","Carolyn.Wright@fullsail.edu","wFXkQ,pn",6), ("Victor","Victor.Dyer@valencia.edu","A5zhPs'F",7), ("Eric","Eric.McLean@fiu.edu","CeDe1nc2",8), ("Una","Una.Mackenzie@fgu.edu","PYtkcsMy",9), ("Sue","Sue.Oliver@famu.edu","oFmn3R5'",10),
("Faith","Faith.Kerr@knights.ucf.edu",".PrTaptk",1), ("Jessica","Jessica.Davidson@ufl.edu","wkAgYymC",2), ("Natalie","Natalie.Lyman@usf.edu","jTpdic4F",3), ("Stephen","Stephen.Coleman@uwf.edu","9TMy.lK7",4), ("Sophie","Sophie.Wilkins@uef.edu","syEjYRg-",5), ("Victoria","Victoria.Henderson@fullsail.edu","cA4G0Ozm",6), ("Lucas","Lucas.Graham@valencia.edu","#0!2f,9'",7), ("Jonathan","Jonathan.Forsyth@fiu.edu","-El701Uc",8), ("Jack","Jack.Vaughan@fgu.edu","bc46NI8n",9), ("Wanda","Wanda.Graham@famu.edu","Hydt2pB3",10),
("Julian","Julian.Skinner@knights.ucf.edu","b-VwW-7t",1), ("Alexander","Alexander.Fraser@ufl.edu","Fdls'5tI",2), ("Connor","Connor.Graham@usf.edu","'bLo,Wgd",3), ("Max","Max.Gill@uwf.edu","E?!j6zi7",4), ("Victor","Victor.Dowd@uef.edu","uFR-APhH",5), ("Ian","Ian.Ball@fullsail.edu","28g30xSA",6), ("James","James.Rampling@valencia.edu","3mkGylZU",7), ("Lucas","Lucas.Bond@fiu.edu","jjKu2J3!",8), ("Diane","Diane.Mackenzie@fgu.edu","WYKxjUOr",9), ("Lily","Lily.Bower@famu.edu","HiC'z,Q9",10),
("Alexander","Alexander.Peake@knights.ucf.edu","By6H.HMU",1), ("Nathan","Nathan.Roberts@ufl.edu","pFeJw,JQ",2), ("Amelia","Amelia.Blake@usf.edu","-miTw36#",3), ("Sarah","Sarah.Sanderson@uwf.edu","H'75Ia##",4), ("Stephen","Stephen.Miller@uef.edu","7dL492#w",5), ("Virginia","Virginia.Mills@fullsail.edu","yyljBVCZ",6), ("Anne","Anne.Turner@valencia.edu","LNhBbWHD",7), ("Justin","Justin.Clarkson@fiu.edu","3Hg'ZEq3",8), ("Boris","Boris.Johnston@fgu.edu","LdhM0BL#",9), ("Bernadette","Bernadette.Graham@famu.edu","beV#3!!?",10),
("Chloe","Chloe.Graham@knights.ucf.edu","nA8g-dP0",1), ("Trevor","Trevor.Nash@ufl.edu","kp1li7lg",2), ("Ruth","Ruth.Metcalfe@usf.edu","VHQWfIzp",3), ("Ava","Ava.McLean@uwf.edu","VGdo4CwP",4), ("Isaac","Isaac.Roberts@uef.edu","ZX1Jf.,a",5), ("Justin","Justin.Butler@fullsail.edu","ZpY'IX-K",6), ("Nathan","Nathan.Taylor@valencia.edu","a.q7.jCA",7), ("Michelle","Michelle.Russell@fiu.edu","MmmTnR6V",8), ("Kimberly","Kimberly.Grant@fgu.edu","p-WZRfZk",9), ("Claire","Claire.Manning@famu.edu","fVVFue#A",10),
("Jack","Jack.Short@knights.ucf.edu","if4bz40B",1), ("Justin","Justin.Bailey@ufl.edu","BMZ0i6?j",2), ("Virginia","Virginia.Oliver@usf.edu","9S3KB6jw",3), ("Diane","Diane.Duncan@uwf.edu","gZNTrHly",4), ("Sarah","Sarah.Dowd@uef.edu","qnfu6XG6",5), ("Brandon","Brandon.Chapman@fullsail.edu","r0kTwlQg",6), ("Thomas","Thomas.Campbell@valencia.edu","XXfhCllI",7), ("Stephanie","Stephanie.Ferguson@fiu.edu","qNL.?wAr",8), ("Sarah","Sarah.Lawrence@fgu.edu","'gv16HiB",9), ("Jason","Jason.Robertson@famu.edu","KdTGzeI!",10),
("Stephanie","Stephanie.Forsyth@knights.ucf.edu","kjyxOp5J",1), ("Pippa","Pippa.Henderson@ufl.edu","-QEXh8zd",2), ("Christian","Christian.MacDonald@usf.edu","yYBkgxDD",3), ("Victoria","Victoria.Mitchell@uwf.edu","LQ8?Jd9'",4), ("Blake","Blake.Roberts@uef.edu",".HsWunaZ",5), ("Chloe","Chloe.Taylor@fullsail.edu","5l3vUoAN",6), ("Warren","Warren.Hudson@valencia.edu","iE1SQsIr",7), ("Tracey","Tracey.Hamilton@fiu.edu","ho!JUk24",8), ("Ava","Ava.Miller@fgu.edu","XBGhEPlt",9), ("Katherine","Katherine.Peake@famu.edu","yuHuUjSd",10),
("Anne","Anne.Paterson@knights.ucf.edu","hh0BbWAQ",1), ("Hannah","Hannah.Poole@ufl.edu","I8qE8z18",2), ("Rachel","Rachel.Scott@usf.edu","eo'EcTJP",3), ("Rebecca","Rebecca.Kerr@uwf.edu","PyJrpbjX",4), ("Frank","Frank.Quinn@uef.edu","7HD.5.jq",5), ("Amanda","Amanda.Blake@fullsail.edu","yZUHzTgW",6), ("Christopher","Christopher.Cameron@valencia.edu","XFIBD5l8",7), ("Piers","Piers.Lawrence@fiu.edu","qV4Gkv0c",8), ("Alexandra","Alexandra.Wright@fgu.edu",",gNyjswz",9), ("Dominic","Dominic.Quinn@famu.edu","WT6HpGIO",10),
("Jessica","Jessica.Ferguson@knights.ucf.edu","jF1!1?W5",1), ("John","John.Cameron@ufl.edu","GLZmH!2.",2), ("Adam","Adam.Payne@usf.edu","potE5g-u",3), ("Olivia","Olivia.Welch@uwf.edu","7-q1kG9Q",4), ("Vanessa","Vanessa.Roberts@uef.edu","0dhQ7FN7",5), ("Jason","Jason.Davies@fullsail.edu","UDPaYiq7",6), ("Wanda","Wanda.Taylor@valencia.edu","w9rQJj#c",7), ("Thomas","Thomas.Baker@fiu.edu","TquZX7cQ",8), ("Carolyn","Carolyn.Edmunds@fgu.edu","E?H--Wb'",9), ("Nicholas","Nicholas.Ogden@famu.edu","j8j3liTb",10),
("Samantha","Samantha.Lambert@knights.ucf.edu","Ouyv63kr",1), ("Carolyn","Carolyn.Piper@ufl.edu","e8sCKRoS",2), ("Donna","Donna.Hodges@usf.edu","LC1P4737",3), ("Olivia","Olivia.North@uwf.edu","a4RaYL-f",4), ("Julia","Julia.Parsons@uef.edu","9uoRBc,m",5), ("Richard","Richard.Paige@fullsail.edu","dHZVS71o",6), ("Richard","Richard.Oliver@valencia.edu","zX!3lkJX",7), ("Paul","Paul.Quinn@fiu.edu","rOJ?1Zx1",8), ("Thomas","Thomas.Scott@fgu.edu","V',AZCP-",9), ("James","James.Lyman@famu.edu","V66AlB8H",10),
("Sarah","Sarah.Davidson@knights.ucf.edu","ymhmehVe",1), ("Ian","Ian.Hughes@ufl.edu","!Uphk19m",2), ("Connor","Connor.Avery@usf.edu","JD'vN2ei",3), ("Steven","Steven.Rees@uwf.edu","3qMRfgf?",4), ("Julian","Julian.Murray@uef.edu","Z'0Ld-m,",5), ("Fiona","Fiona.North@fullsail.edu","A7fjjJXz",6), ("Connor","Connor.Newman@valencia.edu","CPSxislZ",7), ("Simon","Simon.Henderson@fiu.edu","8-82BgXu",8), ("Heather","Heather.Mackay@fgu.edu","LnrpwmFk",9), ("Joshua","Joshua.Duncan@famu.edu","y?0y4XoQ",10),
("Claire","Claire.James@knights.ucf.edu","RXM!Kc6-",1), ("Edward","Edward.Butler@ufl.edu","Aws,HCon",2), ("Julian","Julian.Taylor@usf.edu","NwUl,00-",3), ("Donna","Donna.Nash@uwf.edu","ULY4H9q!",4), ("Simon","Simon.Hodges@uef.edu","CdJ0l6Yq",5), ("Megan","Megan.Powell@fullsail.edu","E4Wf4Kv!",6), ("Gavin","Gavin.Allan@valencia.edu","RxL!GTGB",7), ("Tracey","Tracey.Pullman@fiu.edu","fFpUeOHc",8), ("Keith","Keith.Morgan@fgu.edu","HjlJNIa3",9), ("Michelle","Michelle.Piper@famu.edu",".RCj?MGI",10),
("Gavin","Gavin.Knox@knights.ucf.edu","nx5OuMIJ",1), ("Madeleine","Madeleine.Lambert@ufl.edu","jKrKB0-4",2), ("Piers","Piers.Marshall@usf.edu","H33Wa15#",3), ("Edward","Edward.Walker@uwf.edu","4cSabxq0",4), ("Dan","Dan.Henderson@uef.edu","U-?sR0gL",5), ("Jennifer","Jennifer.Roberts@fullsail.edu","#JikdN0J",6), ("Stewart","Stewart.Ferguson@valencia.edu","RJ19KPIf",7), ("Rose","Rose.Burgess@fiu.edu","gd?ytVXm",8), ("Gordon","Gordon.Allan@fgu.edu","ix7!gLWN",9), ("Leah","Leah.Vaughan@famu.edu","5GtI'v69",10),
("Carol","Carol.Ellison@knights.ucf.edu","J5LxulKu",1), ("Bernadette","Bernadette.Peters@ufl.edu","0tWNAt'4",2), ("Diana","Diana.North@usf.edu","S!CKU'Gp",3), ("Sophie","Sophie.Walsh@uwf.edu","-8aafxsJ",4), ("Theresa","Theresa.Glover@uef.edu","F'P#K,ir",5), ("Una","Una.Bailey@fullsail.edu","NkzFvpwD",6), ("Jan","Jan.Langdon@valencia.edu","hnbk?PO'",7), ("Michelle","Michelle.Hill@fiu.edu","ZIvU0ALo",8), ("Wanda","Wanda.Oliver@fgu.edu","hk#to?Fg",9), ("Tracey","Tracey.North@famu.edu","HIpirsq5",10),
("Michael","Michael.Walsh@knights.ucf.edu","Av1Jejn0",1), ("Wendy","Wendy.Chapman@ufl.edu","Rn4PXEMP",2), ("Maria","Maria.Mackenzie@usf.edu","TRMFb#bq",3), ("Joanne","Joanne.Sutherland@uwf.edu","#npe!ZnA",4), ("Colin","Colin.Jackson@uef.edu","RxmP39Xc",5), ("Joe","Joe.Ball@fullsail.edu","Cql5s7BJ",6), ("Isaac","Isaac.McLean@valencia.edu","?WUUeV7n",7), ("Alison","Alison.Randall@fiu.edu","Gibc.al1",8), ("Joan","Joan.Reid@fgu.edu","RqpoKhvr",9), ("Alan","Alan.Wilson@famu.edu","PGXnlO66",10),
("Boris","Boris.Miller@knights.ucf.edu","FLSi'LD!",1), ("Luke","Luke.Parr@ufl.edu","EcwQ6-9q",2), ("Sue","Sue.Tucker@usf.edu","QgwAqXt0",3), ("Rose","Rose.Kerr@uwf.edu",",nGaZUDW",4), ("Stewart","Stewart.Payne@uef.edu","JbIXfU1D",5), ("Keith","Keith.Sanderson@fullsail.edu","y#8HG8Mo",6), ("Jasmine","Jasmine.Mackenzie@valencia.edu","pmYUV60j",7), ("Rose","Rose.Wallace@fiu.edu","iG6EiMoj",8), ("Una","Una.Hunter@fgu.edu","17VUV-Jo",9), ("Melanie","Melanie.Duncan@famu.edu","y8l!tjpY",10),
("Max","Max.Marshall@knights.ucf.edu","rWnMpPvt",1), ("Paul","Paul.Johnston@ufl.edu","eC?uK0g2",2), ("Jacob","Jacob.Walsh@usf.edu","F.fUbRk8",3), ("Ella","Ella.Kelly@uwf.edu","PqUomF'x",4), ("Boris","Boris.Hart@uef.edu","Q5Iojo.T",5), ("Amanda","Amanda.Martin@fullsail.edu","BDBxpu!b",6), ("Julian","Julian.Pullman@valencia.edu","5Gz8bd1h",7), ("Chloe","Chloe.MacLeod@fiu.edu","Oc!0xy2O",8), ("Rose","Rose.MacDonald@fgu.edu",",Cw,FB!W",9), ("Thomas","Thomas.Howard@famu.edu","jl7fetY2",10),
("Jake","Jake.Rees@knights.ucf.edu","j6#5Qs3y",1), ("Rose","Rose.Greene@ufl.edu","brO5o.xN",2), ("Zoe","Zoe.Langdon@usf.edu","N-GGJ!S1",3), ("Theresa","Theresa.Dyer@uwf.edu","Lj.p6o8U",4), ("Trevor","Trevor.Lawrence@uef.edu","tlPC4xJg",5), ("Mary","Mary.Vaughan@fullsail.edu","hJBH3hB?",6), ("Mary","Mary.Lyman@valencia.edu","aw9D?1D6",7), ("Isaac","Isaac.Reid@fiu.edu","vA7!b3,J",8), ("Joseph","Joseph.Ross@fgu.edu","f8b'uI,J",9), ("Ian","Ian.Lyman@famu.edu","6WnHO24C",10);

insert IGNORE into db_example.university_users(university_id,user_id) values
  (1,1) ,(2,2) ,(3,3) ,(4,4) ,(5,5) ,(6,6) ,(7,7) ,(8,8) ,(9,9) ,(10,10) ,(1,11) ,(2,12) ,(3,13) ,(4,14) ,(5,15) ,(6,16) ,(7,17) ,(8,18) ,(9,19) ,(10,20) ,(1,21) ,(2,22) ,(3,23) ,(4,24) ,(5,25)
   ,(6,26) ,(7,27) ,(8,28) ,(9,29) ,(10,30) ,(1,31) ,(2,32) ,(3,33) ,(4,34) ,(5,35) ,(6,36) ,(7,37) ,(8,38) ,(9,39) ,(10,40) ,(1,41) ,(2,42) ,(3,43) ,(4,44) ,(5,45) ,(6,46) ,(7,47) ,(8,48) ,(9,49)
   ,(10,50) ,(1,51) ,(2,52) ,(3,53) ,(4,54) ,(5,55) ,(6,56) ,(7,57) ,(8,58) ,(9,59) ,(10,60) ,(1,61) ,(2,62) ,(3,63) ,(4,64) ,(5,65) ,(6,66) ,(7,67) ,(8,68) ,(9,69) ,(10,70) ,(1,71) ,(2,72) ,(3,73)
   ,(4,74) ,(5,75) ,(6,76) ,(7,77) ,(8,78) ,(9,79) ,(10,80) ,(1,81) ,(2,82) ,(3,83) ,(4,84) ,(5,85) ,(6,86) ,(7,87) ,(8,88) ,(9,89) ,(10,90) ,(1,91) ,(2,92) ,(3,93) ,(4,94) ,(5,95) ,(6,96) ,(7,97) ,(8,98)
   ,(9,99) ,(10,100) ,(1,101) ,(2,102) ,(3,103) ,(4,104) ,(5,105) ,(6,106) ,(7,107) ,(8,108) ,(9,109) ,(10,110) ,(1,111) ,(2,112) ,(3,113) ,(4,114) ,(5,115) ,(6,116) ,(7,117) ,(8,118) ,(9,119) ,(10,120)
   ,(1,121) ,(2,122) ,(3,123) ,(4,124) ,(5,125) ,(6,126) ,(7,127) ,(8,128) ,(9,129) ,(10,130) ,(1,131) ,(2,132) ,(3,133) ,(4,134) ,(5,135) ,(6,136) ,(7,137) ,(8,138) ,(9,139) ,(10,140) ,(1,141) ,(2,142)
   ,(3,143) ,(4,144) ,(5,145) ,(6,146) ,(7,147) ,(8,148) ,(9,149) ,(10,150) ,(1,151) ,(2,152) ,(3,153) ,(4,154) ,(5,155) ,(6,156) ,(7,157) ,(8,158) ,(9,159) ,(10,160) ,(1,161) ,(2,162) ,(3,163) ,(4,164)
   ,(5,165) ,(6,166) ,(7,167) ,(8,168) ,(9,169) ,(10,170) ,(1,171) ,(2,172) ,(3,173) ,(4,174) ,(5,175) ,(6,176) ,(7,177) ,(8,178) ,(9,179) ,(10,180) ,(1,181) ,(2,182) ,(3,183) ,(4,184) ,(5,185) ,(6,186)
   ,(7,187) ,(8,188) ,(9,189) ,(10,190) ,(1,191) ,(2,192) ,(3,193) ,(4,194) ,(5,195) ,(6,196) ,(7,197) ,(8,198) ,(9,199) ,(10,200) ,(1,201) ,(2,202) ,(3,203) ,(4,204) ,(5,205) ,(6,206) ,(7,207) ,(8,208)
   ,(9,209) ,(10,210) ,(1,211) ,(2,212) ,(3,213) ,(4,214) ,(5,215) ,(6,216) ,(7,217) ,(8,218) ,(9,219) ,(10,220) ,(1,221) ,(2,222) ,(3,223) ,(4,224) ,(5,225) ,(6,226) ,(7,227) ,(8,228) ,(9,229) ,(10,230)
  ,(1,231) ,(2,232) ,(3,233) ,(4,234) ,(5,235) ,(6,236) ,(7,237) ,(8,238) ,(9,239) ,(10,240) ,(1,241) ,(2,242) ,(3,243) ,(4,244) ,(5,245) ,(6,246) ,(7,247) ,(8,248) ,(9,249) ,(10,250) ,(1,251) ,(2,252)
  ,(3,253) ,(4,254) ,(5,255) ,(6,256) ,(7,257) ,(8,258) ,(9,259) ,(10,260) ,(1,261) ,(2,262) ,(3,263) ,(4,264) ,(5,265) ,(6,266) ,(7,267) ,(8,268) ,(9,269) ,(10,270) ,(1,271) ,(2,272) ,(3,273) ,(4,274)
  ,(5,275) ,(6,276) ,(7,277) ,(8,278) ,(9,279) ,(10,280) ,(1,281) ,(2,282) ,(3,283) ,(4,284) ,(5,285) ,(6,286) ,(7,287) ,(8,288) ,(9,289) ,(10,290) ,(1,291) ,(2,292) ,(3,293) ,(4,294) ,(5,295) ,(6,296)
  ,(7,297) ,(8,298) ,(9,299) ,(10,300) ,(1,301) ,(2,302) ,(3,303) ,(4,304) ,(5,305) ,(6,306) ,(7,307) ,(8,308) ,(9,309) ,(10,310) ,(1,311) ,(2,312) ,(3,313) ,(4,314) ,(5,315) ,(6,316) ,(7,317) ,(8,318)
  ,(9,319) ,(10,320) ,(1,321) ,(2,322) ,(3,323) ,(4,324) ,(5,325) ,(6,326) ,(7,327) ,(8,328) ,(9,329) ,(10,330) ,(1,331) ,(2,332) ,(3,333) ,(4,334) ,(5,335) ,(6,336) ,(7,337) ,(8,338) ,(9,339) ,(10,340)
  ,(1,341) ,(2,342) ,(3,343) ,(4,344) ,(5,345) ,(6,346) ,(7,347) ,(8,348) ,(9,349) ,(10,350) ,(1,351) ,(2,352) ,(3,353) ,(4,354) ,(5,355) ,(6,356) ,(7,357) ,(8,358) ,(9,359) ,(10,360) ,(1,361) ,(2,362)
  ,(3,363) ,(4,364) ,(5,365) ,(6,366) ,(7,367) ,(8,368) ,(9,369) ,(10,370) ,(1,371) ,(2,372) ,(3,373) ,(4,374) ,(5,375) ,(6,376) ,(7,377) ,(8,378) ,(9,379) ,(10,380) ,(1,381) ,(2,382) ,(3,383) ,(4,384)
  ,(5,385) ,(6,386) ,(7,387) ,(8,388) ,(9,389) ,(10,390) ,(1,391) ,(2,392) ,(3,393) ,(4,394) ,(5,395) ,(6,396) ,(7,397) ,(8,398) ,(9,399) ,(10,400) ,(1,401) ,(2,402) ,(3,403) ,(4,404) ,(5,405) ,(6,406)
  ,(7,407) ,(8,408) ,(9,409) ,(10,410) ,(1,411) ,(2,412) ,(3,413) ,(4,414) ,(5,415) ,(6,416) ,(7,417) ,(8,418) ,(9,419) ,(10,420) ,(1,421) ,(2,422) ,(3,423) ,(4,424) ,(5,425) ,(6,426) ,(7,427) ,(8,428)
  ,(9,429) ,(10,430) ,(1,431) ,(2,432) ,(3,433) ,(4,434) ,(5,435) ,(6,436) ,(7,437) ,(8,438) ,(9,439) ,(10,440) ,(1,441) ,(2,442) ,(3,443) ,(4,444) ,(5,445) ,(6,446) ,(7,447) ,(8,448) ,(9,449) ,(10,450)
  ,(1,451) ,(2,452) ,(3,453) ,(4,454) ,(5,455) ,(6,456) ,(7,457) ,(8,458) ,(9,459) ,(10,460) ,(1,461) ,(2,462) ,(3,463) ,(4,464) ,(5,465) ,(6,466) ,(7,467) ,(8,468) ,(9,469) ,(10,470) ,(1,471) ,(2,472)
  ,(3,473) ,(4,474) ,(5,475) ,(6,476) ,(7,477) ,(8,478) ,(9,479) ,(10,480) ,(1,481) ,(2,482) ,(3,483) ,(4,484) ,(5,485) ,(6,486) ,(7,487) ,(8,488) ,(9,489) ,(10,490) ,(1,491) ,(2,492) ,(3,493) ,(4,494)
  ,(5,495) ,(6,496) ,(7,497) ,(8,498) ,(9,499) ,(10,500);

insert IGNORE into db_example.admin (user_id) VALUES
  (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35)
  , (36), (37), (38), (39), (40), (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51), (52), (53), (54), (55), (56), (57), (58), (59), (60), (61), (62), (63), (64), (65), (66), (67), (68)
  , (69), (70), (71), (72), (73), (74), (75), (76), (77), (78), (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90), (91), (92), (93), (94), (95), (96), (97), (98), (99), (100), (101)
  , (102), (103), (104), (105), (106), (107), (108), (109), (110), (111), (112), (113), (114), (115), (116), (117), (118), (119), (120), (121), (122), (123), (124), (125), (126), (127), (128), (129)
  , (130), (131), (132), (133), (134), (135), (136), (137), (138), (139), (140), (141), (142), (143), (144), (145), (146), (147), (148), (149), (150), (151), (152), (153), (154), (155), (156), (157)
  , (158), (159), (160), (161), (162), (163), (164), (165), (166), (167), (168), (169), (170), (171), (172), (173), (174), (175), (176), (177), (178), (179), (180), (181), (182), (183), (184), (185)
  , (186), (187), (188), (189), (190), (191), (192), (193), (194), (195), (196), (197), (198), (199), (200);

insert IGNORE into db_example.rso (name, email, admin_id) values
  ("Association for Computing Machinery","ACM@knights.ucf.edu",1), ("Association for Computing Machinery","ACM@ufl.edu",2), ("Association for Computing Machinery","ACM@usf.edu",3), ("Association for Computing Machinery","ACM@uwf.edu",4), ("Association for Computing Machinery","ACM@uef.edu",5), ("Association for Computing Machinery","ACM@fullsail.edu",6)
  , ("Association for Computing Machinery","ACM@valencia.edu",7), ("Association for Computing Machinery","ACM@fiu.edu",8), ("Association for Computing Machinery","ACM@fgu.edu",9), ("Association for Computing Machinery","ACM@famu.edu",10), ("Institute of Electrical and Electronics Engineers","IEEE@knights.ucf.edu",11), ("Institute of Electrical and Electronics Engineers","IEEE@ufl.edu",12)
  , ("Institute of Electrical and Electronics Engineers","IEEE@usf.edu",13), ("Institute of Electrical and Electronics Engineers","IEEE@uwf.edu",14), ("Institute of Electrical and Electronics Engineers","IEEE@uef.edu",15), ("Institute of Electrical and Electronics Engineers","IEEE@fullsail.edu",16), ("Institute of Electrical and Electronics Engineers","IEEE@valencia.edu",17)
  , ("Institute of Electrical and Electronics Engineers","IEEE@fiu.edu",18), ("Institute of Electrical and Electronics Engineers","IEEE@fgu.edu",19), ("Institute of Electrical and Electronics Engineers","IEEE@famu.edu",20), ("Accounting Club","Accounting_Club@knights.ucf.edu",21), ("Accounting Club","Accounting_Club@ufl.edu",22), ("Accounting Club","Accounting_Club@usf.edu",23)
  , ("Accounting Club","Accounting_Club@uwf.edu",24), ("Accounting Club","Accounting_Club@uef.edu",25), ("Accounting Club","Accounting_Club@fullsail.edu",26), ("Accounting Club","Accounting_Club@valencia.edu",27), ("Accounting Club","Accounting_Club@fiu.edu",28), ("Accounting Club","Accounting_Club@fgu.edu",29), ("Accounting Club","Accounting_Club@famu.edu",30)
  , ("American Society of Mechanical Engineers","MechanicalEngSociety@knights.ucf.edu",31), ("American Society of Mechanical Engineers","MechanicalEngSociety@ufl.edu",32), ("American Society of Mechanical Engineers","MechanicalEngSociety@usf.edu",33), ("American Society of Mechanical Engineers","MechanicalEngSociety@uwf.edu",34)
  , ("American Society of Mechanical Engineers","MechanicalEngSociety@uef.edu",35), ("American Society of Mechanical Engineers","MechanicalEngSociety@fullsail.edu",36), ("American Society of Mechanical Engineers","MechanicalEngSociety@valencia.edu",37), ("American Society of Mechanical Engineers","MechanicalEngSociety@fiu.edu",38)
  , ("American Society of Mechanical Engineers","MechanicalEngSociety@fgu.edu",39), ("American Society of Mechanical Engineers","MechanicalEngSociety@famu.edu",40), ("Army R.O.T.C","ROTC@knights.ucf.edu",41), ("Army R.O.T.C","ROTC@ufl.edu",42), ("Army R.O.T.C","ROTC@usf.edu",43), ("Army R.O.T.C","ROTC@uwf.edu",44), ("Army R.O.T.C","ROTC@uef.edu",45)
  , ("Army R.O.T.C","ROTC@fullsail.edu",46), ("Army R.O.T.C","ROTC@valencia.edu",47), ("Army R.O.T.C","ROTC@fiu.edu",48), ("Army R.O.T.C","ROTC@fgu.edu",49), ("Army R.O.T.C","ROTC@famu.edu",50), ("Art Club","Art_Club@knights.ucf.edu",51), ("Art Club","Art_Club@ufl.edu",52), ("Art Club","Art_Club@usf.edu",53), ("Art Club","Art_Club@uwf.edu",54)
  , ("Art Club","Art_Club@uef.edu",55), ("Art Club","Art_Club@fullsail.edu",56), ("Art Club","Art_Club@valencia.edu",57), ("Art Club","Art_Club@fiu.edu",58), ("Art Club","Art_Club@fgu.edu",59), ("Art Club","Art_Club@famu.edu",60), ("Chess Club","Chess@knights.ucf.edu",61), ("Chess Club","Chess@ufl.edu",62), ("Chess Club","Chess@usf.edu",63)
  , ("Chess Club","Chess@uwf.edu",64), ("Chess Club","Chess@uef.edu",65), ("Chess Club","Chess@fullsail.edu",66), ("Chess Club","Chess@valencia.edu",67), ("Chess Club","Chess@fiu.edu",68), ("Chess Club","Chess@fgu.edu",69), ("Chess Club","Chess@famu.edu",70), ("College Democrats","Democrates@knights.ucf.edu",71), ("College Democrats","Democrates@ufl.edu",72)
  , ("College Democrats","Democrates@usf.edu",73), ("College Democrats","Democrates@uwf.edu",74), ("College Democrats","Democrates@uef.edu",75), ("College Democrats","Democrates@fullsail.edu",76), ("College Democrats","Democrates@valencia.edu",77), ("College Democrats","Democrates@fiu.edu",78), ("College Democrats","Democrates@fgu.edu",79)
  , ("College Democrats","Democrates@famu.edu",80), ("College Republicans","Repulicans@knights.ucf.edu",81), ("College Republicans","Repulicans@ufl.edu",82), ("College Republicans","Repulicans@usf.edu",83), ("College Republicans","Repulicans@uwf.edu",84), ("College Republicans","Repulicans@uef.edu",85), ("College Republicans","Repulicans@fullsail.edu",86)
  , ("College Republicans","Repulicans@valencia.edu",87), ("College Republicans","Repulicans@fiu.edu",88), ("College Republicans","Repulicans@fgu.edu",89), ("College Republicans","Repulicans@famu.edu",90), ("Cru","Cru@knights.ucf.edu",91), ("Cru","Cru@ufl.edu",92), ("Cru","Cru@usf.edu",93), ("Cru","Cru@uwf.edu",94), ("Cru","Cru@uef.edu",95)
  , ("Cru","Cru@fullsail.edu",96), ("Cru","Cru@valencia.edu",97), ("Cru","Cru@fiu.edu",98), ("Cru","Cru@fgu.edu",99), ("Cru","Cru@famu.edu",100), ("Cycling Club","Cycling@knights.ucf.edu",101), ("Cycling Club","Cycling@ufl.edu",102), ("Cycling Club","Cycling@usf.edu",103), ("Cycling Club","Cycling@uwf.edu",104), ("Cycling Club","Cycling@uef.edu",105)
  , ("Cycling Club","Cycling@fullsail.edu",106), ("Cycling Club","Cycling@valencia.edu",107), ("Cycling Club","Cycling@fiu.edu",108), ("Cycling Club","Cycling@fgu.edu",109), ("Cycling Club","Cycling@famu.edu",110), ("Debate Club","Debate@knights.ucf.edu",111), ("Debate Club","Debate@ufl.edu",112), ("Debate Club","Debate@usf.edu",113), ("Debate Club","Debate@uwf.edu",114)
  , ("Debate Club","Debate@uef.edu",115), ("Debate Club","Debate@fullsail.edu",116), ("Debate Club","Debate@valencia.edu",117), ("Debate Club","Debate@fiu.edu",118), ("Debate Club","Debate@fgu.edu",119), ("Debate Club","Debate@famu.edu",120), ("Fencing Club","Fencing@knights.ucf.edu",121), ("Fencing Club","Fencing@ufl.edu",122), ("Fencing Club","Fencing@usf.edu",123)
  , ("Fencing Club","Fencing@uwf.edu",124), ("Fencing Club","Fencing@uef.edu",125), ("Fencing Club","Fencing@fullsail.edu",126), ("Fencing Club","Fencing@valencia.edu",127), ("Fencing Club","Fencing@fiu.edu",128), ("Fencing Club","Fencing@fgu.edu",129), ("Fencing Club","Fencing@famu.edu",130), ("Ice Hockey Club","Ice_Hocket@knights.ucf.edu",131)
  , ("Ice Hockey Club","Ice_Hocket@ufl.edu",132), ("Ice Hockey Club","Ice_Hocket@usf.edu",133), ("Ice Hockey Club","Ice_Hocket@uwf.edu",134), ("Ice Hockey Club","Ice_Hocket@uef.edu",135), ("Ice Hockey Club","Ice_Hocket@fullsail.edu",136), ("Ice Hockey Club","Ice_Hocket@valencia.edu",137), ("Ice Hockey Club","Ice_Hocket@fiu.edu",138), ("Ice Hockey Club","Ice_Hocket@fgu.edu",139)
  , ("Ice Hockey Club","Ice_Hocket@famu.edu",140), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@knights.ucf.edu",141), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@ufl.edu",142), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@usf.edu",143), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@uwf.edu",144)
  , ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@uef.edu",145), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@fullsail.edu",146), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@valencia.edu",147), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@fiu.edu",148), ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@fgu.edu",149)
  , ("Phi Delta Epsilon International Medical Fraternity","PDE_Med@famu.edu",150), ("Pre-Law Society","Pre_Law@knights.ucf.edu",151), ("Pre-Law Society","Pre_Law@ufl.edu",152), ("Pre-Law Society","Pre_Law@usf.edu",153), ("Pre-Law Society","Pre_Law@uwf.edu",154), ("Pre-Law Society","Pre_Law@uef.edu",155), ("Pre-Law Society","Pre_Law@fullsail.edu",156)
  , ("Pre-Law Society","Pre_Law@valencia.edu",157), ("Pre-Law Society","Pre_Law@fiu.edu",158), ("Pre-Law Society","Pre_Law@fgu.edu",159), ("Pre-Law Society","Pre_Law@famu.edu",160), ("Pre-Medical Society","Pre_Med@knights.ucf.edu",161), ("Pre-Medical Society","Pre_Med@ufl.edu",162), ("Pre-Medical Society","Pre_Med@usf.edu",163), ("Pre-Medical Society","Pre_Med@uwf.edu",164)
  , ("Pre-Medical Society","Pre_Med@uef.edu",165), ("Pre-Medical Society","Pre_Med@fullsail.edu",166), ("Pre-Medical Society","Pre_Med@valencia.edu",167), ("Pre-Medical Society","Pre_Med@fiu.edu",168), ("Pre-Medical Society","Pre_Med@fgu.edu",169), ("Pre-Medical Society","Pre_Med@famu.edu",170), ("Table Tennis Club","Table_Tennis@knights.ucf.edu",171)
  , ("Table Tennis Club","Table_Tennis@ufl.edu",172), ("Table Tennis Club","Table_Tennis@usf.edu",173), ("Table Tennis Club","Table_Tennis@uwf.edu",174), ("Table Tennis Club","Table_Tennis@uef.edu",175), ("Table Tennis Club","Table_Tennis@fullsail.edu",176), ("Table Tennis Club","Table_Tennis@valencia.edu",177), ("Table Tennis Club","Table_Tennis@fiu.edu",178)
  , ("Table Tennis Club","Table_Tennis@fgu.edu",179), ("Table Tennis Club","Table_Tennis@famu.edu",180), ("Vietnamese Student Association","VitenameseSA@knights.ucf.edu",181), ("Vietnamese Student Association","VitenameseSA@ufl.edu",182), ("Vietnamese Student Association","VitenameseSA@usf.edu",183), ("Vietnamese Student Association","VitenameseSA@uwf.edu",184)
  , ("Vietnamese Student Association","VitenameseSA@uef.edu",185), ("Vietnamese Student Association","VitenameseSA@fullsail.edu",186), ("Vietnamese Student Association","VitenameseSA@valencia.edu",187), ("Vietnamese Student Association","VitenameseSA@fiu.edu",188), ("Vietnamese Student Association","VitenameseSA@fgu.edu",189)
  , ("Vietnamese Student Association","VitenameseSA@famu.edu",190), ("African American Student Association","AfricanAmericanSA@knights.ucf.edu",191), ("African American Student Association","AfricanAmericanSA@ufl.edu",192), ("African American Student Association","AfricanAmericanSA@usf.edu",193), ("African American Student Association","AfricanAmericanSA@uwf.edu",194)
  , ("African American Student Association","AfricanAmericanSA@uef.edu",195), ("African American Student Association","AfricanAmericanSA@fullsail.edu",196)
  , ("African American Student Association","AfricanAmericanSA@valencia.edu",197), ("African American Student Association","AfricanAmericanSA@fiu.edu",198), ("African American Student Association","AfricanAmericanSA@fgu.edu",199), ("African American Student Association","AfricanAmericanSA@famu.edu",200);


insert IGNORE into db_example.rso_users (rso_id, user_id) values
  (1,1), (1,11), (1,21), (1,31), (1,41), (2,2), (2,12), (2,22), (2,32), (2,42), (3,3), (3,13), (3,23), (3,33), (3,43), (4,4)
  , (4,14), (4,24), (4,34), (4,44), (5,5), (5,15), (5,25), (5,35), (5,45), (6,6), (6,16), (6,26), (6,36), (6,46), (7,7), (7,17)
  , (7,27), (7,37), (7,47), (8,8), (8,18), (8,28), (8,38), (8,48), (9,9), (9,19), (9,29), (9,39), (9,49), (10,10), (10,20), (10,30)
  , (10,40), (10,50), (11,11), (11,21), (11,31), (11,41), (11,51), (12,12), (12,22), (12,32), (12,42), (12,52), (13,13), (13,23)
  , (13,33), (13,43), (13,53), (14,14), (14,24), (14,34), (14,44), (14,54), (15,15), (15,25), (15,35), (15,45), (15,55), (16,16)
  , (16,26), (16,36), (16,46), (16,56), (17,17), (17,27), (17,37), (17,47), (17,57), (18,18), (18,28), (18,38), (18,48), (18,58)
  , (19,19), (19,29), (19,39), (19,49), (19,59), (20,20), (20,30), (20,40), (20,50), (20,60), (21,21), (21,31), (21,41), (21,51)
  , (21,61), (22,22), (22,32), (22,42), (22,52), (22,62), (23,23), (23,33), (23,43), (23,53), (23,63), (24,24), (24,34), (24,44)
  , (24,54), (24,64), (25,25), (25,35), (25,45), (25,55), (25,65), (26,26), (26,36), (26,46), (26,56), (26,66), (27,27), (27,37)
  , (27,47), (27,57), (27,67), (28,28), (28,38), (28,48), (28,58), (28,68), (29,29), (29,39), (29,49), (29,59), (29,69), (30,30)
  , (30,40), (30,50), (30,60), (30,70), (31,31), (31,41), (31,51), (31,61), (31,71), (32,32), (32,42), (32,52), (32,62), (32,72)
  , (33,33), (33,43), (33,53), (33,63), (33,73), (34,34), (34,44), (34,54), (34,64), (34,74), (35,35), (35,45), (35,55), (35,65)
  , (35,75), (36,36), (36,46), (36,56), (36,66), (36,76), (37,37), (37,47), (37,57), (37,67), (37,77), (38,38), (38,48), (38,58)
  , (38,68), (38,78), (39,39), (39,49), (39,59), (39,69), (39,79), (40,40), (40,50), (40,60), (40,70), (40,80), (41,41), (41,51)
  , (41,61), (41,71), (41,81), (42,42), (42,52), (42,62), (42,72), (42,82), (43,43), (43,53), (43,63), (43,73), (43,83), (44,44)
  , (44,54), (44,64), (44,74), (44,84), (45,45), (45,55), (45,65), (45,75), (45,85), (46,46), (46,56), (46,66), (46,76), (46,86)
  , (47,47), (47,57), (47,67), (47,77), (47,87), (48,48), (48,58), (48,68), (48,78), (48,88), (49,49), (49,59), (49,69), (49,79)
  , (49,89), (50,50), (50,60), (50,70), (50,80), (50,90), (51,51), (51,61), (51,71), (51,81), (51,91), (52,52), (52,62), (52,72)
  , (52,82), (52,92), (53,53), (53,63), (53,73), (53,83), (53,93), (54,54), (54,64), (54,74), (54,84), (54,94), (55,55), (55,65)
  , (55,75), (55,85), (55,95), (56,56), (56,66), (56,76), (56,86), (56,96), (57,57), (57,67), (57,77), (57,87), (57,97), (58,58)
  , (58,68), (58,78), (58,88), (58,98), (59,59), (59,69), (59,79), (59,89), (59,99), (60,60), (60,70), (60,80), (60,90), (60,100)
  , (61,61), (61,71), (61,81), (61,91), (61,101), (62,62), (62,72), (62,82), (62,92), (62,102), (63,63), (63,73), (63,83), (63,93)
  , (63,103), (64,64), (64,74), (64,84), (64,94), (64,104), (65,65), (65,75), (65,85), (65,95), (65,105), (66,66), (66,76), (66,86), (66,96)
  , (66,106), (67,67), (67,77), (67,87), (67,97), (67,107), (68,68), (68,78), (68,88), (68,98), (68,108), (69,69), (69,79), (69,89)
  , (69,99), (69,109), (70,70), (70,80), (70,90), (70,100), (70,110), (71,71), (71,81), (71,91), (71,101), (71,111), (72,72), (72,82)
  , (72,92), (72,102), (72,112), (73,73), (73,83), (73,93), (73,103), (73,113), (74,74), (74,84), (74,94), (74,104), (74,114), (75,75)
  , (75,85), (75,95), (75,105), (75,115), (76,76), (76,86), (76,96), (76,106), (76,116), (77,77), (77,87), (77,97), (77,107), (77,117)
  , (78,78), (78,88), (78,98), (78,108), (78,118), (79,79), (79,89), (79,99), (79,109), (79,119), (80,80), (80,90), (80,100), (80,110)
  , (80,120), (81,81), (81,91), (81,101), (81,111), (81,121), (82,82), (82,92), (82,102), (82,112), (82,122), (83,83), (83,93), (83,103)
  , (83,113), (83,123), (84,84), (84,94), (84,104), (84,114), (84,124), (85,85), (85,95), (85,105), (85,115), (85,125), (86,86), (86,96)
  , (86,106), (86,116), (86,126), (87,87), (87,97), (87,107), (87,117), (87,127), (88,88), (88,98), (88,108), (88,118), (88,128), (89,89)
  , (89,99), (89,109), (89,119), (89,129), (90,90), (90,100), (90,110), (90,120), (90,130), (91,91), (91,101), (91,111), (91,121), (91,131)
  , (92,92), (92,102), (92,112), (92,122), (92,132), (93,93), (93,103), (93,113), (93,123), (93,133), (94,94), (94,104), (94,114), (94,124)
  , (94,134), (95,95), (95,105), (95,115), (95,125), (95,135), (96,96), (96,106), (96,116), (96,126), (96,136), (97,97), (97,107), (97,117)
  , (97,127), (97,137), (98,98), (98,108), (98,118), (98,128), (98,138), (99,99), (99,109), (99,119), (99,129), (99,139), (100,100)
  , (100,110), (100,120), (100,130), (100,140), (101,101), (101,111), (101,121), (101,131), (101,141), (102,102), (102,112), (102,122)
  , (102,132), (102,142), (103,103), (103,113), (103,123), (103,133), (103,143), (104,104), (104,114), (104,124), (104,134), (104,144)
  , (105,105), (105,115), (105,125), (105,135), (105,145), (106,106), (106,116), (106,126), (106,136), (106,146), (107,107), (107,117)
  , (107,127), (107,137), (107,147), (108,108), (108,118), (108,128), (108,138), (108,148), (109,109), (109,119), (109,129), (109,139)
  , (109,149), (110,110), (110,120), (110,130), (110,140), (110,150), (111,111), (111,121), (111,131), (111,141), (111,151), (112,112)
  , (112,122), (112,132), (112,142), (112,152), (113,113), (113,123), (113,133), (113,143), (113,153), (114,114), (114,124), (114,134)
  , (114,144), (114,154), (115,115), (115,125), (115,135), (115,145), (115,155), (116,116), (116,126), (116,136), (116,146), (116,156)
  , (117,117), (117,127), (117,137), (117,147), (117,157), (118,118), (118,128), (118,138), (118,148), (118,158), (119,119), (119,129)
  , (119,139), (119,149), (119,159), (120,120), (120,130), (120,140), (120,150), (120,160), (121,121), (121,131), (121,141), (121,151)
  , (121,161), (122,122), (122,132), (122,142), (122,152), (122,162), (123,123), (123,133), (123,143), (123,153), (123,163), (124,124)
  , (124,134), (124,144), (124,154), (124,164), (125,125), (125,135), (125,145), (125,155), (125,165), (126,126), (126,136), (126,146)
  , (126,156), (126,166), (127,127), (127,137), (127,147), (127,157), (127,167), (128,128), (128,138), (128,148), (128,158), (128,168)
  , (129,129), (129,139), (129,149), (129,159), (129,169), (130,130), (130,140), (130,150), (130,160), (130,170), (131,131), (131,141)
  , (131,151), (131,161), (131,171), (132,132), (132,142), (132,152), (132,162), (132,172), (133,133), (133,143), (133,153), (133,163)
  , (133,173), (134,134), (134,144), (134,154), (134,164), (134,174), (135,135), (135,145), (135,155), (135,165), (135,175), (136,136)
  , (136,146), (136,156), (136,166), (136,176), (137,137), (137,147), (137,157), (137,167), (137,177), (138,138), (138,148), (138,158)
  , (138,168), (138,178), (139,139), (139,149), (139,159), (139,169), (139,179), (140,140), (140,150), (140,160), (140,170), (140,180)
  , (141,141), (141,151), (141,161), (141,171), (141,181), (142,142), (142,152), (142,162), (142,172), (142,182), (143,143), (143,153)
  , (143,163), (143,173), (143,183), (144,144), (144,154), (144,164), (144,174), (144,184), (145,145), (145,155), (145,165), (145,175)
  , (145,185), (146,146), (146,156), (146,166), (146,176), (146,186), (147,147), (147,157), (147,167), (147,177), (147,187), (148,148)
  , (148,158), (148,168), (148,178), (148,188), (149,149), (149,159), (149,169), (149,179), (149,189), (150,150), (150,160), (150,170)
  , (150,180), (150,190), (151,151), (151,161), (151,171), (151,181), (151,191), (152,152), (152,162), (152,172), (152,182), (152,192)
  , (153,153), (153,163), (153,173), (153,183), (153,193), (154,154), (154,164), (154,174), (154,184), (154,194), (155,155), (155,165)
  , (155,175), (155,185), (155,195), (156,156), (156,166), (156,176), (156,186), (156,196), (157,157), (157,167), (157,177), (157,187)
  , (157,197), (158,158), (158,168), (158,178), (158,188), (158,198), (159,159), (159,169), (159,179), (159,189), (159,199), (160,160)
  , (160,170), (160,180), (160,190), (160,200), (161,161), (161,171), (161,181), (161,191), (161,201), (162,162), (162,172), (162,182)
  , (162,192), (162,202), (163,163), (163,173), (163,183), (163,193), (163,203), (164,164), (164,174), (164,184), (164,194), (164,204)
  , (165,165), (165,175), (165,185), (165,195), (165,205), (166,166), (166,176), (166,186), (166,196), (166,206), (167,167), (167,177)
  , (167,187), (167,197), (167,207), (168,168), (168,178), (168,188), (168,198), (168,208), (169,169), (169,179), (169,189), (169,199)
  , (169,209), (170,170), (170,180), (170,190), (170,200), (170,210), (171,171), (171,181), (171,191), (171,201), (171,211), (172,172)
  , (172,182), (172,192), (172,202), (172,212), (173,173), (173,183), (173,193), (173,203), (173,213), (174,174), (174,184), (174,194)
  , (174,204), (174,214), (175,175), (175,185), (175,195), (175,205), (175,215), (176,176), (176,186), (176,196), (176,206), (176,216)
  , (177,177), (177,187), (177,197), (177,207), (177,217), (178,178), (178,188), (178,198), (178,208), (178,218), (179,179), (179,189)
  , (179,199), (179,209), (179,219), (180,180), (180,190), (180,200), (180,210), (180,220), (181,181), (181,191), (181,201), (181,211)
  , (181,221), (182,182), (182,192), (182,202), (182,212), (182,222), (183,183), (183,193), (183,203), (183,213), (183,223), (184,184)
  , (184,194), (184,204), (184,214), (184,224), (185,185), (185,195), (185,205), (185,215), (185,225), (186,186), (186,196), (186,206)
  , (186,216), (186,226), (187,187), (187,197), (187,207), (187,217), (187,227), (188,188), (188,198), (188,208), (188,218), (188,228)
  , (189,189), (189,199), (189,209), (189,219), (189,229), (190,190), (190,200), (190,210), (190,220), (190,230), (191,191), (191,201)
  , (191,211), (191,221), (191,231), (192,192), (192,202), (192,212), (192,222), (192,232), (193,193), (193,203), (193,213), (193,223)
  , (193,233), (194,194), (194,204), (194,214), (194,224), (194,234), (195,195), (195,205), (195,215), (195,225), (195,235), (196,196)
  , (196,206), (196,216), (196,226), (196,236), (197,197), (197,207), (197,217), (197,227), (197,237), (198,198), (198,208), (198,218)
  , (198,228), (198,238), (199,199), (199,209), (199,219), (199,229), (199,239), (200,200), (200,210), (200,220), (200,230), (200,240);

INSERT IGNORE INTO db_example.event (date,location, title, about , university_id, rso_id, type) value
  ('2017-07-18 18:00:00','CB1 101','ACM Monthly Meeting',"Don't forget to stop by our monthly meeting tomorrow to say hi! In addition to saying hi, you can grab free food, drinks, and ~amazing~ prizes.", 1, NULL, true)
  ,('2017-07-19 14:00:00','ENG 204','Monthly IEEE Meeting',"Stop by this months meeting to recieve this school year's IEEE t-shirt", 1, 11, NULL)
  ,('2017-07-18 18:00:00','BA 217','Resume review',"Accounting majors resume review", 1, 21, NULL)
  ,('2017-07-21 17:30:00','ENG 103','Seminar Series',"Summer Seminar Serires welcomes a very special guest", 1, 31, NULL)
  ,('2017-07-20 12:30:00','CB2 202','Law School Prep',"Find out how to stand out and get into law school", 1, NULL, false)
  ,('2017-07-23 14:00:00','BIO 117','Phi Delta Epsilon Chapter',"Phi Delta Epsilon Chapter Weekly Chapter meeting", 2, NULL, true)
  ,('2017-07-22 12:00:00','GYM','Table Tennis Tournament',"Annual Table Tennis Tournament Great Prizes", 2, 172, NULL)
  ,('2017-07-22 12:00:00','Library','Chess Practice',"Open Chess Practice for the fall team",2,62, NULL)
  ,('2017-07-23 08:00:00','Chapel','Cru Service',"Cru weekly service at the on campus Chapel",2 ,92, NULL)
  ,('2017-07-19 12:00:00','Student Union','Vietnamese Cookout',"Come out to enjoy some great Vietnamese food and learn about our organization",2 ,NULL, false)
  ,('2017-07-21 17:30:00','Harris Hall 302','The Great Debate',"Come out and put your debate skills to the test",3 ,NULL,false )
  ,('2017-07-20 16:00:00','Ice Rink','Tryouts',"Open Tryouts for the 2017 Ice Hockey organization",3,133,NULL )
  ,('2017-07-24 14:00:00','Gym','Fencing Practice',"Open Fencing practice, all are welcome",3,NULL,true )
  ,('2017-07-19 13:00:00','MED 210','Med School Prep',"Find out how to stand out and get into medical school",3,163,NULL)
  ,('2017-07-21 15:30:00','Student Union','College Democrats Talk',"We are bring out a special guest for this TED Talk",3,73,NULL)
  ,('2017-07-19 09:00:00','ROTC 116','ROTC Information Session',"Find out the benefits of joining the ROTC Program",4 ,44,NULL )
  ,('2017-07-22 09:00:00','GYM','Cycling Club Group Ride',"Monthly Group ride with the cycling club",4 ,NULL,true )
  ,('2017-07-19 17:00:00','CB1 205','College Republicans Meeting',"Come find out why voting is important!",4 ,84,NULL )
  ,('2017-07-20 13:00:00','ART 317','Art Display',"Checkout the newest artwork creating by the Art Club",4 ,NULL,false )
  ,('2017-07-21 13:30:00','Volleyball Court','Cru Volleyball Tournament',"Win great prizes and meet new friends!",4 ,94, NULL )
  ,('2017-07-19 12:30:00','CB 102','Law School Prep',"Find out how to stand out and get into law school",5 ,155,NULL )
  ,('2017-07-24 14:00:00','BIO 207','Phi Delta Epsilon Chapter',"Phi Delta Epsilon Chapter Weekly Chapter meeting",5 ,145,NULL )
  ,('2017-07-20 12:00:00','Library','Chess Practice',"Open Chess Practice for the fall team",5 ,NULL,true )
  ,('2017-07-25 14:00:00','Gym','Fencing Practice',"Open Fencing practice, all are welcome",5 ,125,NULL )
  ,('2017-07-21 17:30:00','ENG 103','Seminar Series',"Summer Seminar Serires welcomes a very special guest",5 ,NULL,false)
  ,('2017-07-19 15:00:00','CB1 101','ACM Monthly Meeting',"Don't forget to stop by our monthly meeting tomorrow to say hi! In addition to saying hi, you can grab free food, drinks, and ~amazing~ prizes.", 6, 6,NULL)
  ,('2017-07-18 16:00:00','ENG 204','Monthly IEEE Meeting',"Stop by this months meeting to recieve this school year's IEEE t-shirt", 6, 16,NULL)
  ,('2017-07-21 14:00:00','BA 217','Resume review',"Accounting majors resume review", 6, NULL,false)
  ,('2017-07-20 16:30:00','ENG 103','Seminar Series',"Summer Seminar Serires welcomes a very special guest", 6, NULL,true)
  ,('2017-07-21 13:30:00','CB2 202','Law School Prep',"Find out how to stand out and get into law school", 6, 156,NULL)
  ,('2017-07-23 14:30:00','BIO 117','Phi Delta Epsilon Chapter',"Phi Delta Epsilon Chapter Weekly Chapter meeting", 7, 147,NULL)
  ,('2017-07-24 13:00:00','GYM','Table Tennis Tournament',"Annual Table Tennis Tournament Great Prizes", 7, NULL,true)
  ,('2017-07-23 12:00:00','Library','Chess Practice',"Open Chess Practice for the fall team",7,NULL,false)
  ,('2017-07-22 08:30:00','Chapel','Cru Service',"Cru weekly service at the on campus Chapel",7 ,97,NULL)
  ,('2017-07-21 12:15:00','Student Union','Vietnamese Cookout',"Come out to enjoy some great Vietnamese food and learn about our organization",7 ,NULL,true)
  ,('2017-07-19 15:30:00','Harris Hall 302','The Great Debate',"Come out and put your debate skills to the test",8 ,118,NULL )
  ,('2017-07-24 13:00:00','Ice Rink','Tryouts',"Open Tryouts for the 2017 Ice Hockey organization",8,138,NULL)
  ,('2017-07-19 15:00:00','Gym','Fencing Practice',"Open Fencing practice, all are welcome",8,NULL,true)
  ,('2017-07-24 16:00:00','MED 210','Med School Prep',"Find out how to stand out and get into medical school",8,168,NULL)
  ,('2017-07-19 12:30:00','Student Union','College Democrats Talk',"We are bring out a special guest for this TED Talk",8,NULL,true)
  ,('2017-07-21 09:30:00','ROTC 116','ROTC Information Session',"Find out the benefits of joining the ROTC Program",9 ,49,NULL )
  ,('2017-07-21 10:00:00','GYM','Cycling Club Group Ride',"Monthly Group ride with the cycling club",9 ,NULL,false)
  ,('2017-07-20 16:00:00','CB1 205','College Republicans Meeting',"Come find out why voting is important!",9 ,NULL,true)
  ,('2017-07-22 14:00:00','ART 317','Art Display',"Checkout the newest artwork creating by the Art Club",9 ,59,NULL)
  ,('2017-07-19 16:30:00','Volleyball Court','Cru Volleyball Tournament',"Win great prizes and meet new friends!",9 ,99,NULL )
  ,('2017-07-21 13:30:00','CB 102','Law School Prep',"Find out how to stand out and get into law school",10 ,160,NULL )
  ,('2017-07-20 12:00:00','BIO 207','Phi Delta Epsilon Chapter',"Phi Delta Epsilon Chapter Weekly Chapter meeting",10 ,150,NULL )
  ,('2017-07-24 15:00:00','Library','Chess Practice',"Open Chess Practice for the fall team",10 ,NULL,true)
  ,('2017-07-21 12:00:00','Gym','Fencing Practice',"Open Fencing practice, all are welcome",10 ,130,NULL )
  ,('2017-07-25 15:30:00','ENG 103','Seminar Series',"Summer Seminar Serires welcomes a very special guest",10 ,NULL,false);


insert ignore into db_example.event_users (event_id, user_id) values
  (1,500), (1,300), (1,255), (1,267), (1,478),(1,284), (1,55), (1,22)
  ,(6,335), (6,256), (6,198), (6,76), (6,76),(6,58), (6,30), (6,29)
  ,(13,110), (13,201), (13,408), (13,134), (13,300),(13,144), (13,392), (13,500)
  ,(17,109), (17,202), (17,168), (17,321), (17,294),(17,310), (17,259), (17,480)
  ,(23,108), (23,203), (23,175), (23,342), (23,276),(23,258), (23,320), (23,470)
  ,(29,107), (29,204), (29,165), (29,123), (29,287),(29,330), (29,286), (29,460)
  ,(32,106), (32,205), (32,155), (32,414), (32,340),(32,286), (32,278), (32,450)
  ,(35,105), (35,206), (35,145), (35,350), (35,378),(35,366), (35,348), (35,440)
  ,(38,104), (38,207), (38,360), (38,423), (38,376),(38,36), (38,346), (38,430)
  ,(40,103), (40,208), (40,135), (40,370), (40,375),(40,345), (40,346), (40,420)
  ,(43,102), (43,209), (43,122), (43,123), (43,380),(43,340), (43,405), (43,410)
  ,(48,101), (48,210), (48,125), (48,498), (48,370),(48,390), (48,400), (48,400)
  ,(5,1), (5,11), (5,21), (5,51), (5,81),(5,101), (5,111), (5,121)
  ,(10,2), (10,22), (10,222), (10,322), (10,332),(10,122), (10,132), (10,142)
  ,(11,33), (11,133), (11,233), (11,333), (11,433),(11,423), (11,323), (11,223)
  ,(19,224), (19,244), (19,344), (19,144), (19,64),(19,34), (19,44), (19,4)
  ,(25,5), (25,55), (25,155), (25,255), (25,355),(25,355), (25,345), (25,235)
  ,(28,6), (28,66), (28,46), (28,396), (28,186),(28,276), (28,246), (28,466)
  ,(33,7), (33,77), (33,477), (33,437), (33,377),(33,277), (33,177), (33,227)
  ,(42,39), (42,159), (42,269), (42,379), (42,409),(42,449), (42,9), (42,79)
  ,(50,450), (50,400), (50,160), (50,150), (50,110),(50,40), (50,50), (50,10)
  ,(2,11), (2,21), (2,31), (2,41), (2,51)
  ,(3,21), (3,31), (3,41), (3,51), (3,61)
  ,(4,31), (4,41), (4,51), (4,61), (4,71)
  ,(7,172), (7,182), (7,192), (7,202), (7,212)
  ,(8,62), (8,72), (8,82), (8,92), (8,102)
  ,(9,92), (9,102), (9,112), (9,122), (9,132)
  ,(12,133), (12,143), (12,153), (12,163), (12,173)
  ,(14,163), (14,173), (14,183), (14,193), (14,203)
  ,(15,73), (15,83), (15,93), (15,103), (15,113)
  ,(16,44), (16,54), (16,64), (16,74), (16,84)
  ,(18,84), (18,94), (18,104), (18,114), (18,124)
  ,(20,94), (20,104), (20,114), (20,124), (20,134)
  ,(21,155), (21,165), (21,175), (21,185), (21,195)
  ,(22,145), (22,155), (22,165), (22,175), (22,185)
  ,(24,125), (24,135), (24,145), (24,155), (24,165)
  ,(26,6), (26,16), (26,26), (26,36), (26,46)
  ,(27,16), (27,26), (27,36), (27,46), (27,56)
  ,(30,156), (30,166), (30,176), (30,186), (30,196)
  ,(31,147), (31,157), (31,167), (31,177), (31,187)
  ,(34,97), (34,107), (34,117), (34,127), (34,137)
  ,(36,118), (36,128), (36,138), (36,148), (36,158)
  ,(37,138), (37,148), (37,158), (37,168), (37,178)
  ,(39,168), (39,178), (39,188), (39,198), (39,208)
  ,(41,49), (41,59), (41,69), (41,79), (41,89)
  ,(44,59), (44,69), (44,79), (44,89), (44,99)
  ,(45,99), (45,109), (45,119), (45,129), (45,139)
  ,(46,160), (46,170), (46,180), (46,190), (46,200)
  ,(47,150), (47,160), (47,170), (47,180), (47,190)
  ,(49,130), (47,140), (47,150), (47,160), (47,170);

insert ignore into db_example.comment (message, event_id,user_id) values
  ("I wonder what prizes there are",1,500),("Ian, I heard that is was a Raspberry Pi!",1,284)
  ,("Free Pizza? I'll be there!",1,22),("Harry, you don't need anymore pizza ;)",1,55)
  ,("Should I bring multiple copies?",3,21),("Do we need our laptop?",3,31)
  ,("Can someone email me the tips, I won't be able to make it",3,41),("Angela, I'll email you the tips!",3,61);



UPDATE db_example.university Set admin_id = "1"
  where id = "1";
UPDATE db_example.university Set admin_id = "2"
    where id = "2";
UPDATE db_example.university Set admin_id = "3"
      where id = "3";
UPDATE db_example.university Set admin_id = "4"
        where id = "4";
UPDATE db_example.university Set admin_id = "5"
  where id = "5";
UPDATE db_example.university Set admin_id = "6"
    where id = "6";
UPDATE db_example.university Set admin_id = "7"
      where id = "7";
UPDATE db_example.university Set admin_id = "8"
        where id = "8";
UPDATE db_example.university Set admin_id = "9"
      where id = "9";
UPDATE db_example.university Set admin_id = "10"
        where id = "10";


-- insert ignore into db_example.university_users (university_id, user_id) values
  -- (1,102), (2,103), (1,112), (2,113), (1,112), (2,113);


-- delete a, u, r from admin a, user u, rso r;
