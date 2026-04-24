// --- TRANSLATIONS DATA ---
const translations = {
    en: {
        nav_home: "Home", nav_about: "About", nav_skills: "Skills", nav_projects: "Projects",
        nav_experience: "Experience", nav_contact: "Contact", hero_title: "Building Digital Solutions",
        hero_subtitle: "Fullstack Developer crafting clean, efficient, and scalable web applications.",
        hero_greeting: "Hi, I'm", hero_role: "Web Apps Developer", btn_work: "View My Work",
        about_title: "About Me",
        about_p1: "I am an Informatics Engineering graduate and a versatile Developer with 2+ years of experience building end-to-end digital solutions. I specialize in integrating robust backend services with seamless cloud data management to create high-performance web and mobile applications.",
        about_p2: "My core mission is to transform complex technical requirements into elegant, user-friendly, and scalable products that deliver real value.",
        education: "Bachelor of Informatics Engineering",
        stats_projects: "Projects", stats_exp: "Years Exp", stats_apps: "Mobile Apps", stats_web: "Websites",
        skills_title: "Tech Skills", projects_title: "Featured Projects", view_case: "View Case Study",
        proj2_desc: "QR Studio is a cross-platform QR code generator that transforms essential data into customizable, branded visual assets.",
        exp_title: "Experience & Organization", exp_tab1: "Experience", exp_tab2: "Organization",
        exp_freelance_desc: "Helping MSME clients and content creators build their digital presence through responsive and modern websites.",
        org_member_desc: "Participated in the development of simple web projects and learned team collaboration.",
        contact_title: "Get In Touch", contact_desc: "Interested in working together or just saying hi? Don't hesitate to contact me!",
        anno_highlight: "Co-founded and developed multiple digital products and client solutions",
        anno_desc: "Anno Tech is a digital platform focused on building modern websites and applications for businesses and personal branding.",
        role_fullstack: "Fullstack Developer",
        role_builder: "Product Builder",
        role_designer: "System Designer",
        impact_1: "Delivered multiple digital solutions for clients",
        impact_2: "Built scalable and responsive applications",
        impact_3: "Helped businesses improve their digital presence",
        anno_subprojects: "Sub-Projects",
        btn_view_projects: "View Projects",
        sub_cp: "Company Profile",
        sub_inv: "Digital Invitation",
        sub_lp: "Landing Page UMKM",
        sub_port: "Portfolio Website",
        soft_skills_title: "Soft Skills",
        ss_resp_title: "Responsibility",
        ss_resp_desc: "Committed to delivering high-quality results.",
        ss_prob_title: "Problem Solving",
        ss_prob_desc: "Analytical thinking for complex issues.",
        ss_comm_title: "Communication",
        ss_comm_desc: "Clear explanations to teams and clients.",
        ss_team_title: "Teamwork",
        ss_team_desc: "Collaborating within cross-functional teams.",
        projects_titlethes: "Thesis Projects",
        badge_final_proj: "🎓 Final Project",
        woodball_title: "A Mobile-Based Woodball Athlete Performance Evaluation and Recommendation Application",
        woodball_highlight: "A pioneering mobile application for woodball performance evaluation in Indonesia.",
        label_problem: "PROBLEM:",
        woodball_problem: "The process of recording and evaluating the performance of woodball athletes in Indonesia is still done manually using score sheets.",
        label_solution: "SOLUTION:",
        woodball_solution: "Developing a mobile application to digitize the process of assessing and evaluating woodball athletes' performance.",
        tag_math_model: "Mathematical Model",
        btn_live_thesis: "Live Thesis",
        startup_title: "Startup Projects",
        anno_typing: "Building Digital Products for Real Businesses",
        anno_main: "Co-founded and developed a digital solutions platform focused on building modern websites and applications for businesses and personal branding.",
        role_fullstack: "Fullstack Developer",
        role_builder: "Product Builder",
        role_designer: "System Designer",
        impact_1: "Delivered multiple client projects",
        impact_2: "Built scalable applications",
        impact_3: "Improved business digital presence",
        stat_proj_delivered: "Projects Delivered",
        stat_clients: "Clients",
        stat_months_exp: "Month Experience",
        btn_view_projects: "View Projects",
        btn_src: "Source Code",
        view_case: "View Case Study",
        badge_client: "Client Project",
        project_desc_siniops: "Business management platform for coffee shop operations, integrating inventory, menu control, staff monitoring, and QRIS payment.",
        project_desc_qr: "Customizable QR code generator for creating branded digital assets with flexible design and logo integration.",
        project_desc_kurash: "Flutter-based digital scoring system for Kurash competitions, enabling real-time tracking of techniques and penalties with improved accuracy and clarity.",
        project_desc_omni: "Transformed a fragmented manual complaint process",
        project_desc_monitor: "Developed a real-time asset management system to replace manual inventory tracking. Improved data accuracy and streamlined asset monitoring using Flutter and Firebase.",
        project_desc_football: "Anno Football is a football data dashboard that presents match schedules, standings, and player statistics from various European leagues in one interactive, real-time platform.",
        project_desc_annogram: "Telegram-based communication platform with real-time messaging, voice/video calls, and enhanced privacy features.",
        project_desc_whisk: "Chrome extension for automating bulk AI image generation using Excel-based prompts, reducing manual effort and improving productivity.",
        project_desc_annofin: "Many personal finance applications lack simplicity, flexibility, and collaborative features, especially for users who want to manage shared finances in real-time.",
        project_desc_notif: "Notification Tester is a practical tool designed to simplify notification testing by enabling developers to simulate various types of notifications—ranging from instant messages to image-based and scheduled alerts—ensuring reliable delivery and user experience.",
        btn_demo: "Demo",
        btn_src_code: "Src Code",
        experience_title: "Experience",
        work_exp: "Work Experience",
        prof_exp: "Professional Experience",

        exp1_title: "Fullstack Developer & Founder",
        exp1_company: "Anno Tech",
        exp1_date: "2026 – Present",
        exp1_list1: "Developed digital platforms for web and app-based business solutions.",
        exp1_list2: "Handled end-to-end development from UI/UX design to backend deployment.",
        exp1_list3: "Built company profiles, landing pages, and custom web systems.",
        exp1_list4: "Collaborated with clients to enhance digital presence.",
        exp1_impact: "Successfully delivered multiple client projects and built scalable systems.",

        // ===== EXP 2 =====
        exp2_title: "Application Developer (MSIB)",
        exp2_company: "Disdukcapil Surabaya",
        exp2_date: "Aug 2024 – Jan 2025",
        exp2_list1: "Integrated WhatsApp API into public complaint systems.",
        exp2_list2: "Redesigned UI to improve usability.",
        exp2_list3: "Optimized backend performance.",
        exp2_list4: "Involved in full development lifecycle.",
        exp2_impact: "Improved system response time and accessibility.",

        // ===== EXP 3 =====
        exp3_title: "Application Developer & IT Support",
        exp3_company: "PT Sucofindo (Internship)",
        exp3_date: "Jan 2024 – Apr 2024",
        exp3_list1: "Developed PWA-based asset system.",
        exp3_list2: "Handled installation & troubleshooting.",
        exp3_list3: "Setup office devices.",
        exp3_list4: "Maintained SQL Server database.",
        exp3_impact: "Increased efficiency and system stability.",

        // ===== PROF 1 =====
        prof1_title: "PORPROV IX East Java Team",
        prof1_company: "IT Committee – Kurash",
        prof1_date: "June 2025",
        prof1_list1: "Handled IT systems during the event.",
        prof1_list2: "Supported technical operations.",
        prof1_list3: "Coordinated with teams.",
        prof1_impact: "Ensured smooth event execution.",

        // ===== PROF 2 =====
        prof2_title: "PORPROV VIII East Java Team",
        prof2_company: "Kurash Athlete – Surabaya",
        prof2_date: "Sept 2023",
        prof2_list1: "Competed at provincial level.",
        prof2_list2: "Followed intensive training.",
        prof2_impact: "Represented the city in competition.",
        btn_view: "View",
        btn_download: "Download"

    },
    id: {
        nav_home: "Beranda", nav_about: "Tentang", nav_skills: "Keahlian", nav_projects: "Proyek",
        nav_experience: "Pengalaman", nav_contact: "Kontak", hero_title: "Membangun Solusi Digital",
        hero_subtitle: "Developer Fullstack yang menciptakan aplikasi web efisien, bersih, dan scalable.",
        hero_greeting: "Halo, Saya", hero_role: "Pengembang Aplikasi Web", btn_work: "Lihat Karya Saya",
        about_title: "Tentang Saya",
        about_p1: "Saya adalah lulusan Teknik Informatika dan Developer serba bisa dengan 2+ tahun pengalaman membangun solusi digital end-to-end. Saya berspesialisasi dalam mengintegrasikan layanan backend yang kuat dengan manajemen data cloud untuk menciptakan aplikasi berkinerja tinggi.",
        about_p2: "Misi utama saya adalah mengubah kebutuhan teknis yang kompleks menjadi produk yang elegan, user-friendly, dan scalable.",
        educationtitle: "Edukasi",
        education: "S1 Teknik Informatika",
        stats_projects: "Proyek", stats_exp: "Tahun Pglmn", stats_apps: "Aplikasi Mobile", stats_web: "Situs Web",
        skills_title: "Keahlian Teknis", projects_title: "Proyek Pilihan", view_case: "Lihat Studi Kasus",
        proj2_desc: "QR Studio adalah generator kode QR lintas platform yang mengubah data penting menjadi aset visual bermerek yang dapat disesuaikan.",
        exp_title: "Pengalaman & Organisasi", exp_tab1: "Pengalaman", exp_tab2: "Organisasi",
        exp_freelance_desc: "Membantu klien UMKM dan kreator konten membangun kehadiran digital mereka melalui website responsif dan modern.",
        org_member_desc: "Berpartisipasi dalam pengembangan proyek web sederhana dan belajar kolaborasi tim.",
        contact_title: "Hubungi Saya", contact_desc: "Tertarik untuk bekerja sama atau sekadar menyapa? Jangan ragu untuk menghubungi saya!",
        anno_highlight: "Mendirikan dan mengembangkan berbagai produk digital serta solusi untuk klien",
        anno_desc: "Anno Tech adalah platform digital yang berfokus pada pembuatan website dan aplikasi modern untuk bisnis dan personal branding.",
        role_fullstack: "Pengembang Fullstack",
        role_builder: "Pembangun Produk",
        role_designer: "Desainer Sistem",
        impact_1: "Mengirimkan berbagai solusi digital untuk klien",
        impact_2: "Membangun aplikasi yang scalable dan responsif",
        impact_3: "Membantu bisnis meningkatkan kehadiran digital mereka",
        anno_subprojects: "Sub-Proyek",
        btn_view_projects: "Lihat Proyek",
        sub_cp: "Profil Perusahaan",
        sub_inv: "Undangan Digital",
        sub_lp: "Landing Page UMKM",
        sub_port: "Website Portofolio",
        soft_skills_title: "Keahlian Non-Teknis", // Atau biarkan "Soft Skills" jika dirasa lebih familiar di IT
        ss_resp_title: "Tanggung Jawab",
        ss_resp_desc: "Berkomitmen untuk memberikan hasil berkualitas tinggi.",
        ss_prob_title: "Pemecahan Masalah",
        ss_prob_desc: "Berpikir analitis untuk masalah yang kompleks.",
        ss_comm_title: "Komunikasi",
        ss_comm_desc: "Penjelasan yang jelas kepada tim dan klien.",
        ss_team_title: "Kerja Sama Tim",
        ss_team_desc: "Berkolaborasi dalam tim lintas fungsi.",
        projects_titlethes: "Proyek Tesis",
        badge_final_proj: "🎓 Tugas Akhir",
        woodball_title: "Aplikasi Evaluasi dan Rekomendasi Performa Atlet Woodball Berbasis Mobile",
        woodball_highlight: "Aplikasi mobile pionir untuk evaluasi performa atlet woodball di Indonesia.",
        label_problem: "MASALAH:",
        woodball_problem: "Proses pencatatan dan evaluasi performa atlet woodball di Indonesia masih dilakukan secara manual menggunakan lembar skor.",
        label_solution: "SOLUSI:",
        woodball_solution: "Mengembangkan aplikasi mobile untuk mendigitalisasi proses penilaian dan evaluasi performa atlet woodball.",
        tag_math_model: "Model Matematika",
        btn_live_thesis: "Lihat Jurnal",
        startup_title: "Proyek Startup",
        anno_typing: "Membangun Produk Digital untuk Bisnis Nyata",
        anno_main: "Turut mendirikan dan mengembangkan platform solusi digital yang berfokus pada pembuatan situs web dan aplikasi modern untuk bisnis dan personal branding.",
        role_fullstack: "Pengembang Fullstack",
        role_builder: "Pembangun Produk",
        role_designer: "Desainer Sistem",
        impact_1: "Menyelesaikan berbagai proyek klien",
        impact_2: "Membangun aplikasi yang terukur",
        impact_3: "Meningkatkan kehadiran digital bisnis",
        stat_proj_delivered: "Proyek Selesai",
        stat_clients: "Klien",
        stat_months_exp: "Bulan Pengalaman",
        btn_view_projects: "Lihat Proyek",
        btn_src: "Kode Sumber",
        view_case: "Lihat Studi Kasus",
        badge_client: "Proyek Klien",
        project_desc_siniops: "Platform manajemen bisnis untuk operasional kedai kopi, mengintegrasikan inventaris, kontrol menu, pemantauan staf, dan pembayaran QRIS.",
        project_desc_qr: "Generator kode QR yang dapat disesuaikan untuk membuat aset digital bermerek dengan desain fleksibel dan integrasi logo.",
        project_desc_kurash: "Sistem penilaian digital berbasis Flutter untuk kompetisi Kurash, memungkinkan pelacakan teknik dan penalti secara real-time dengan akurasi yang lebih tinggi.",
        project_desc_monitor: "Mengembangkan sistem manajemen aset waktu nyata untuk menggantikan pelacakan inventaris manual. Meningkatkan akurasi data dan menyederhanakan pemantauan aset menggunakan Flutter dan Firebase.",
        project_desc_football: "Anno Football adalah dasbor data sepak bola yang menyajikan jadwal pertandingan, klasemen, dan statistik pemain dari berbagai liga Eropa dalam satu platform interaktif dan real-time.",
        project_desc_annogram: "Platform komunikasi berbasis Telegram dengan fitur pesan waktu nyata, panggilan suara/video, dan fitur privasi yang ditingkatkan.",
        project_desc_omni: "Mengubah proses pengaduan manual yang terfragmentasi menjadi proses yang lebih efisien.",
        project_desc_whisk: "Ekstensi Chrome untuk mengotomatiskan pembuatan gambar AI secara massal menggunakan perintah berbasis Excel, mengurangi upaya manual dan meningkatkan produktivitas.",
        project_desc_annofin: "Banyak aplikasi keuangan pribadi belum mampu memberikan pengalaman yang sederhana, fleksibel, dan kolaboratif, terutama untuk pengguna yang ingin mengelola keuangan bersama secara real-time.",
        project_desc_notif: "Notification Tester adalah alat bantu praktis yang dirancang untuk mempermudah proses pengujian notifikasi dengan memungkinkan developer mensimulasikan berbagai jenis notifikasi—mulai dari pesan instan, notifikasi berbasis gambar, hingga notifikasi terjadwal—sehingga memastikan pengiriman yang stabil dan pengalaman pengguna yang optimal.",
        btn_demo: "Demo",
        btn_src_code: "Kode Sumber",
        experience_title: "Pengalaman",
        work_exp: "Pengalaman Kerja",
        prof_exp: "Pengalaman Profesional",

        label_impact: "Dampak:",
        exp_tab_work: "Pengalaman Kerja",
        exp_tab_prof: "Pengalaman Profesional",
        exp_title: "Pengalaman",

        // ===== EXP 1 =====
        exp1_title: "Fullstack Developer & Founder",
        exp1_company: "Anno Tech",
        exp1_date: "2026 – Sekarang",
        exp1_list1: "Membangun platform digital untuk website dan aplikasi.",
        exp1_list2: "Mengelola pengembangan end-to-end dari UI/UX hingga backend.",
        exp1_list3: "Membuat company profile, landing page, dan sistem web.",
        exp1_list4: "Berkolaborasi dengan client meningkatkan digital presence.",
        exp1_impact: "Berhasil menyelesaikan berbagai project dan membangun sistem scalable.",

        // ===== EXP 2 =====
        exp2_title: "Application Developer (MSIB)",
        exp2_company: "Disdukcapil Surabaya",
        exp2_date: "Agustus 2024 – Januari 2025",
        exp2_list1: "Mengintegrasikan WhatsApp API.",
        exp2_list2: "Mendesain ulang UI.",
        exp2_list3: "Optimasi backend.",
        exp2_list4: "Terlibat dalam seluruh lifecycle.",
        exp2_impact: "Meningkatkan kecepatan respon sistem.",

        // ===== EXP 3 =====
        exp3_title: "Application Developer & IT Support",
        exp3_company: "PT Sucofindo (Magang)",
        exp3_date: "Januari 2024 – April 2024",
        exp3_list1: "Mengembangkan aplikasi PWA.",
        exp3_list2: "Troubleshooting software.",
        exp3_list3: "Setup perangkat.",
        exp3_list4: "Maintenance database.",
        exp3_impact: "Meningkatkan efisiensi sistem.",

        // ===== PROF 1 =====
        prof1_title: "Tim PORPROV IX Jawa Timur",
        prof1_company: "Panitia IT Kurash",
        prof1_date: "Juni 2025",
        prof1_list1: "Menangani sistem IT saat event.",
        prof1_list2: "Mendukung operasional teknis.",
        prof1_list3: "Koordinasi dengan tim.",
        prof1_impact: "Mendukung kelancaran event.",

        // ===== PROF 2 =====
        prof2_title: "Tim PORPROV VIII Jawa Timur",
        prof2_company: "Atlet Kurash – Surabaya",
        prof2_date: "September 2023",
        prof2_list1: "Bertanding di tingkat provinsi.",
        prof2_list2: "Latihan intensif.",
        prof2_impact: "Mewakili daerah.",
        btn_view: "Lihat",
        btn_download: "Unduh"
    }
};

const projectData_ID = {
    siniops: {
        title: "Siniops Enterprise",
        tag: "Proyek Klien",
        date: "Jan 2026",
        problem: "Pedagang lokal kesulitan dengan pelacakan inventaris manual dan lambatnya rekonsiliasi pembayaran non-tunai.",
        solution: "SiniOps Enterprise adalah platform manajemen bisnis terintegrasi yang dirancang untuk mendigitalisasi dan mengoptimalkan operasional.",
        features: [
            "Sistem Manajemen Inventaris",
            "Konfigurasi Menu Dinamis",
            "Pemantauan Kinerja Staf",
            "Kontrol Akses Berbasis Peran",
            "Integrasi Pembayaran QRIS"
        ],
        impact: [
            { val: "⚡ +40%", desc: "Efisiensi" },
            { val: "⚡ Mudah", desc: "Berbagi" }
        ],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/siniops/siniops-1.png" },
            { url: "./assets/siniops/siniops-2.png" },
            { url: "./assets/siniops/siniops-3.png" },
            { url: "./assets/siniops/siniops-4.png" },
            { url: "./assets/siniops/siniops-5.png" },
            { url: "./assets/siniops/siniops-6.png" },
            { url: "./assets/siniops/siniops-7.png" },
            { url: "./assets/siniops/siniops-8.png" },
            { url: "./assets/siniops/siniops-9.png" },
        ],
        live: "https://siniops-demo.vercel.app/", code: "https://github.com/Aldi24422/siniops-demo.git"
    },

    qristudio: {
        title: "Custom QR Maker",
        tag: "Proyek Klien",
        date: "Jan 2026",
        problem: "Kode QR standar seringkali terlihat biasa saja dan kurang fleksibel untuk branding, sehingga kurang efektif untuk identitas bisnis dan tujuan pemasaran.",
        solution: "QR Studio adalah generator kode QR lintas platform yang mengubah data penting—seperti akses Wi-Fi, kontak digital (VCard), dan lokasi—menjadi aset visual bermerek yang sepenuhnya dapat disesuaikan, termasuk pemilihan palet warna, modifikasi pola, dan integrasi logo.",
        features: [
            "Pembuatan QR multi-format (Wi-Fi, VCard, URL, Lokasi)",
            "Penyematan logo untuk branding",
            "Dukungan lintas platform"
        ],
        impact: [
            { val: "⚡ Mudah", desc: "Berbagi" }
        ],
        tech: ["Dart", "C++", "CMake", "HTML", "Swift"],
        images: [
            { url: "./assets/qrstudio/qrstudio-1.png", },
            { url: "./assets/qrstudio/qrstudio-2.png" },
        ],
        live: "https://aldi24422.github.io/custom_qr_maker/", code: "https://github.com"
    },

    kurash: {
        title: "Kurash Uzul Digital Scoring",
        tag: "Proyek Klien",
        date: "Feb 2026",
        problem: "Sistem penilaian tradisional dalam kompetisi Kurash bergantung pada papan skor manual, membuat proses penjurian kurang efisien, kurang akurat, dan lebih sulit dikelola secara real-time.",
        solution: "Kurash Usul Scoring adalah sistem penilaian digital berbasis Flutter yang dirancang untuk memodernisasi proses arbitrase dengan mengubah papan skor konvensional menjadi antarmuka digital yang presisi dan responsif. Sistem ini memungkinkan wasit mencatat teknik penilaian dan penalti secara real-time dengan akurasi tinggi.",
        features: [
            "Sistem penilaian real-time",
            "Pelacakan teknik",
            "Manajemen penalti",
            "Tampilan UI yang responsif dan jelas"
        ],
        impact: [
            { val: "⚡ Akurat", desc: "Penilaian" },
            { val: "⚡ Lebih Cepat", desc: "Keputusan" }
        ],
        tech: ["HTML", "CSS", "Javascript"],
        images: [
            { url: "./assets/kurash/kurash-1.png" },
            { url: "./assets/kurash/kurash-2.png" },
            { url: "./assets/kurash/kurash-3.png" },
        ],
        live: "https://demo.com", code: "https://github.com"
    },


    omnichannel: {
        title: "Omnichannel Public Complaint System (Disdukcapil Surabaya)", tag: "Client Project", date: "Feb 2026",
        problem: "Layanan pengaduan publik terfragmentasi di berbagai saluran (telepon, WhatsApp, dll.), mengakibatkan waktu respons yang lambat, penanganan yang tidak efisien, dan kurangnya pemantauan terpusat. Sistem yang ada juga tidak memiliki antarmuka yang modern dan ramah pengguna.",
        solution: "Mengembangkan sistem pengaduan berbasis web omnichannel yang mengintegrasikan berbagai saluran komunikasi ke dalam platform terpusat. Mengimplementasikan integrasi API WhatsApp, mendesain ulang UI/UX untuk kemudahan penggunaan yang lebih baik, dan mengoptimalkan kinerja backend untuk penanganan respons yang lebih cepat.",
        features: ["Integrasi API WhatsApp", "Sistem respons otomatis", "Kategorisasi dan manajemen pengaduan", "Akses berbasis peran untuk admin dan staff"],
        impact: [{ val: "⚡ Cepat", desc: "Waktu respons pengaduan" }, { val: "📊 Peningkatan efisiensi", desc: "pengelolaan pengaduan" }],
        tech: ["HTML", "CSS", "Javascript", "PHP", "Node.js", "MySQL", "WhatsApp API"],
        images: [
            { url: "./assets/omnichannel/omni-1.png" },
            { url: "./assets/omnichannel/omni-2.png" },
            { url: "./assets/omnichannel/omni-3.png" },
            { url: "./assets/omnichannel/omni-4.png" },

        ],
        live: "https://demo.com", code: "https://github.com"
    },

    asetmonitoring: {
        title: "Asset Monitoring Apps", tag: "Intern Project", date: "Apr 2024",
        problem: "Pengelolaan aset kantor dilakukan secara manual, sehingga menyulitkan untuk melacak inventaris, memantau penggunaan aset, dan memelihara catatan yang akurat.",
        solution: "Mengembangkan sistem pemantauan aset berbasis web menggunakan Flutter, Dart, dan Firebase untuk mendigitalkan data aset, memungkinkan pelacakan waktu nyata, dan memusatkan manajemen inventaris.",
        features: ["Sistem registrasi & penandaan aset", "Manajemen lokasi aset", "Penugasan penanggung jawab"],
        impact: [{ val: "⚡ +30–40% Efisien", desc: "Proses Manajemen" }],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/monitor/monitor-1.png" },
            { url: "./assets/monitor/monitor-2.png" },
            { url: "./assets/monitor/monitor-3.png" },

        ],
        live: "https://demo.com", code: "https://github.com"
    },
    annofootball: {
        title: "Anno Football – Sports Analytics Dashboard", tag: "Additional Project", date: "Apr 2026",
        problem: "Data sepak bola seperti jadwal, klasemen, dan statistik pemain tersebar di berbagai sumber dan tidak terintegrasi dalam satu platform yang mudah diakses.",
        solution: "Mengembangkan dashboard web interaktif yang mengintegrasikan data pertandingan, klasemen liga, dan statistik pemain dari berbagai kompetisi Eropa dalam satu antarmuka modern dan responsif.",
        features: ["Jadwal dan hasil pertandingan langsung", "Daftar pemain setiap liga", "Pencetak gol terbanyak & statistik pemain", "Visualisasi data interaktif (grafik & analitik)", "Pemilihan multi-liga"],
        impact: [{ val: "⚡Cepat", desc: "Akses Data" }, { val: "📊 Real-time", desc: "Update Pertandingan" }, { val: "📈 Insight", desc: "Analisis Kinerja" }],
        tech: ["HTML", "CSS", "Javascript", "API"],
        images: [
            { url: "./assets/anno-football/football-1.png" },
            { url: "./assets/anno-football/football-2.png" },
            { url: "./assets/anno-football/football-3.png" },
            { url: "./assets/anno-football/football-4.png" },
            { url: "./assets/anno-football/football-5.png" },
            { url: "./assets/anno-football/football-6.png" },
            { url: "./assets/anno-football/football-7.png" },

        ],
        live: "https://demo.com", code: "https://github.com"
    },
    annogram: {
        title: "Annogram",
        tag: "Additional Project",
        date: "Mar 2026",

        problem: "Banyak platform messaging masih kurang dalam fleksibilitas, kustomisasi, dan kontrol privasi, sehingga membatasi pengalaman pengguna dan efisiensi komunikasi.",

        solution: "Annogram adalah platform komunikasi digital berbasis Telegram yang dirancang untuk menghadirkan pengalaman messaging yang lebih responsif, aman, dan kaya fitur. Aplikasi ini mengintegrasikan komunikasi real-time seperti pesan instan, panggilan suara/video, serta konferensi grup yang stabil.",

        features: [
            "Sistem messaging real-time",
            "Integrasi panggilan suara & video",
            "Dukungan konferensi grup",
            "Sistem keamanan & privasi tingkat lanjut",
            "Antarmuka yang dapat dikustomisasi",
            "Manajemen media yang efisien"
        ],

        impact: [
            { val: "🚀 Lebih Baik", desc: "Komunikasi" },
            { val: "🔒 Aman", desc: "Privasi" },
            { val: "🎨 Fleksibel", desc: "UI/UX" }
        ],

        tech: ["Flutter", "Dart", "Firebase"],

        images: [
            { url: "./assets/Annogram/Annogram-1.png" },
            { url: "./assets/Annogram/Annogram-2.png" },
            { url: "./assets/Annogram/Annogram-3.png" },
            { url: "./assets/Annogram/Annogram-4.png" }
        ],

        live: "https://demo.com",
        code: "https://github.com"
    },

    annofin: {
        title: "Annofin – Personal Finance Tracker",
        tag: "Featured Project",
        date: "Feb 2026",

        problem: "Banyak aplikasi keuangan pribadi belum mampu memberikan pengalaman yang sederhana, fleksibel, dan kolaboratif, terutama untuk pengguna yang ingin mengelola keuangan bersama secara real-time.",

        solution: "Annofin adalah aplikasi pelacak keuangan pribadi dengan desain UI yang clean dan modern, dilengkapi fitur kolaborasi keuangan (shared finance) serta dashboard pintar untuk membantu pengguna memahami dan mengontrol arus kas secara lebih efektif.",

        features: [
            "Smart dashboard dengan visualisasi pemasukan & pengeluaran",
            "Dual-mode sharing (sinkronisasi keuangan bersama / couple)",
            "Automated budgeting dengan notifikasi batas pengeluaran",
            "Kustomisasi kategori pengeluaran sesuai kebutuhan",
            "Monitoring utang & piutang (debt & credit tracking)",
            "Export laporan keuangan (Excel / PDF)"
        ],

        impact: [
            { val: "💰 Better", desc: "Financial Control" },
            { val: "📊 Clear", desc: "Cash Flow Insight" },
            { val: "🤝 Shared", desc: "Finance Sync" }
        ],

        tech: ["Flutter", "Dart", "Firebase"],

        images: [
            { url: "./assets/annofin/annofin-1.png" },
            { url: "./assets/annofin/annofin-2.png" },
            { url: "./assets/annofin/annofin-3.png" },
            { url: "./assets/annofin/annofin-4.png" },
            { url: "./assets/annofin/annofin-5.png" },
            { url: "./assets/annofin/annofin-6.png" },
        ],

        live: "https://demo.com",
        code: "https://github.com"
    },

    whiskbot: {
        title: "Whisk Automation Bot",
        tag: "Additional Project",
        date: "Jan 2026",

        problem: "Pembuatan gambar AI secara massal di Google Whisk Lab masih memerlukan input manual berulang, sehingga proses menjadi memakan waktu dan kurang efisien untuk penggunaan skala besar.",

        solution: "Whisk Automation Bot adalah ekstensi Chrome yang dikembangkan untuk mengotomatisasi pembuatan gambar AI secara massal dengan memungkinkan pengguna mengimpor ratusan prompt dari file Excel dan mengeksekusinya secara otomatis menggunakan standar Manifest V3 modern.",

        features: [
            "Import prompt massal berbasis Excel",
            "Otomatisasi pembuatan gambar AI",
            "Ekstensi Chrome (Manifest V3)",
            "Workflow otomatis yang menghemat waktu"
        ],

        impact: [
            { val: "⚡ Meningkat", desc: "Produktivitas" },
            { val: "⚡ Lebih Cepat", desc: "Workflow" }
        ],

        tech: ["HTML", "CSS", "JavaScript"],

        images: [
            { url: "./assets/whisk/whisk-1.png" }
        ],

        live: "https://demo.com",
        code: "https://github.com"
    },
    notificationtester: {
        title: "Aplikasi Notification Tester",
        tag: "Proyek Tambahan",
        date: "Jan 2026",
        problem: "Pengujian sistem notifikasi pada perangkat mobile seringkali tidak konsisten dan memakan waktu, terutama ketika harus menangani berbagai jenis pesan seperti teks, gambar, dan notifikasi terjadwal.",
        solution: "Notification Tester adalah alat bantu praktis yang dirancang untuk mempermudah proses pengujian notifikasi dengan memungkinkan developer mensimulasikan berbagai jenis notifikasi—mulai dari pesan instan, notifikasi berbasis gambar, hingga notifikasi terjadwal—sehingga memastikan pengiriman yang stabil dan pengalaman pengguna yang optimal.",
        features: [
            "Simulasi notifikasi teks",
            "Pengujian notifikasi berbasis gambar",
            "Simulasi notifikasi terjadwal"
        ],
        impact: [
            { val: "⚡ Lebih Cepat", desc: "Pengujian" },
            { val: "🛠️ Lebih Mudah", desc: "Debugging" },
            { val: "📱 Lebih Baik", desc: "Reliabilitas" }
        ],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/notificationtester/notif-1.png" },
            { url: "./assets/notificationtester/notif-2.png" },
        ],
        live: "https://github.com/Aldi24422/notification_tester/releases/tag/v1.0.0",
        code: "https://github.com"
    },
};

// --- PROJECT DATA ---
const projectData = {
    siniops: {
        title: "Siniops Enterprise", tag: "Client Project", date: "Jan 2026",
        problem: "Local merchants struggled with manual inventory tracking and slow non-cash payment reconciliation.",
        solution: "SiniOps Enterprise is an integrated business management platform designed to digitalize and optimize operations",
        features: ["Inventory Management System", "Dynamic Menu Configuration", "Staff Performance Monitoring", "Role-Based Access Control", "QRIS Payment Integration"],
        impact: [{ val: "⚡ +40%", desc: "Efficiency" }, { val: "⚡ Easy", desc: "Sharing" }],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/siniops/siniops-1.png" },
            { url: "./assets/siniops/siniops-2.png" },
            { url: "./assets/siniops/siniops-3.png" },
            { url: "./assets/siniops/siniops-4.png" },
            { url: "./assets/siniops/siniops-5.png" },
            { url: "./assets/siniops/siniops-6.png" },
            { url: "./assets/siniops/siniops-7.png" },
            { url: "./assets/siniops/siniops-8.png" },
            { url: "./assets/siniops/siniops-9.png" },
        ],
        live: "https://siniops-demo.vercel.app/", code: "https://github.com/Aldi24422/siniops-demo.git"
    },
    qristudio: {
        title: "Custom QR Maker", tag: "Client Project", date: "Jan 2026",
        problem: "Standard QR codes are often visually plain and lack branding flexibility, making them less effective for business identity and marketing purposes.",
        solution: "QR Studio is a cross-platform QR code generator that transforms essential data—such as Wi-Fi access, digital contacts (VCard), and locations—into fully customizable and branded visual assets, including color palette selection, pattern modification, and logo integration.",
        features: ["Multi-format QR generation (Wi-Fi, VCard, URL, Location)", "Logo embedding for branding", "Cross-platform support"],
        impact: [{ val: "⚡ Easy", desc: "Sharing" }],
        tech: ["Dart", "C++", "CMake", "HTML", "Swift"],
        images: [
            { url: "./assets/qrstudio/qrstudio-1.png", },
            { url: "./assets/qrstudio/qrstudio-2.png" },
            { url: "./assets/qrstudio/qrstudio-3.png" },
        ],
        live: "https://aldi24422.github.io/custom_qr_maker/", code: "https://github.com"
    },

    kurash: {
        title: "Kurash Uzul Digital Scoring", tag: "Client Project", date: "Feb 2026",
        problem: "Traditional scoring systems in Kurash competitions rely on manual scoreboards, making the judging process less efficient, less accurate, and harder to manage in real-time.",
        solution: "Kurash Usul Scoring is a Flutter-based digital scoring system designed to modernize the arbitration process by transforming conventional scoreboards into a precise and responsive digital interface. It enables referees to record scoring techniques and penalties in real-time with high accuracy.",
        features: ["Real-time scoring system", "Technique tracking", "Penalty management", "Responsive and clear UI display"],
        impact: [{ val: "⚡ Accurate", desc: "Scoring" }, { val: "⚡ Faster", desc: "Decision" }],
        tech: ["HTML", "CSS", "Javascript"],
        images: [
            { url: "./assets/kurash/kurash-1.png" },
            { url: "./assets/kurash/kurash-2.png" },
            { url: "./assets/kurash/kurash-3.png" },
        ],
        live: "https://demo.com", code: "https://github.com"
    },


    omnichannel: {
        title: "Omnichannel Public Complaint System (Disdukcapil Surabaya)", tag: "Client Project", date: "Feb 2026",
        problem: "Public complaint services were fragmented across multiple channels (phone, WhatsApp, etc.), resulting in slow response times, inefficient handling, and lack of centralized monitoring. The existing system also lacked a modern and user-friendly interface.",
        solution: "Developed a web-based omnichannel complaint system that integrates multiple communication channels into a centralized platform. Implemented WhatsApp API integration, redesigned the UI/UX for better usability, and optimized backend performance for faster response handling.",
        features: ["WhatsApp API Integration", "Auto-response system", "Complaint categorization and management", "Role-based access for admin and staff"],
        impact: [{ val: "⚡ Fast", desc: "complaint response time" }, { val: "📊 Improved efficiency", desc: "complaint management" }],
        tech: ["HTML", "CSS", "Javascript", "PHP", "Node.js", "MySQL", "WhatsApp API"],
        images: [
            { url: "./assets/omnichannel/omni-1.png" },
            { url: "./assets/omnichannel/omni-2.png" },
            { url: "./assets/omnichannel/omni-3.png" },
            { url: "./assets/omnichannel/omni-4.png" },

        ],
        live: "https://demo.com", code: "https://github.com"
    },


    asetmonitoring: {
        title: "Asset Monitoring Apps", tag: "Intern Project", date: "Apr 2024",
        problem: "Office asset management was handled manually, making it difficult to track inventory, monitor asset usage, and maintain accurate records.",
        solution: "Developed a web-based asset monitoring system using Flutter, Dart, and Firebase to digitize asset data, enable real-time tracking, and centralize inventory management.",
        features: ["Asset registration & tagging system", "Asset location management", "Responsible person assignment"],
        impact: [{ val: "⚡ +30–40% efficiency", desc: "management process" }],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/monitor/monitor-1.png" },
            { url: "./assets/monitor/monitor-2.png" },
            { url: "./assets/monitor/monitor-3.png" },

        ],
        live: "https://demo.com", code: "https://github.com"
    },

    annofootball: {
        title: "Anno Football – Sports Analytics Dashboard",
        tag: "Additional Project",
        date: "Apr 2026",

        problem: "Football data such as match schedules, league standings, and player statistics are scattered across multiple sources and not integrated into a single accessible platform.",

        solution: "Developed an interactive web dashboard that integrates match data, league standings, and player statistics from various European competitions into a modern and responsive interface.",

        features: [
            "Live match schedules and results",
            "Player list across multiple leagues",
            "Top scorers and player statistics",
            "Interactive data visualization (charts & analytics)",
            "Multi-league selection"
        ],

        impact: [
            { val: "⚡ Faster", desc: "Data Access" },
            { val: "📊 Real-time", desc: "Match Updates" },
            { val: "📈 Insight", desc: "Performance Analysis" }
        ],

        tech: ["HTML", "CSS", "JavaScript", "API"],

        images: [
            { url: "./assets/anno-football/football-1.png" },
            { url: "./assets/anno-football/football-2.png" },
            { url: "./assets/anno-football/football-3.png" },
            { url: "./assets/anno-football/football-4.png" }
        ],

        live: "https://demo.com",
        code: "https://github.com"
    },

    annofin: {
        title: "Annofin – Personal Finance Tracker",
        tag: "Featured Project",
        date: "Feb 2026",

        problem: "Many personal finance applications lack simplicity, flexibility, and collaborative features, especially for users who want to manage shared finances in real-time.",

        solution: "Annofin is a personal finance tracking application with a clean and modern UI, featuring shared finance capabilities and a smart dashboard to help users better understand and control their cash flow.",

        features: [
            "Smart dashboard with income & expense visualization",
            "Dual-mode sharing (real-time shared finance / couple sync)",
            "Automated budgeting with spending alerts",
            "Customizable expense categories",
            "Debt & credit monitoring system",
            "Export financial reports (Excel / PDF)"
        ],

        impact: [
            { val: "💰 Better", desc: "Financial Control" },
            { val: "📊 Clear", desc: "Cash Flow Insight" },
            { val: "🤝 Shared", desc: "Finance Sync" }
        ],

        tech: ["Flutter", "Dart", "Firebase"],

        images: [
            { url: "./assets/annofin/annofin-1.png" },
            { url: "./assets/annofin/annofin-2.png" },
            { url: "./assets/annofin/annofin-3.png" },
            { url: "./assets/annofin/annofin-4.png" }
        ],

        live: "https://demo.com",
        code: "https://github.com"
    },

    whiskbot: {
        title: "Whisk Automation Bot", tag: "Additional Project", date: "Jan 2026",
        problem: "Generating AI images in bulk on Google Whisk Lab requires repetitive manual input, making the process time-consuming and inefficient for large-scale usage.",
        solution: "Whisk Automation Bot is a Chrome Extension designed to automate bulk AI image generation by allowing users to import hundreds of prompts from Excel and execute them automatically using modern Manifest V3 standards.",
        features: ["Bulk prompt import (Excel-based)", "Automated AI image generation", "Chrome Extension (Manifest V3)", "Time-saving workflow automation"],
        impact: [{ val: "⚡ Boost", desc: "Productivity" }, { val: "⚡ Faster", desc: "Workflow" }],
        tech: ["HTML", "CSS", "Javascript"],
        images: [
            { url: "./assets/whisk/whisk-1.png" },
        ],
        live: "https://demo.com", code: "https://github.com"
    },

    notificationtester: {
        title: "Notification Tester Application", tag: "Additional Project", date: "Jan 2026",
        problem: "Testing mobile notification systems can be inconsistent and time-consuming, especially when handling different types of messages such as text, images, and scheduled notifications.",
        solution: "Notification Tester is a practical tool designed to simplify notification testing by enabling developers to simulate various types of notifications—ranging from instant messages to image-based and scheduled alerts—ensuring reliable delivery and user experience.",
        features: ["Text notification simulation", "Image-based notification testing", "Scheduled notification testing"],
        impact: [{ val: "⚡ Faster", desc: "Testing" },
        { val: "🛠️ Easier", desc: "Debugging" },
        { val: "📱 Better", desc: "Reliability" }],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/notificationtester/notif-1.png" },
            { url: "./assets/notificationtester/notif-2.png" },
        ],
        live: "https://github.com/Aldi24422/notification_tester/releases/tag/v1.0.0", code: "https://github.com"
    },

    annogram: {
        title: "Annogram", tag: "Additional Project", date: "Mar 2026",
        problem: "Many messaging platforms lack flexibility, customization, and optimal privacy control, limiting user experience and communication efficiency.",
        solution: "Annogram is a Telegram-based digital communication platform designed to deliver a more responsive, secure, and feature-rich messaging experience. It integrates real-time communication features such as instant messaging, voice/video calls, and stable group conferencing.",
        features: ["Real-time messaging system", "Voice & video call integration", "Group conferencing support", "Advanced privacy & security system", "Customizable user interface", "Efficient media management"],
        impact: [{ val: "🚀 Better", desc: "Communication" },
        { val: "🔒 Secure", desc: "Privacy" },
        { val: "🎨 Flexible", desc: "UI/UX" }
        ],
        tech: ["Flutter", "Dart", "Firebase"],
        images: [
            { url: "./assets/Annogram/Annogram-1.png" },
            { url: "./assets/Annogram/Annogram-2.png" },
            { url: "./assets/Annogram/Annogram-3.png" },
            { url: "./assets/Annogram/Annogram-4.png" },
        ],
        live: "https://demo.com", code: "https://github.com"
    },
};

// --- GLOBAL STATE ---
let currentLang = 'en'; // Pindahkan ke scope global agar bisa diakses fungsi openModal
let currentProjectId = null; // Menyimpan id modal yang sedang terbuka

// --- GLOBAL CAROUSEL STATE ---
let currentSlide = 0;
let slideData = [];
let isDragging = false;
let startPos = 0;
let currentTranslate = 0;
let prevTranslate = 0;

// --- MODAL FUNCTIONS ---
let modal;
let track;

// Helper to dynamically find all valid images in a sequence
async function loadDynamicImages(firstUrl) {
    const match = firstUrl.match(/^(.*\/)(.*?)-[0-9]+(\.[a-zA-Z0-9]+)$/);
    if (!match) return null;
    
    const basePath = match[1];
    const prefix = match[2];
    const ext = match[3];
    
    let validImages = [];
    let i = 1;
    let missCount = 0;
    const maxMisses = 2; // Stop after 2 consecutive missing images
    
    while (missCount < maxMisses && i <= 30) {
        let url = `${basePath}${prefix}-${i}${ext}`;
        let isValid = await new Promise(resolve => {
            let img = new Image();
            img.onload = () => resolve(true);
            img.onerror = () => resolve(false);
            img.src = url;
        });
        
        if (isValid) {
            validImages.push({ url });
            missCount = 0; 
        } else {
            missCount++;
        }
        i++;
    }
    return validImages;
}

async function openModal(id) {
    currentProjectId = id; // Simpan id proyek yang sedang aktif
    const modal = document.getElementById('projectModal');
    track = document.getElementById('carouselTrack');

    // Pilih data berdasarkan currentLang
    // Fallback ke bahasa inggris (projectData) jika versi ID tidak tersedia (untuk Additional Projects)
    let data;
    if (currentLang === 'id' && projectData_ID[id]) {
        data = projectData_ID[id];
    } else {
        data = projectData[id];
    }

    if (!data) return;

    // Helper untuk format URL
    const formatLink = (url) => url.startsWith('http') ? url : `https://${url}`;

    // Render Text Data
    document.getElementById('modalTitle').innerText = data.title;
    document.getElementById('modalTag').innerText = data.tag;
    document.getElementById('modalDate').innerText = data.date;
    document.getElementById('modalProblem').innerText = data.problem;
    document.getElementById('modalSolution').innerText = data.solution;

    // Render List & Badges
    document.getElementById('modalFeatures').innerHTML = data.features.map(f =>
        `<li style="margin-bottom:8px;"><i class="fas fa-check-circle" style="color:var(--accent); margin-right:8px;"></i> ${f}</li>`
    ).join('');

    document.getElementById('modalImpact').innerHTML = data.impact.map(i =>
        `<div class="impact-card"><span>${i.val}</span><p>${i.desc}</p></div>`
    ).join('');

    document.getElementById('modalBadges').innerHTML = data.tech.map(t => `<span>${t}</span>`).join('');

    const codeLinkEl = document.getElementById('codeLink');
    if (codeLinkEl) codeLinkEl.href = formatLink(data.code);

    const liveLinkEl = document.getElementById('liveLink');
    if (liveLinkEl && data.live) liveLinkEl.href = formatLink(data.live);

    // Tampilkan modal dan state loading
    modal.classList.add('active');
    document.body.style.overflow = 'hidden';

    if (track) {
        track.innerHTML = '<div class="carousel-slide" style="display:flex; align-items:center; justify-content:center; min-height:200px; color:var(--text-secondary);">Loading images...</div>';
    }
    const counterEl = document.getElementById('carouselCounter');
    if (counterEl) counterEl.innerText = '...';

    // ------------------------------
    // Load Images Dynamically
    if (data.images && data.images.length > 0) {
        const dynamicImages = await loadDynamicImages(data.images[0].url);
        if (dynamicImages && dynamicImages.length > 0) {
            renderCarousel(dynamicImages);
        } else {
            renderCarousel(data.images);
        }
    } else {
        renderCarousel([]);
    }
}

function closeModal() {
    modal = document.getElementById('projectModal');
    if (modal) {
        modal.classList.remove('active');
        document.body.style.overflow = 'auto';
        currentProjectId = null; // Reset id proyek saat ditutup
    }
}

// --- CAROUSEL LOGIC ---
function renderCarousel(images) {
    slideData = images;
    currentSlide = 0;
    track.innerHTML = images.map(img => `<div class="carousel-slide"><img src="${img.url}" alt="${img.caption || ''}" draggable="false"></div>`).join('');
    updateCarouselUI();
}

function moveSlide(step) {
    currentSlide += step;
    if (currentSlide < 0) currentSlide = slideData.length - 1;
    if (currentSlide >= slideData.length) currentSlide = 0;
    updateCarouselUI();
}

function updateCarouselUI() {
    currentTranslate = currentSlide * -100;
    prevTranslate = currentTranslate;
    track.style.transform = `translateX(${currentTranslate}%)`;

    const counterEl = document.getElementById('carouselCounter');
    if (counterEl) counterEl.innerText = `${currentSlide + 1} / ${slideData.length}`;

    const captionEl = document.getElementById('carouselCaption');
    if (captionEl && slideData[currentSlide]) {
        captionEl.innerText = slideData[currentSlide].caption || '';
    }
}

// Drag Setup
function getPositionX(e) { return e.type.includes('mouse') ? e.pageX : e.touches[0].clientX; }

function dragStart(e) {
    isDragging = true;
    startPos = getPositionX(e);
    track.style.transition = 'none';
}

function dragAction(e) {
    if (!isDragging) return;
    const currentPosition = getPositionX(e);
    const diff = currentPosition - startPos;
    const viewWidth = document.querySelector('.carousel-wrapper').offsetWidth;
    const movePercent = (diff / viewWidth) * 100;
    track.style.transform = `translateX(${prevTranslate + movePercent}%)`;
}

function dragEnd(e) {
    if (!isDragging) return;
    isDragging = false;
    track.style.transition = 'transform 0.4s cubic-bezier(0.25, 1, 0.5, 1)';
    const endPos = getPositionX(e);
    const diff = endPos - startPos;
    if (diff < -50) moveSlide(1);
    else if (diff > 50) moveSlide(-1);
    else updateCarouselUI();
}

// --- DOM INITIALIZATION ---
document.addEventListener('DOMContentLoaded', () => {
    modal = document.getElementById('projectModal');
    track = document.getElementById('carouselTrack');

    // Close Modal Listeners
    const closeBtn = document.querySelector('.close-modal');
    if (closeBtn) closeBtn.addEventListener('click', closeModal);

    if (modal) {
        modal.addEventListener('click', (e) => { if (e.target === modal) closeModal(); });
    }

    // Drag Listeners for Carousel
    if (track) {
        track.addEventListener('mousedown', dragStart);
        track.addEventListener('touchstart', dragStart, { passive: true });
        track.addEventListener('mouseup', dragEnd);
        track.addEventListener('mouseleave', dragEnd);
        track.addEventListener('touchend', dragEnd);
        track.addEventListener('mousemove', dragAction);
        track.addEventListener('touchmove', dragAction, { passive: true });
    }

    // Lang Switch
    const langSwitchBtn = document.getElementById('lang-switch');
    if (langSwitchBtn) {
        langSwitchBtn.addEventListener('click', () => {
            currentLang = currentLang === 'en' ? 'id' : 'en';

            // Render text HTML global (berdasarkan attribut data-i18n)
            document.querySelectorAll('[data-i18n]').forEach(element => {
                const key = element.getAttribute('data-i18n');
                if (typeof translations !== 'undefined' && translations[currentLang] && translations[currentLang][key]) {
                    element.textContent = translations[currentLang][key];
                }
            });

            langSwitchBtn.textContent = currentLang === 'en' ? 'EN / ID' : 'ID / EN';

            // RE-RENDER MODAL JIKA SEDANG TERBUKA
            if (modal && modal.classList.contains('active') && currentProjectId) {
                openModal(currentProjectId);
            }
        });
    }
});
// Hamburger Menu
const hamburger = document.querySelector('.hamburger');
const navLinksList = document.querySelector('.nav-links');
if (hamburger && navLinksList) {
    hamburger.addEventListener('click', () => {
        navLinksList.classList.toggle('active');
        const icon = hamburger.querySelector('i');
        if (navLinksList.classList.contains('active')) {
            icon.classList.replace('fa-bars', 'fa-times');
        } else {
            icon.classList.replace('fa-times', 'fa-bars');
        }
    });

    document.querySelectorAll('.nav-links a').forEach(link => {
        link.addEventListener('click', () => {
            navLinksList.classList.remove('active');
            hamburger.querySelector('i').classList.replace('fa-times', 'fa-bars');
        });
    });
}

// Scroll Listeners
const sections = document.querySelectorAll('section');
const navItems = document.querySelectorAll('.nav-item');
const navbar = document.querySelector('.navbar');

window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach(section => {
        if (pageYOffset >= section.offsetTop - 150) current = section.getAttribute('id');
    });
    navItems.forEach(item => {
        item.classList.remove('active');
        if (item.getAttribute('href').includes(current)) item.classList.add('active');
    });

    if (window.scrollY > 50) {
        navbar.style.boxShadow = '0 5px 20px rgba(0, 0, 0, 0.5)';
        navbar.style.backgroundColor = 'rgba(15, 23, 42, 0.98)';
    } else {
        navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.3)';
        navbar.style.backgroundColor = 'rgba(15, 23, 42, 0.95)';
    }
});

// Intersection Observer
const faders = document.querySelectorAll('.fade-in, .slide-in-left, .slide-in-right, .slide-up');
const appearOnScroll = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) entry.target.classList.add('visible');
    });
}, { threshold: 0.15, rootMargin: "0px 0px -50px 0px" });
faders.forEach(fader => appearOnScroll.observe(fader));

// Tabs
const tabBtns = document.querySelectorAll('.tab-btn');
const tabPanes = document.querySelectorAll('.tab-pane');
tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        tabBtns.forEach(b => b.classList.remove('active'));
        tabPanes.forEach(p => p.classList.remove('active'));
        btn.classList.add('active');
        const targetPane = document.getElementById(btn.getAttribute('data-target'));
        if (targetPane) targetPane.classList.add('active');
    });
});


// --- 1. TYPING EFFECT ANIMATION ---
const typingTarget = document.querySelector('.typing-target');
let isTyped = false;

function typeWriter(element, text, speed = 40) {
    let i = 0;
    element.innerHTML = ""; // Kosongkan elemen sebelum mengetik
    function type() {
        if (i < text.length) {
            element.innerHTML += text.charAt(i);
            i++;
            setTimeout(type, speed);
        }
    }
    type();
}

// --- 2. STATS COUNTER ANIMATION ---
const counters = document.querySelectorAll('.counter-num');
const speed = 200; // Semakin kecil semakin cepat

function startCounter(counter) {
    const updateCount = () => {
        const target = +counter.getAttribute('data-target');
        const count = +counter.innerText;
        const inc = target / speed;

        if (count < target) {
            counter.innerText = Math.ceil(count + inc);
            setTimeout(updateCount, 20);
        } else {
            counter.innerText = target;
        }
    };
    updateCount();
}

// --- 3. INTERSECTION OBSERVER UNTUK TRIGGER ANIMASI ---
const premiumObserver = new IntersectionObserver((entries, observer) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            // Trigger Typing
            if (entry.target.classList.contains('typing-target') && !isTyped) {
                const text = entry.target.getAttribute('data-text');
                typeWriter(entry.target, text);
                isTyped = true; // Flag agar hanya berjalan 1x
            }

            // Trigger Counter
            if (entry.target.classList.contains('startup-stats')) {
                counters.forEach(counter => {
                    startCounter(counter);
                });
                observer.unobserve(entry.target); // Hanya jalankan counter 1x
            }
        }
    });
}, { threshold: 0.5 }); // Trigger saat setengah elemen terlihat

if (typingTarget) premiumObserver.observe(typingTarget);
const statsSection = document.querySelector('.startup-stats');
if (statsSection) premiumObserver.observe(statsSection);

// --- 4. PARALLAX EFFECT (Optimized with requestAnimationFrame) ---
const parallaxWrapper = document.querySelector('.parallax-wrapper');
const parallaxTarget = document.querySelector('.parallax-target');
let ticking = false;

window.addEventListener('scroll', () => {
    if (!parallaxWrapper || !parallaxTarget) return;

    if (!ticking) {
        window.requestAnimationFrame(() => {
            const rect = parallaxWrapper.getBoundingClientRect();
            const viewportCenter = window.innerHeight / 2;
            const elementCenter = rect.top + (rect.height / 2);

            // Cek jika elemen berada di dalam viewport
            if (rect.top < window.innerHeight && rect.bottom > 0) {
                // Hitung jarak dari tengah viewport
                const distance = viewportCenter - elementCenter;
                // Sensitivitas parallax (0.05 berarti gerakan halus)
                const translateY = distance * 0.05;

                parallaxTarget.style.transform = `translateY(${translateY}px)`;
            }
            ticking = false;
        });
        ticking = true;
    }
}, { passive: true });

document.addEventListener('DOMContentLoaded', () => {

    // --- Tab Switch Logic ---
    const tabBtns = document.querySelectorAll('.exp-tab-btn');
    const tabPanes = document.querySelectorAll('.tab-pane');

    tabBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            // Remove active classes
            tabBtns.forEach(b => b.classList.remove('active'));
            tabPanes.forEach(p => p.classList.remove('active'));

            // Add active to current
            btn.classList.add('active');
            const target = btn.getAttribute('data-target');
            document.getElementById(target).classList.add('active');

            // Re-trigger reveal animation for newly visible elements
            revealOnScroll();
        });
    });

    // --- Scroll Reveal Logic ---
    const revealOnScroll = () => {
        const reveals = document.querySelectorAll('.reveal-up');
        const windowHeight = window.innerHeight;

        reveals.forEach(el => {
            const elementTop = el.getBoundingClientRect().top;
            const elementVisible = 100;

            if (elementTop < windowHeight - elementVisible) {
                el.classList.add('visible');
            }
        });
    };

    window.addEventListener('scroll', revealOnScroll);
    revealOnScroll(); // Run once on load
});


// --- CERTIFICATES MODAL LOGIC ---
const certModal = document.getElementById('certModal');
const certModalImg = document.getElementById('certModalImg');

function openCertModal(imageSrc) {
    certModalImg.src = imageSrc; // Set src gambar dengan URL yang dipassing
    certModal.classList.add('active');
    document.body.style.overflow = 'hidden'; // Kunci scroll layar utama
}

function closeCertModal() {
    certModal.classList.remove('active');
    document.body.style.overflow = 'auto'; // Buka kembali scroll
    // Opsional: Bersihkan src setelah animasi selesai agar tidak ghosting
    setTimeout(() => { certModalImg.src = ""; }, 300);
}

// Tutup modal jika user mengklik area abu-abu (overlay) di luar konten
if (certModal) {
    certModal.addEventListener('click', function (e) {
        if (e.target === certModal) {
            closeCertModal();
        }
    });
}