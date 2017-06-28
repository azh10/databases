
insert ignore into db_example.university (location, name) value
  ('Orlando', 'UCF')
 ,('Orlando', 'Valencia')
 ,('Gainesville', 'UF');

insert ignore into db_example.university (location, name) value
  ("Orlando","UCF");

insert ignore into db_example.user (id, name, email) value
  (1,"Joe","joe@example.com");

insert IGNORE into db_example.user (name, email) values
  ("Aidan","at.arcu@Duis.com"),("Patrick","euismod.ac.fermentum@adipiscingelit.net"),("Oren","sed.pede@euaccumsan.org"),("Walker","tristique.senectus.et@dictumProineget.net"),("Orson","nibh.sit@Donec.edu"),("Cecilia","mauris@lobortis.co.uk"),("Orlando","a@fermentumconvallisligula.org"),("Isaac","lacus.Mauris@arcuSedeu.co.uk"),("Echo","Donec@sollicitudinamalesuada.com"),("Darius","at.egestas.a@duiSuspendisseac.net"),
  ("Hannah","ut@sem.ca"),("Oscar","Donec.sollicitudin.adipiscing@ornaretortor.ca"),("Reed","sem@velitSed.com"),("Mariam","non.sollicitudin@aliquetnec.edu"),("Timon","eu.ultrices@aliquetmetus.org"),("Jessamine","purus.in.molestie@euodioPhasellus.edu"),("Tana","tellus@vellectusCum.com"),("Ivana","quis.massa@utmi.org"),("Willa","ultrices.a@accumsanconvallisante.org"),("Noelani","natoque.penatibus@etmagnisdis.edu"),
  ("Amaya","at.egestas.a@venenatis.org"),("Eliana","lacinia.mattis.Integer@dapibusidblandit.co.uk"),("Yuri","venenatis.a.magna@dolor.ca"),("Lucius","netus.et.malesuada@eget.ca"),("Ivor","ut@posuere.org"),("Yardley","sollicitudin.adipiscing@montesnascetur.org"),("Melvin","tincidunt@eu.net"),("Isabella","fringilla.mi@egestas.ca"),("Louis","non.sapien.molestie@amet.net"),("Elmo","vel@laciniaat.net"),
  ("Irene","eu.tempor@massa.ca"),("Lael","Nulla@Craseget.org"),("Driscoll","ultrices.posuere.cubilia@felisNulla.org"),("Halla","nibh.dolor.nonummy@Donecdignissimmagna.com"),("Boris","Curabitur@estMauris.co.uk"),("Ruth","Maecenas.malesuada.fringilla@nonummyultriciesornare.net"),("Amal","elit@duiquisaccumsan.edu"),("Galena","posuere.vulputate@eteros.net"),("Dean","cursus.et.magna@imperdiet.edu"),("Hyacinth","tristique@vitae.edu"),
  ("Lilah","accumsan.laoreet.ipsum@tristiquepharetra.net"),("Chloe","convallis.ligula@neque.org"),("Travis","ultricies.ornare@Pellentesquehabitant.net"),("Noel","interdum@turpisNullaaliquet.org"),("Norman","tempus.scelerisque@Aeneanmassa.com"),("Belle","tincidunt.aliquam.arcu@ut.com"),("Rahim","sagittis.Duis@Sed.edu"),("Lynn","id.enim.Curabitur@molestieorci.co.uk"),("Len","sit@ornare.org"),("Andrew","vel@nuncest.edu"),
  ("Quail","pellentesque.a@pharetrasedhendrerit.com"),("Otto","vitae.mauris.sit@Loremipsum.ca"),("Dean","tellus.non.magna@dolor.net"),("Declan","dui.nec.tempus@eterosProin.edu"),("Evelyn","est.congue.a@ut.edu"),("Rhonda","quis.pede.Praesent@montesnascetur.co.uk"),("Hiram","purus.mauris@Proin.net"),("Selma","tempor.erat.neque@dolornonummyac.co.uk"),("Lynn","auctor.non@lectusante.com"),("Ignacia","sit@infaucibusorci.ca"),
  ("Cade","massa@nullaDonec.com"),("Yasir","auctor@egestasligula.co.uk"),("Lysandra","aliquam.eu@feugiat.ca"),("McKenzie","mauris@malesuadaaugue.org"),("Petra","nonummy.ut.molestie@Aenean.com"),("Iliana","leo.Cras@elitelit.ca"),("Fredericka","consequat@tempor.com"),("Henry","mi.felis.adipiscing@fringillaornareplacerat.org"),("Ignatius","cursus@inconsectetuer.org"),("Joseph","mollis.nec.cursus@tristique.co.uk"),
  ("Blossom","odio.a.purus@aarcuSed.ca"),("Steel","amet.ante.Vivamus@sagittis.ca"),("Aubrey","sed@Cumsociis.org"),("Hadassah","Vivamus@mauris.com"),("Simone","Pellentesque@Praesent.com"),("Rachel","scelerisque@dui.ca"),("Addison","Vivamus.nibh@Morbivehicula.edu"),("Evelyn","fermentum@etipsum.edu"),("Mona","mauris@accumsansed.ca"),("Zelenia","a.enim.Suspendisse@dictum.ca"),
  ("Drew","tincidunt.congue.turpis@Curabiturvel.com"),("Lydia","magna.et.ipsum@inaliquetlobortis.edu"),("Nigel","nec.cursus.a@ultricesposuere.co.uk"),("Ivana","diam.nunc@ac.com"),("Hashim","dis@volutpatNulladignissim.org"),("Ian","auctor.non@ligulaelit.edu"),("Rana","accumsan.interdum@lectusrutrumurna.org"),("Warren","non@quis.com"),("Malachi","rhoncus.Donec@Crassedleo.com"),("Tyler","Donec@egestasa.edu"),
  ("Jessamine","amet@lacusUt.net"),("Quyn","lectus.sit.amet@Praesentinterdum.org"),("Montana","sit@laciniamattisInteger.co.uk"),("Xenos","Quisque.ornare@ultricesiaculis.com"),("Logan","sagittis@venenatislacusEtiam.edu"),("Mariam","Phasellus.at@erateget.ca"),("Olympia","fermentum.metus.Aenean@nonummyultriciesornare.ca"),("Azalia","ac@malesuada.co.uk"),("Cadman","natoque.penatibus@semvitae.ca"),("Aileen","risus.In.mi@ullamcorpernislarcu.edu");

insert IGNORE into db_example.admin (user_id) VALUES
  (1);

insert IGNORE into db_example.rso (name, email, admin_id) values
  ("posuere, enim nisl","purus.mauris@nonummyultriciesornare.com",1),("lorem semper auctor.","Cras.pellentesque@mollis.net",1),("ut,","pharetra.Nam@faucibusleo.com",1),("pede,","amet.massa.Quisque@Utnec.com",1),("lacus. Mauris","mauris.blandit.mattis@at.co.uk",1),("iaculis odio.","ut.dolor@mi.co.uk",1),("nunc. Quisque","aptent@mi.co.uk",1),("Suspendisse","Morbi.non@erosnon.net",1),("habitant morbi","ipsum@Maecenasmalesuada.ca",1),("Sed","purus.accumsan.interdum@metusurna.org",1)
 ,("diam nunc, ullamcorper","ridiculus.mus@odio.edu",1),("ac","placerat.orci@venenatis.org",1),("amet orci.","neque.vitae@Curae.edu",1),("Mauris vestibulum,","vitae.erat@nullamagna.ca",1),("dictum","elit.Etiam.laoreet@vitaepurus.com",1),("odio. Nam interdum","Quisque@ullamcorper.org",1),("diam","tellus.Suspendisse@ornare.org",1),("ornare. In faucibus.","ornare@vehiculaetrutrum.co.uk",1),("Integer vitae nibh.","at.libero@enimsitamet.edu",1),("odio.","at.pretium@nislsemconsequat.org",1)
 ,("dolor. Donec","blandit.at.nisi@lorem.co.uk",1),("Nullam vitae","Nunc.laoreet.lectus@Vestibulum.net",1),("adipiscing","elit.Aliquam@ligula.edu",1),("varius. Nam","egestas@velitQuisque.com",1),("sed tortor.","nibh.Quisque@rhoncusProinnisl.edu",1),("amet lorem","sollicitudin@atiaculisquis.com",1),("Nulla dignissim. Maecenas","in.dolor.Fusce@Nullamutnisi.co.uk",1),("ornare, elit elit","et@lacusQuisque.co.uk",1),("faucibus orci luctus","dolor@Duis.net",1),("nulla magna,","interdum.Nunc.sollicitudin@est.co.uk",1)
 ,("per","pharetra.Quisque.ac@In.net",1),("eu tellus","nulla@Cumsociisnatoque.org",1),("vulputate velit","tincidunt.neque@Duis.net",1),("semper. Nam tempor","convallis@diamluctus.ca",1),("Etiam imperdiet dictum","libero.dui.nec@pharetra.co.uk",1),("Mauris non","et.libero@a.com",1),("neque","Etiam.bibendum.fermentum@Curabitursed.co.uk",1),("Donec","facilisis.non.bibendum@arcu.edu",1),("Nam tempor diam","mi@egestas.net",1),("mauris id sapien.","pede@quam.net",1)
 ,("orci, in","lectus@necurna.edu",1),("tincidunt, nunc","in.consequat.enim@In.edu",1),("posuere cubilia Curae;","Sed.pharetra@nulla.co.uk",1),("tellus sem mollis","eleifend@eu.edu",1),("varius. Nam","pede.malesuada@musProin.net",1),("porttitor","fermentum@intempus.com",1),("penatibus et magnis","Integer@pellentesque.co.uk",1),("elit. Etiam","cursus.luctus@Donecporttitor.edu",1),("nulla.","Phasellus.nulla.Integer@consequatauctor.com",1),("natoque penatibus et","scelerisque@idblanditat.org",1)
 ,("purus. Maecenas","et@nuncsit.net",1),("ridiculus","convallis.dolor@augueporttitorinterdum.ca",1),("tincidunt tempus risus.","dictum.ultricies@acrisus.net",1),("Cras","Aliquam.ultrices.iaculis@parturientmontes.ca",1),("augue ut","sollicitudin.a.malesuada@pedeultrices.org",1),("id ante","eu.ultrices.sit@enim.co.uk",1),("enim mi","Pellentesque.habitant@faucibusMorbivehicula.ca",1),("Nullam feugiat","ultrices.Duis@vitae.co.uk",1),("magna. Ut","imperdiet@dolorNullasemper.co.uk",1),("Donec feugiat","amet.consectetuer.adipiscing@in.ca",1)
,("vel arcu.","natoque.penatibus.et@etultrices.com",1),("feugiat","erat.Vivamus.nisi@metusIn.com",1),("dictum","varius@facilisis.edu",1),("eu","ornare.lectus@non.ca",1),("erat vel pede","ad.litora@facilisiseget.ca",1),("ornare tortor","Cum.sociis@blanditenimconsequat.edu",1),("In tincidunt congue","a@atpretium.co.uk",1),("eleifend egestas. Sed","Suspendisse@Nunccommodoauctor.net",1),("ligula. Aenean euismod","Integer.eu@Innec.net",1),("tempor diam dictum","Aliquam.vulputate@mattissemper.edu",1)
  ,("et, euismod","hymenaeos.Mauris.ut@parturient.ca",1),("Vestibulum ante","lectus.pede.ultrices@lobortisquis.org",1),("faucibus leo,","eros.non@ut.org",1),("diam. Duis","eu.eros@interdum.edu",1),("ullamcorper.","molestie.tortor.nibh@blandit.net",1),("pede, nonummy ut,","scelerisque.sed.sapien@quam.co.uk",1),("faucibus orci luctus","est.congue@Etiamligulatortor.ca",1),("venenatis a,","dolor.dolor.tempus@scelerisquedui.edu",1),("ultricies","metus.sit.amet@sitametorci.org",1),("Vivamus nibh dolor,","elementum@laciniavitae.org",1)
  ,("eros. Proin ultrices.","faucibus@tinciduntvehicula.net",1),("lorem,","blandit@Crasvulputate.ca",1),("odio. Aliquam","Fusce@ac.co.uk",1),("libero.","dis.parturient.montes@pharetranibhAliquam.edu",1),("elit,","faucibus@rutrummagnaCras.com",1),("nibh. Donec est","cubilia@metusfacilisislorem.co.uk",1),("nibh.","Nunc.laoreet.lectus@euismodenimEtiam.edu",1),("semper. Nam tempor","nulla.vulputate@ametnulla.co.uk",1),("urna. Vivamus","nascetur.ridiculus.mus@Morbiquisurna.co.uk",1),("quam","sagittis.augue.eu@Quisqueornaretortor.ca",1)
  ,("semper,","viverra@lorem.edu",1),("odio vel est","turpis.In.condimentum@blanditatnisi.edu",1),("neque vitae semper","natoque@vel.ca",1),("Cum","vitae.mauris.sit@lectusa.co.uk",1),("ligula. Donec luctus","velit.egestas.lacinia@sollicitudincommodoipsum.org",1),("vel quam","ornare@idliberoDonec.org",1),("arcu. Vestibulum ut","pede.nec@eratnonummyultricies.co.uk",1),("erat volutpat. Nulla","quis.massa.Mauris@elementum.co.uk",1),("ante ipsum primis","dis.parturient@commodotincidunt.net",1),("nascetur ridiculus","leo@elitfermentum.co.uk",1);


insert IGNORE into db_example.rso_users (rso_id, user_id) values
  (1,1),(1,2),(1,3);

INSERT IGNORE INTO db_example.event (date, location, title, rso_id) VALUES
  (DATE ('2017-06-23'), 'Orlando', 'Party', 1),
  (DATE ('2017-06-23'), 'Orlando', 'Studying', 2),
  (DATE ('2017-06-23'), 'Orlando', 'Dinner', 3);

INSERT IGNORE INTO db_example.event (date, location, title, university_id) VALUES
  (DATE ('2017-06-23'), 'Orlando', 'Football Game', 1),
  (DATE ('2017-06-23'), 'Orlando', 'Hackaton', 2),
  (DATE ('2017-06-23'), 'Orlando', 'Rally', 3)





-- delete a, u, r from admin a, user u, rso r;
