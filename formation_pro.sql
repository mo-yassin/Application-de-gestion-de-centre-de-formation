CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `nom_apprenant` varchar(50) NOT NULL,
  `prenom_apprenant` varchar(50) NOT NULL,
  `email_apprenant` varchar(50) NOT NULL,
  `pswd_apprenant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `evaluation` (
  `id_evaluation` int(11) NOT NULL,
  `resultat` varchar(20) NOT NULL,
  `date_evaluation` date NOT NULL,
  `id_apprenant` int(11) NOT NULL,
  `id_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `formateur` (
  `id_formateur` int(11) NOT NULL,
  `nom_formateur` varchar(50) NOT NULL,
  `prenom_formateur` varchar(50) NOT NULL,
  `email_formateur` varchar(50) NOT NULL,
  `pswd_formateur` varchar(50) NOT NULL
);

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `masse_horaire` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
);

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `max_places` int(11) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `id_formation` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL
);
