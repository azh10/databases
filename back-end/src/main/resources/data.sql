
insert ignore into db_example.university (location, name) value
  ('Orlando', 'UCF')
 ,('Orlando', 'Valencia')
 ,('Gainesville', 'UF');

insert ignore into db_example.user (id, name, email) value
  (1,"Joe","joe@example.com"), (2, "Dave", "dave@netscape.com");

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
  (1), (2);

insert IGNORE into db_example.rso (name, email, admin_id) values
  ("4EVER KNIGHTS","knights4ever@ucf.edu",1), ("Active Minds","minds@ucf.edu",2), ("Actuarial Science Club","asc@ucf.edu",2),
  ("Advertising Club","advertising@ucf.edu",2),("Advocates for World Health","advocatehealth@ucf.edu",1),
  ("American Red Cross Club","redcross@help.org",1);

insert IGNORE into db_example.rso_users (rso_id, user_id) values
  (1,1),(1,2),(1,3);

INSERT IGNORE INTO db_example.event (date, location, title, university_id, rso_id) VALUES
  (DATE ('2017-06-23'), 'Orlando', 'Party', null, 1),
  (DATE ('2017-06-23'), 'Orlando', 'Studying', null, 2),
  (DATE ('2017-06-23'), 'Orlando', 'Dinner', null, 3),
  (DATE ('2017-06-23'), 'Orlando', 'Football Game', 1, null),
  (DATE ('2017-06-23'), 'Orlando', 'Hackaton', 2, null),
  (DATE ('2017-06-23'), 'Orlando', 'Rally', 3, null)





-- delete a, u, r from admin a, user u, rso r;
