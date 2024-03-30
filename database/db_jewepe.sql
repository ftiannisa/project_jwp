-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 08:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jewepe`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `nama`, `email`, `password`) VALUES
(1, 'admin-fr', 'fr_12119481@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'brian', 'brian.kang@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `t_artikel`
--

CREATE TABLE `t_artikel` (
  `id_artikel` int(5) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal_posting` date NOT NULL DEFAULT current_timestamp(),
  `tanggal_edit` date NOT NULL DEFAULT current_timestamp(),
  `id_admin` int(5) NOT NULL,
  `status_komentar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_artikel`
--

INSERT INTO `t_artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal_posting`, `tanggal_edit`, `id_admin`, `status_komentar`) VALUES
(1, 'Web Framework: Bootstrap 5', '<blockquote><p>The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web.</p></blockquote><h1>&nbsp;</h1><h1>What\'s Bootstrap?</h1><p>Bootstrap is the world\'s most powerful, extensible, and feature-packed frontend toolkit— with a vast community of themes, extensions, plugins, and more.</p><p>&nbsp;</p><h2>Build fast, responsive sites with&nbsp;Bootstrap</h2><p>Powerful, extensible, and feature-packed frontend toolkit. Build and customize with Sass, utilize prebuilt grid system and components, and bring projects to life with powerful JavaScript plugins.</p><p>&nbsp;</p><h2>How to get started?</h2><ul><li>use the CDN</li><li>install it via package manager, or</li><li>download the source code.</li></ul><p>&nbsp;</p><h2>What\'s more?</h2><ul><li>Customize everything with&nbsp;Sass<ul><li>Bootstrap utilizes Sass for a modular and customizable architecture. Import only the components you need, enable global options like gradients and shadows, and write your own CSS with our variables, maps, functions, and mixins.</li></ul></li><li>Build and extend in real-time with CSS variables<ul><li>Bootstrap 5 is evolving with each release to better utilize CSS variables for global theme styles, individual components, and even utilities. We provide dozens of variables for colors, font styles, and more at a :root level for use anywhere. On components and utilities, CSS variables are scoped to the relevant class and can easily be modified.</li></ul></li><li>Components, meet the Utility API<ul><li>New in Bootstrap 5, our utilities are now generated by our Utility API. We built it as a feature-packed Sass map that can be quickly and easily customized. It\'s never been easier to add, remove, or modify any utility classes. Make utilities responsive, add pseudo-class variants, and give them custom names.</li></ul></li><li>Powerful JavaScript plugins without jQuery<ul><li>Add toggleable hidden elements, modals and offcanvas menus, popovers and tooltips, and so much more—all without jQuery. Bootstrap\'s JavaScript is HTML-first, meaning most plugins are added with data attributes in your HTML. Need more control? Include individual plugins programmatically.</li></ul></li><li>Personalize it with Bootstrap Icons<ul><li>Bootstrap Icons is an open source SVG icon library featuring over 1,800 glyphs, with more added every release. They\'re designed to work in any project, whether you use Bootstrap itself or not. Use them as SVGs or icon fonts—both options give you vector scaling and easy customization via CSS.</li></ul></li><li>Make it yours with official Bootstrap Themes<ul><li>Take Bootstrap to the next level with premium themes from the official Bootstrap Themes marketplace. Themes are built on Bootstrap as their own extended frameworks, rich with new components and plugins, documentation, and powerful build tools.</li></ul></li></ul>', 'https://getbootstrap.com/docs/5.3/assets/img/bootstrap-icons.png', '2023-06-16', '2023-06-16', 1, 1),
(3, 'Android UI Toolkit: Jetpack Compose', '<blockquote><p>Build better apps faster with Jetpack Compose.</p></blockquote><p>&nbsp;</p><h1>What\'s Jetpack Compose?</h1><p>Jetpack Compose is Android’s recommended modern toolkit for building native UI. It simplifies and accelerates UI development on Android. Quickly bring your app to life with less code, powerful tools, and intuitive Kotlin APIs.</p><p>&nbsp;</p><h2>Why Jetpack Compose?</h2><ul><li>Less code<ul><li>Do more with less code and avoid entire classes of bugs, so code is simple and easy to maintain.</li></ul></li><li>Intuitive<ul><li>Just describe your UI, and Compose takes care of the rest. As app state changes, your UI automatically updates.</li></ul></li><li>Accelerate development<ul><li>Compatible with all your existing code so you can adopt when and where you want. Iterate fast with live previews and full Android Studio support.</li></ul></li><li>Powerful<ul><li>Create beautiful apps with direct access to the Android platform APIs and built-in support for Material Design, Dark theme, animations, and more.</li></ul></li></ul><p>&nbsp;</p><h2>Want to learn Compose?</h2><p>Learn how to use Jetpack Compose to build native Android UI: including layouts, theming, animations, architecture, state, accessibility and testing.</p><p>&nbsp;</p><h2>What are you waiting for?</h2><p>Compose worked with several different partners to start integrating Compose into their apps. Learn how Compose has helped their teams become more productive and write high quality UI.</p><p>Compose partners:</p><ul><li>Reddit</li><li>Disney+ hotstar</li><li>Twitter</li><li>Grab</li><li>Medium</li><li>Shopee</li><li>and many more!</li></ul><p>&nbsp;</p><h2>Join the Compose community</h2><ul><li>Stack Overflow</li><li>Google\'s Bug tracker</li><li>Slack</li></ul>', 'https://developer.android.com/static/codelabs/jetpack-compose-animation/img/5bb2e531a22c7de0.png', '2023-06-16', '2023-06-16', 1, 1),
(4, 'Basic Cyber Security #1: Kali Linux', '<blockquote><p>The most advanced Penetration Testing Distribution. Ever.</p></blockquote><p>&nbsp;</p><h1><strong>The Industry Standard</strong></h1><p>Kali Linux is not about its tools, nor the operating system. Kali Linux is a <strong>platform</strong>.</p><h2><br>Why Kali?</h2><ul><li>Make Your Job Easier<ul><li>You can take any Linux and install pentesting tools on it, but you have to set the tools up manually and configure them. Kali is optimized to reduce the amount of work, so a <a href=\"https://www.kali.org/features/\">professional</a> can just sit down and go.</li></ul></li><li>Kali Everywhere<ul><li>A version of Kali is always close to you, no matter where you need it. Mobile devices, Containers, ARM, Cloud providers, Windows Subsystem for Linux, Pre-built Virtual Machine, Installer Images, and others are all <a href=\"https://www.kali.org/get-kali/\">available</a>.</li></ul></li><li>Customization<ul><li>With the use of <a href=\"https://www.kali.org/docs/general-use/metapackages/\">metapackages</a>, optimized for the specific tasks of a security professional, and a highly accessible and well documented <a href=\"https://www.kali.org/docs/development/live-build-a-custom-kali-iso/\">ISO customization process</a>, it\'s always easy to generate an optimized version of Kali for your specific needs.</li></ul></li><li>Documentation<ul><li>Whether you are a seasoned veteran or a novice, our <a href=\"https://www.kali.org/docs/\">documentation</a> will have all the information you will need to know about Kali Linux. Multiple tips and “recipes” are available, to help ease doubts or address any issues. All documentation is open, so you can easily contribute.</li></ul></li><li>Community<ul><li>Kali Linux, with its <a href=\"https://www.backtrack-linux.org/\">BackTrack</a> lineage, has a vibrant and <a href=\"https://www.kali.org/community/\">active community</a>. There are active Kali forums, IRC Channel, Kali Tools listings, an open bug tracker system, and even community provided tool suggestions.</li></ul></li></ul><h2><br>All the tools you need</h2><p>The Kali Linux penetration testing platform contains a vast array of tools and utilities. From information gathering to final reporting, Kali Linux enables security and IT professionals to assess the security of their systems.</p><p>Find out all about Kali\'s Tools:</p><ul><li>Burp Suite</li><li>Hydra</li><li>John the Ripper</li><li>Maltego</li><li>Metasploit Framework</li><li>Nmap</li><li>sqlmap</li><li>Wireshark</li><li>FFUF</li><li>Aircrack-ng</li><li>and more.</li></ul><p>&nbsp;</p><h2>Kali Everywhere</h2><p><strong>Undercover Mode</strong><br>Using Kali in an environment where you don\'t want to draw attention to yourself? <a href=\"https://www.kali.org/docs/introduction/kali-undercover/\">Kali Undercover</a> is the perfect way to not stand out in a crowd.</p><p><br><strong>Kali NetHunter</strong><br>A mobile penetration testing platform for Android devices, based on Kali Linux. <a href=\"https://www.kali.org/get-kali/#kali-mobile\">Kali NetHunter</a> is made up of an App, App Store, Kali Container and KeX</p><p><br><strong>Win-KeX</strong><br><a href=\"https://www.kali.org/docs/wsl/win-kex/\">Win-KeX</a> provides a full Kali Desktop Experience for Windows WSL. Applications started via Kali\'s panel will share the desktop with Microsoft Windows applications.</p><p>&nbsp;</p><p><strong>ARM</strong></p><p>Cheap &amp; low powered devices, which make for great leave behind devices. Modern ARM based laptops provide high speed with long battery life as an assessment platform.</p><p>&nbsp;</p><p><strong>Bare Metal</strong></p><p>Single or multiple boot Kali, giving you complete control over the hardware access (perfect for in-built WiFi and GPU), enabling the best performance.</p><p>&nbsp;</p><p><strong>Cloud</strong></p><p>Hosting providers which have Kali Linux pre-installed, ready to go, without worrying about looking after the infrastructure.</p><p>&nbsp;</p><p><strong>Containers</strong></p><p>Using Docker or LXD, allows for extremely quick and easy access to all of Kali\'s tools, without the overhead of a isolated virtual machine.</p><p>&nbsp;</p><p><strong>Mobile</strong></p><p>A mobile penetration testing platform for Android devices, based on Kali Linux. Kali NetHunter consists of an NetHunter App, App Store, Kali Container, and KeX.</p><p>&nbsp;</p><p><strong>USB</strong></p><p>Kali in your pocket, ready to go with Live Boot. Your Kali, always with you, without altering the host OS, plus allows you to benefit from hardware access.</p><p>&nbsp;</p><p><strong>Virtual Machines</strong></p><p>VMware &amp; VirtualBox pre-built images ready to go. Allowing for a Kali install as bare as possible, with additional features such as snapshots, without altering the host OS. And we have vagrant images too.</p><p>&nbsp;</p><p><strong>WSL</strong></p><p>WSL is included out of the box with modern Windows. You can then start to use Kali (and Win-Kex) without any installing any extra software.</p><p>&nbsp;</p><h1><strong>Choose the desktop you prefer</strong></h1><h2><strong>Xfce</strong></h2><p>Xfce is a lightweight desktop environment for UNIX-like operating systems. It aims to be fast and low on system resources, while still being visually appealing and user friendly.</p><p>Xfce consists of separately packaged parts that together provide all functions of the desktop environment, but can be selected in subsets to suit user needs and preferences. This is Kali\'s default desktop environment.</p><p>&nbsp;</p><h2><strong>GNOME Shell</strong></h2><p>Every part of GNOME Shell has been designed to make it simple and easy to use. The Activities Overview is an easy way to access all your basic tasks. A press of a button is all it takes to view your open windows, launch applications, or check if you have new messages. Having everything in one place is convenient and means that you don\'t have to learn your way through a maze of different technologies.</p><h2><br><strong>KDE Plasma</strong></h2><p>Plasma is made to stay out of the way as it helps you get things done. But under its light and intuitive surface, it\'s a powerhouse. So you\'re free to choose ways of usage right as you need them and when you need them.</p><p>With Plasma the user is king. Not happy with the color scheme? Change it! Want to have your panel on the left edge of the screen? Move it! Don\'t like the font? Use a different one! Download custom widgets in one click and add them to your desktop or panel.<br><br>&nbsp;</p><p>So, what do you think? Kali is kool right? ;) Now, let\'s start our cyber security journey with Kali!</p><p>Anyway, what should I post next? Don\'t forget to leave a comment and see ya guys on the next post~ Peace out.</p>', 'https://www.anti-malware.ru/files/styles/amp_image/public/images/source/kali_linux_2022.3_news.png', '2023-06-16', '2023-06-16', 2, 1),
(19, 'Pengumuman UAS', '<p>Jangan lupa</p><h2>!!! UAS: 31 JULI - 12 AGUSTUS 2023 !!!</h2><p>&nbsp;</p><p>Harap pengumuman ini diperhatikan dan disimak dengan baik. Terima kasih</p>', 'none', '2023-06-17', '2023-06-17', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_komentar`
--

CREATE TABLE `t_komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_artikel` int(5) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `isi_komentar` varchar(280) NOT NULL,
  `tanggal_komentar` date NOT NULL DEFAULT current_timestamp(),
  `status_tampil` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_komentar`
--

INSERT INTO `t_komentar` (`id_komentar`, `id_artikel`, `nama_user`, `email_user`, `isi_komentar`, `tanggal_komentar`, `status_tampil`) VALUES
(1, 1, 'Anonim', 'ayaya@mail.com', 'pertamax gan', '2023-06-17', 1),
(2, 1, 'adudu', 'adudu@mail.com', 'keren kak!', '2023-06-17', 1),
(3, 1, 'boboiboy', 'bobo@mail.com', 'terbaik!👍', '2023-06-17', 1),
(4, 1, 'aku siapa?', 'gtw@mail.com', 'nyimak kak', '2023-06-17', 1),
(5, 1, 'spammer', 'spam@mail.com', 'Lorem ipsum ayayayayayay hehehehehAHAHHAHAHA hohoho xixiixixi hehehe wkwkwkkw', '2023-06-17', 1),
(6, 1, 'Anonim', 'ayaya@mail.com', 'ditunggu postingannya selanjutnya :)))', '2023-06-17', 1),
(7, 1, 'aku siapa?', 'gtw@mail.com', 'gak bisa bahasa enggres:(', '2023-06-17', 1),
(8, 1, 'spammer', 'spam@mail.com', 'Lorem ipsum ayayayayayay hehehehehAHAHHAHAHA hohoho xixiixixi hehehe wkwkwkkw\r\nLorem ipsum ayayayayayay hehehehehAHAHHAHAHA hohoho xixiixixi hehehe wkwkwkkw\r\nLorem ipsum ayayayayayay hehehehehAHAHHAHAHA hohoho xixiixixi hehehe wkwkwkkw\r\ncrepesnya kakak enak lezat bergizi yummmm L', '2023-06-17', 1),
(10, 1, 'spammer', 'spam@mail.com', 'KAK KOK KOMENKU DIHAPUS', '2023-06-17', 1),
(11, 1, 'spammer', 'spam@mail.com', 'eh kak maaf capslock, gak sengaja', '2023-06-17', 1),
(15, 1, 'spammer', 'spam@mail.com', 'min jgn hapus komeku, janji gak nakal 😔☝️', '2023-06-17', 1),
(16, 1, 'spammer', 'spam@mail.com', '*komenku, sorytypo min:(', '2023-06-17', 1),
(17, 19, 'mhs', 'gtw@mail.com', 'nooooo:((', '2023-06-17', 1),
(19, 4, 'Anonim', 'gtw@mail.com', 'wih keren kak', '2023-06-18', 1),
(20, 4, 'aku siapa?', 'ayaya@mail.com', 'ajarin ak jd heker donk min', '2023-06-18', 1),
(21, 4, 'spammer', 'spam@mail.com', 'miminnya bjorka yah, brian b-nya bjorka', '2023-06-18', 1),
(22, 4, 'adudu', 'adudu@mail.com', 'gagal pertamax ges', '2023-06-18', 1),
(23, 4, 'boboiboy', 'bobo@mail.com', 'next bahas hek nasa dong min🙏', '2023-06-18', 1),
(24, 19, 'aku siapa?', 'gtw@mail.com', 'online atau offline min?', '2023-06-18', 1),
(25, 19, 'boboiboy', 'bobo@mail.com', 'jadwal per matkulnya udh keluar kah?', '2023-06-18', 1),
(26, 19, 'admin-fr', 'haiyahh@mail.com', 'info selengkapnya menyusul ya kak, thx -fr', '2023-06-18', 1),
(27, 19, 'boboiboy', 'bobo@mail.com', 'okeh siap, mksh min', '2023-06-18', 1),
(28, 4, 'brian', 'brian@mail.com', '@anonim makasih kak\r\n@akusiapa sori, g dl🙏\r\n@spammer tolong jangan buka kartu yh dik\r\n@adudu yaudah jd pertalite aja\r\n@bobo waduh😅 yg bener aj bang wkw yaudah next bahas hek nasa pake html. ditunggu y', '2023-06-18', 1),
(29, 19, 'test', 'test@mail.com', 'halo', '2024-03-30', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_artikel`
--
ALTER TABLE `t_artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `fk_admin` (`id_admin`);

--
-- Indexes for table `t_komentar`
--
ALTER TABLE `t_komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `fk_artikel` (`id_artikel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_artikel`
--
ALTER TABLE `t_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `t_komentar`
--
ALTER TABLE `t_komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_artikel`
--
ALTER TABLE `t_artikel`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`id_admin`) REFERENCES `t_admin` (`id_admin`);

--
-- Constraints for table `t_komentar`
--
ALTER TABLE `t_komentar`
  ADD CONSTRAINT `fk_artikel` FOREIGN KEY (`id_artikel`) REFERENCES `t_artikel` (`id_artikel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
