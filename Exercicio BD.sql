CREATE DATA BASE ETEC_HAS_EX_01

USE BASE ETEC_HAS_EX_01

 1- CREATE TABLE Area
(id_area	int			  primary key NOT NULL,
 nm_area    varchar (60)			  NOT NULL)



 2-CREATE TABLE Professor
 (id_prof	 int		  primary key    NOT NULL,
  nm_prof	 varchar(60)				 NOT NULL,
  end_prof   varchar(255)				 NOT NULL,
  rg_prof    varchar(20)				 NOT NULL,
  cpf_prof   varchar(12)				 NOT NULL)

  3-CREATE TABLE Curso
  (id_curso	      int		  primary key NOT NULL,
   area_id_area   int					  NOT NULL,
   nm_curso       varchar(45)             NOT NULL,
   constraint Area_id_area foreign key (area_id_area) references Area (id_area))


  4-CREATE TABLE Modulo
  (id_mod	        int		  primary key NOT NULL,
   curso_id_curso   int					  NOT NULL,
   nm_mod           int					  NOT NULL,
   constraint Curso_id_Curso foreign key (curso_id_curso ) references Curso (id_curso))


   5- CREATE TABLE Materia
  (id_mat	          int		  primary key NOT NULL,
   Professor_id_prof  int					  NOT NULL,
   Modulo_id_mod      int					  NOT NULL,
   nm_mat             int					  NOT NULL,
   constraint Modulo_id_mod foreign key (Modulo_id_mod ) references Modulo (id_mod),
   constraint Professor_id_prof foreign key (Professor_id_prof ) references Professor (id_prof))

   6- CREATE TABLE Aluno
  (id_alu	          int		  primary key NOT NULL, 
   Curso_id_Curso     int					  NOT NULL,
   nm_alu             varchar(20)			  NOT NULL,
   end_alu            varchar(255)			  NOT NULL,
   rg_alu             varchar(20)			  NOT NULL,
   cpf_alu            numeric(11)			  NOT NULL,
   email_alu          varchar(50)			  NOT NULL,
   nm_mae_alu         varchar(60)			  NOT NULL,
   nm_pai_alu         varchar(60)			  NOT NULL
   constraint Curso_id_Curso foreign key (Curso_id_Curso ) references Curso (id_curso))


SP_help Area
SP_help Professor
SP_help Curso
SP_help Modulo
SP_help Materia
SP_help Aluno

select * from Area
select * from Professor
select * from Curso
select * from Modulo
select * from Materia
select * from Aluno