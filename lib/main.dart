import 'dart:async';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// ============================================================
// GLOBAL LISTS
// ============================================================

const List<String> monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

const List<String> districts = [
  'Ahmednagar',
  'Akola',
  'Amravati',
  'Aurangabad',
  'Beed',
  'Bhandara',
  'Buldhana',
  'Chandrapur',
  'Dhule',
  'Gadchiroli',
  'Gondia',
  'Hingoli',
  'Jalgaon',
  'Jalna',
  'Kolhapur',
  'Latur',
  'Mumbai City',
  'Mumbai Suburban',
  'Nagpur',
  'Nanded',
  'Nandurbar',
  'Nashik',
  'Osmanabad',
  'Palghar',
  'Parbhani',
  'Pune',
  'Raigad',
  'Ratnagiri',
  'Sangli',
  'Satara',
  'Sindhudurg',
  'Solapur',
  'Thane',
  'Wardha',
  'Washim',
  'Yavatmal',
];



const supabaseUrl = 'https://hrxwntclnbxzjdabsaaj.supabase.co';
const supabaseAnonKey =
    'sb_publishable_XS8JuMnqYGUqxjRZ9RcTLw_PF_8W7nl';

final supabase = Supabase.instance.client;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  runApp(const DmsApp());
}

class DmsApp extends StatelessWidget {
  const DmsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'राजा शिवछत्रपती परिवार',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF8A00),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFAF8F2),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF3E2723),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 2,
          shadowColor: Color(0x22000000),
          margin: EdgeInsets.symmetric(vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 8,
          indicatorColor: const Color(0xFFFFE6C7),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE5D8C8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFFF8A00), width: 1.5),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        dividerTheme: const DividerThemeData(
          color: Color(0xFFE5D8C8),
          thickness: 1,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFFFFCF7),
        ),
      ),
      home: const BrandingSplashPage(),
    );
  }
}

/* ============================================================
   BRANDING SPLASH
   ============================================================ */

class BrandingSplashPage extends StatefulWidget {
  const BrandingSplashPage({super.key});

  @override
  State<BrandingSplashPage> createState() => _BrandingSplashPageState();
}

class _BrandingSplashPageState extends State<BrandingSplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2200), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFCF7), Color(0xFFF4E7D3)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 190,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.92),
                      borderRadius: BorderRadius.circular(48),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 22,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/branding/splash_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 26),
                  const Text(
                    'राजा शिवछत्रपती',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF3E2723),
                    ),
                  ),
                  const Text(
                    'परिवार',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF3E2723),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 90,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8A00),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '|| एक ध्येय • एक परिवार ||',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5D4037),
                    ),
                  ),
                  const SizedBox(height: 46),
                  const SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Color(0xFFFF8A00),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* ============================================================
   LOGIN
   ============================================================ */

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool loading = false;
  bool hide = true;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (email.text.trim().isEmpty || password.text.isEmpty) {
      message('Email आणि Password भरा.');
      return;
    }

    setState(() => loading = true);

    try {
      final auth = await supabase.auth.signInWithPassword(
        email: email.text.trim(),
        password: password.text,
      );

      final uid = auth.user?.id;
      if (uid == null) throw Exception('User UID not found.');

      Map<String, dynamic>? admin;
      try {
        admin = await supabase
            .from('admins')
            .select()
            .eq('uid', uid.toString())
            .maybeSingle();
      } catch (_) {}

      if (admin != null) {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => AdminDashboard(admin: admin!),
          ),
        );
        return;
      }

      final user = await supabase
          .from('users')
          .select()
          .eq('id', uid)
          .maybeSingle();

      if (user != null) {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => UserDashboard(user: user),
          ),
        );
        return;
      }

      await supabase.auth.signOut();
      message('Auth account आहे पण users/admins मध्ये profile नाही.');
    } on AuthException catch (e) {
      message(e.message);
    } catch (e) {
      message('Login error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 550),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF4E3),
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: const Color(0xFFFFD49A)),
                      ),
                      child: Image.asset(
                        'assets/branding/raja_shivchhatrapati_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'राजा शिवछत्रपती परिवार',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28),
                    TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextField(
                      controller: password,
                      obscureText: hide,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () => setState(() => hide = !hide),
                          icon: Icon(
                            hide ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton(
                        onPressed: loading ? null : login,
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text('LOGIN'),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RegisterPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person_add),
                      label: const Text('Create User Account'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* ============================================================
   USER REGISTRATION
   ============================================================ */

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final mobile = TextEditingController();
  final education = TextEditingController();
  final village = TextEditingController();
  final district = TextEditingController();

  bool loading = false;

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    mobile.dispose();
    education.dispose();
    village.dispose();
    district.dispose();
    super.dispose();
  }

  Future<void> register() async {
    if (name.text.trim().isEmpty ||
        email.text.trim().isEmpty ||
        password.text.isEmpty ||
        education.text.trim().isEmpty ||
        village.text.trim().isEmpty ||
        district.text.trim().isEmpty) {
      message('Name, Email, Password, Education, Village आणि District भरा.');
      return;
    }

    if (password.text.length < 6) {
      message('Password कमीत कमी 6 characters असावा.');
      return;
    }

    setState(() => loading = true);

    try {
      final result = await supabase.auth.signUp(
        email: email.text.trim(),
        password: password.text,
      );

      final authUser = result.user;
      if (authUser == null) {
        throw Exception('Registration failed.');
      }

      await supabase.from('users').upsert(
        {
          'id': authUser.id,
          'name': name.text.trim(),
          'email': email.text.trim(),
          'mobile':
              mobile.text.trim().isEmpty ? null : mobile.text.trim(),
          'district': district.text.trim(),
          'education': education.text.trim(),
          'village': village.text.trim(),
          'role': 'user',
        },
        onConflict: 'id',
      );

      await supabase.auth.signOut();

      if (!mounted) return;
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Registration Successful'),
          content: const Text(
            'Registration successfully झाली.\nआता Email आणि Password ने Login करा.',
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );

      if (mounted) Navigator.pop(context);
    } on AuthException catch (e) {
      message(e.message);
    } on PostgrestException catch (e) {
      message('Data save error: ${e.message}');
    } catch (e) {
      message('Registration error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  Widget field(
    TextEditingController c,
    String label,
    IconData icon, {
    TextInputType? type,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: TextField(
        controller: c,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Registration')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.person_add, size: 55),
                    const SizedBox(height: 12),
                    field(name, 'Name', Icons.person),
                    field(
                      email,
                      'Email',
                      Icons.email,
                      type: TextInputType.emailAddress,
                    ),
                    field(password, 'Password', Icons.lock),
                    field(
                      mobile,
                      'Mobile',
                      Icons.phone,
                      type: TextInputType.phone,
                    ),
                    field(education, 'Education', Icons.school),
                    field(village, 'Village', Icons.home),
                    field(district, 'District', Icons.location_city),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton(
                        onPressed: loading ? null : register,
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* ============================================================
   USER DASHBOARD
   ============================================================ */

class UserDashboard extends StatefulWidget {
  final Map<String, dynamic> user;

  const UserDashboard({super.key, required this.user});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int tab = 0;

  Future<void> logout() async {
    await supabase.auth.signOut();
    if (!mounted) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      UserHome(user: widget.user),
      UserCampaigns(user: widget.user),
      MyJoinedMohimsPage(user: widget.user),
      UserProfile(user: widget.user),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
        actions: [
          IconButton(
            tooltip: 'Notifications',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NotificationsPage(
                    isAdmin: false,
                    user: widget.user,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: logout, icon: const Icon(Icons.logout)),
        ],
      ),
      body: pages[tab],
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (v) => setState(() => tab = v),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.campaign),
            label: 'Mohim',
          ),
          NavigationDestination(
            icon: Icon(Icons.how_to_reg),
            label: 'My Mohims',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class UserHome extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserHome({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFFCF7), Color(0xFFF4E7D3)],
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
        Text(
          'Welcome, ${user['name'] ?? 'User'}',
          style: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text('District: ${user['district'] ?? '-'}'),
        const SizedBox(height: 20),
        Card(
          child: ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Education'),
            subtitle: Text('${user['education'] ?? '-'}'),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Village'),
            subtitle: Text('${user['village'] ?? '-'}'),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.location_city),
            title: const Text('District'),
            subtitle: Text('${user['district'] ?? '-'}'),
          ),
        ),
      ],
      ),
    );
  }
}

class UserProfile extends StatefulWidget {
  final Map<String, dynamic> user;

  const UserProfile({super.key, required this.user});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool loading = true;
  int totalJoined = 0;
  int completedJoined = 0;
  int activeJoined = 0;
  int upcomingJoined = 0;
  List<Map<String, dynamic>> history = [];

  @override
  void initState() {
    super.initState();
    loadParticipation();
  }

  Future<void> loadParticipation() async {
    if (mounted) setState(() => loading = true);
    try {
      final uid = supabase.auth.currentUser?.id;
      if (uid == null) return;

      final joins = await supabase
          .from('mohim_participants')
          .select('mohim_id,joined_at')
          .eq('user_id', uid)
          .order('joined_at', ascending: false);

      if (joins.isEmpty) {
        history = [];
        totalJoined = completedJoined = activeJoined = upcomingJoined = 0;
        return;
      }

      final ids = joins.map((x) => '${x['mohim_id']}').toList();
      final mohims = await supabase
          .from('mohims')
          .select('id,district,title,description,mohim_date,location,status')
          .inFilter('id', ids);

      final joinedMap = <String, dynamic>{};
      for (final j in joins) {
        joinedMap['${j['mohim_id']}'] = j['joined_at'];
      }

      final result = List<Map<String, dynamic>>.from(mohims);
      for (final m in result) {
        m['joined_at'] = joinedMap['${m['id']}'];
      }
      result.sort((a, b) {
        final ad = DateTime.tryParse('${a['joined_at'] ?? ''}');
        final bd = DateTime.tryParse('${b['joined_at'] ?? ''}');
        if (ad == null && bd == null) return 0;
        if (ad == null) return 1;
        if (bd == null) return -1;
        return bd.compareTo(ad);
      });

      totalJoined = result.length;
      completedJoined = result.where((m) => '${m['status'] ?? ''}'.toLowerCase() == 'completed').length;
      activeJoined = result.where((m) => '${m['status'] ?? ''}'.toLowerCase() == 'active').length;
      upcomingJoined = result.where((m) => '${m['status'] ?? ''}'.toLowerCase() == 'upcoming').length;
      history = result;
    } catch (e) {
      message('Participation load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  String get badge {
    if (totalJoined >= 10) return '🏆 Mohim Champion';
    if (totalJoined >= 5) return '🥇 Active Volunteer';
    if (totalJoined >= 3) return '🥈 Regular Participant';
    if (totalJoined >= 1) return '⭐ First Step';
    return '🌱 New Member';
  }

  @override
  Widget build(BuildContext context) {
    final values = {
      'Name': widget.user['name'],
      'Email': widget.user['email'],
      'Mobile': widget.user['mobile'],
      'Education': widget.user['education'],
      'Village': widget.user['village'],
      'District': widget.user['district'],
      'Role': widget.user['role'],
    };

    final rate = totalJoined == 0 ? 0 : ((completedJoined / totalJoined) * 100).round();

    return RefreshIndicator(
      onRefresh: loadParticipation,
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(radius: 27, child: Icon(Icons.emoji_events)),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('My Participation', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 4),
                            Text(badge, style: const TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      IconButton(onPressed: loadParticipation, icon: const Icon(Icons.refresh)),
                    ],
                  ),
                  const SizedBox(height: 18),
                  if (loading)
                    const LinearProgressIndicator()
                  else
                    Row(
                      children: [
                        Expanded(child: _stat('Joined', totalJoined, Icons.how_to_reg)),
                        Expanded(child: _stat('Completed', completedJoined, Icons.check_circle)),
                        Expanded(child: _stat('Active', activeJoined, Icons.play_circle)),
                        Expanded(child: _stat('Rate', rate, Icons.percent, suffix: '%')),
                      ],
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text('Profile Details', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          ...values.entries.map((e) => Card(child: ListTile(title: Text(e.key), subtitle: Text('${e.value ?? '-'}')))),
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(child: Text('Participation History', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))),
              Text('${history.length} Mohims'),
            ],
          ),
          const SizedBox(height: 6),
          if (!loading && history.isEmpty)
            const Card(child: Padding(padding: EdgeInsets.all(18), child: Text('No Mohim participation yet. Join your first Mohim!'))),
          ...history.map((m) => Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon('${m['status'] ?? ''}'.toLowerCase() == 'completed' ? Icons.check : Icons.campaign)),
              title: Text('${m['title'] ?? 'Mohim'}', style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('District: ${m['district'] ?? '-'}\nDate: ${formatDate(m['mohim_date'])}\nJoined: ${formatDate(m['joined_at'])}'),
              isThreeLine: true,
              trailing: Text('${m['status'] ?? '-'}'),
            ),
          )),
        ],
      ),
    );
  }

  Widget _stat(String label, int value, IconData icon, {String suffix = ''}) {
    return Column(
      children: [
        Icon(icon, size: 22),
        const SizedBox(height: 5),
        Text('$value$suffix', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

/* ============================================================
   USER MOHIM
   ============================================================ */

class UserCampaigns extends StatefulWidget {
  final Map<String, dynamic> user;

  const UserCampaigns({super.key, required this.user});

  @override
  State<UserCampaigns> createState() => _UserCampaignsState();
}

class _UserCampaignsState extends State<UserCampaigns> {
  List<Map<String, dynamic>> data = [];
  Set<String> joinedMohimIds = {};
  bool loading = true;
  bool joining = false;
  String month = 'All';
  String year = 'All';

  final months = const [
    'All', 'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December',
  ];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final rows = await supabase
          .from('mohims')
          .select('id,district,title,description,mohim_date,location,status')
          .order('mohim_date', ascending: true);

      final participantRows = await supabase
          .from('mohim_participants')
          .select('mohim_id')
          .eq('user_id', supabase.auth.currentUser!.id);

      joinedMohimIds = participantRows
          .map((x) => '${x['mohim_id']}')
          .toSet();

      final all = List<Map<String, dynamic>>.from(rows);
      data = all.where((m) {
        final d = DateTime.tryParse('${m['mohim_date'] ?? ''}');
        if (d == null) return false;
        if (month != 'All' && monthNames[d.month - 1] != month) return false;
        if (year != 'All' && '${d.year}' != year) return false;
        return true;
      }).toList();
    } catch (e) {
      message('Mohim load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  List<String> get years {
    final y = data
        .map((m) {
          final d = DateTime.tryParse('${m['mohim_date'] ?? ''}');
          return d?.year.toString() ?? '';
        })
        .where((x) => x.isNotEmpty)
        .toSet()
        .toList();
    y.sort();
    return ['All', ...y];
  }

  Future<void> joinMohim(String mohimId) async {
    final uid = supabase.auth.currentUser?.id;
    if (uid == null) {
      message('Please login again.');
      return;
    }
    if (joinedMohimIds.contains(mohimId)) {
      message('तुम्ही या Mohim मध्ये आधीच सहभागी आहात.');
      return;
    }

    setState(() => joining = true);
    try {
      await supabase.from('mohim_participants').insert({
        'mohim_id': mohimId,
        'user_id': uid,
      });
      joinedMohimIds.add(mohimId);
      if (mounted) setState(() {});
      message('Mohim मध्ये successfully सहभागी झाला ✓');
    } on PostgrestException catch (e) {
      if (e.code == '23505') {
        joinedMohimIds.add(mohimId);
        if (mounted) setState(() {});
        message('तुम्ही या Mohim मध्ये आधीच सहभागी आहात.');
      } else {
        message('Join error: ${e.message}');
      }
    } catch (e) {
      message('Join error: $e');
    } finally {
      if (mounted) setState(() => joining = false);
    }
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: month,
                  decoration: const InputDecoration(
                    labelText: 'Month', border: OutlineInputBorder(),
                  ),
                  items: months.map((m) => DropdownMenuItem(
                    value: m, child: Text(m),
                  )).toList(),
                  onChanged: (v) {
                    if (v == null) return;
                    setState(() => month = v);
                    load();
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: year,
                  decoration: const InputDecoration(
                    labelText: 'Year', border: OutlineInputBorder(),
                  ),
                  items: years.map((y) => DropdownMenuItem(
                    value: y, child: Text(y),
                  )).toList(),
                  onChanged: (v) {
                    if (v == null) return;
                    setState(() => year = v);
                    load();
                  },
                ),
              ),
              IconButton(onPressed: load, icon: const Icon(Icons.refresh)),
            ],
          ),
        ),
        Expanded(
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : data.isEmpty
                  ? RefreshIndicator(
                      onRefresh: load,
                      child: ListView(children: const [
                        SizedBox(height: 230),
                        Center(child: Text('No Mohim Found')),
                      ]),
                    )
                  : RefreshIndicator(
                      onRefresh: load,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: data.length,
                        itemBuilder: (_, i) {
                          final m = data[i];
                          final id = '${m['id']}';
                          final joined = joinedMohimIds.contains(id);
                          return Card(
                            child: ExpansionTile(
                              leading: const CircleAvatar(
                                child: Icon(Icons.campaign),
                              ),
                              title: Text(
                                '${m['title'] ?? 'Mohim'}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                '${m['district'] ?? '-'} • ${formatDate(m['mohim_date'])}',
                              ),
                              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                              children: [
                                Align(alignment: Alignment.centerLeft,
                                  child: Text('District: ${m['district'] ?? '-'}')),
                                const SizedBox(height: 5),
                                Align(alignment: Alignment.centerLeft,
                                  child: Text('Date: ${formatDate(m['mohim_date'])}')),
                                const SizedBox(height: 5),
                                Align(alignment: Alignment.centerLeft,
                                  child: Text('Location: ${m['location'] ?? '-'}')),
                                const SizedBox(height: 5),
                                Align(alignment: Alignment.centerLeft,
                                  child: Text('Status: ${m['status'] ?? '-'}')),
                                if ('${m['description'] ?? ''}'.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('${m['description']}'),
                                    ),
                                  ),
                                const SizedBox(height: 14),
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton.icon(
                                    onPressed: joined || joining ? null : () => joinMohim(id),
                                    icon: Icon(joined ? Icons.check_circle : Icons.how_to_reg),
                                    label: Text(joined ? 'JOINED ✓' : 'JOIN MOHIM'),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
        ),
      ],
    );
  }
}

class MyJoinedMohimsPage extends StatefulWidget {
  final Map<String, dynamic> user;

  const MyJoinedMohimsPage({super.key, required this.user});

  @override
  State<MyJoinedMohimsPage> createState() => _MyJoinedMohimsPageState();
}

class _MyJoinedMohimsPageState extends State<MyJoinedMohimsPage> {
  List<Map<String, dynamic>> data = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final uid = supabase.auth.currentUser?.id;
      if (uid == null) {
        message('Please login again.');
        return;
      }

      final participantRows = await supabase
          .from('mohim_participants')
          .select('mohim_id,joined_at')
          .eq('user_id', uid)
          .order('joined_at', ascending: false);

      if (participantRows.isEmpty) {
        data = [];
        return;
      }

      final ids = participantRows.map((x) => '${x['mohim_id']}').toList();
      final mohimRows = await supabase
          .from('mohims')
          .select('id,district,title,description,mohim_date,location,status')
          .inFilter('id', ids);

      final joinedMap = <String, dynamic>{};
      for (final row in participantRows) {
        joinedMap['${row['mohim_id']}'] = row['joined_at'];
      }

      final result = List<Map<String, dynamic>>.from(mohimRows);
      for (final row in result) {
        row['joined_at'] = joinedMap['${row['id']}'];
      }

      result.sort((a, b) {
        final ad = DateTime.tryParse('${a['joined_at'] ?? ''}');
        final bd = DateTime.tryParse('${b['joined_at'] ?? ''}');
        if (ad == null && bd == null) return 0;
        if (ad == null) return 1;
        if (bd == null) return -1;
        return bd.compareTo(ad);
      });

      data = result;
    } catch (e) {
      message('My Mohims load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'My Joined Mohims',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(onPressed: load, icon: const Icon(Icons.refresh)),
            ],
          ),
        ),
        Expanded(
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : data.isEmpty
                  ? RefreshIndicator(
                      onRefresh: load,
                      child: ListView(
                        children: const [
                          SizedBox(height: 230),
                          Center(child: Text('No Joined Mohims Found')),
                        ],
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh: load,
                      child: ListView.builder(
                        padding: const EdgeInsets.fromLTRB(10, 4, 10, 20),
                        itemCount: data.length,
                        itemBuilder: (_, i) {
                          final m = data[i];
                          return Card(
                            child: ExpansionTile(
                              leading: const CircleAvatar(
                                child: Icon(Icons.how_to_reg),
                              ),
                              title: Text(
                                '${m['title'] ?? 'Mohim'}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                '${m['district'] ?? '-'} • ${formatDate(m['mohim_date'])}',
                              ),
                              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('District: ${m['district'] ?? '-'}'),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Mohim Date: ${formatDate(m['mohim_date'])}'),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Location: ${m['location'] ?? '-'}'),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Status: ${m['status'] ?? '-'}'),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Joined Date: ${formatDate(m['joined_at'])}'),
                                ),
                                if ('${m['description'] ?? ''}'.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('${m['description']}'),
                                    ),
                                  ),
                                const SizedBox(height: 8),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'JOINED ✓',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
        ),
      ],
    );
  }
}

/* ============================================================
   ADMIN DASHBOARD
   ============================================================ */

class AdminDashboard extends StatefulWidget {
  final Map<String, dynamic> admin;

  const AdminDashboard({super.key, required this.admin});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int tab = 0;

  Future<void> logout() async {
    await supabase.auth.signOut();
    if (!mounted) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = const [
      AdminUsersPage(),
      AdminListPage(),
      AdminAnalyticsPage(),
      AdminCampaignsPage(),
      AdminParticipantsPage(),
      AdminParticipationRankingPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Admin Dashboard'),
        actions: [
          IconButton(
            tooltip: 'Notifications',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NotificationsPage(
                    isAdmin: true,
                    user: widget.admin,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName:
                    Text('${widget.admin['name'] ?? 'Admin'}'),
                accountEmail:
                    Text('${widget.admin['email'] ?? ''}'),
                currentAccountPicture: const CircleAvatar(
                  child: Icon(Icons.admin_panel_settings),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Users'),
                onTap: () {
                  setState(() => tab = 0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.admin_panel_settings),
                title: const Text('Admins'),
                onTap: () {
                  setState(() => tab = 1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.analytics),
                title: const Text('Analytics'),
                onTap: () {
                  setState(() => tab = 2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.campaign),
                title: const Text('Mohim'),
                onTap: () {
                  setState(() => tab = 3);
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.people_alt),
                title: const Text('Joined Users'),
                onTap: () {
                  setState(() => tab = 4);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.emoji_events),
                title: const Text('Participation Ranking'),
                onTap: () {
                  setState(() => tab = 5);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: logout,
              ),
            ],
          ),
        ),
      ),
      body: pages[tab],
    );
  }
}


/* ============================================================
   ADMIN - PARTICIPATION RANKING
   ============================================================ */

class AdminParticipationRankingPage extends StatefulWidget {
  const AdminParticipationRankingPage({super.key});

  @override
  State<AdminParticipationRankingPage> createState() => _AdminParticipationRankingPageState();
}

class _AdminParticipationRankingPageState extends State<AdminParticipationRankingPage> {
  bool loading = true;
  String search = '';
  String districtFilter = 'All';
  List<Map<String, dynamic>> users = [];
  Map<String, int> districtCounts = {};
  Map<String, int> districtJoinedUsers = {};

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final userRows = await supabase.from('users').select('id,name,email,mobile,district,village,education');
      final joinRows = await supabase.from('mohim_participants').select('user_id,mohim_id,joined_at');
      final mohimRows = await supabase.from('mohims').select('id,status,title');

      final userList = List<Map<String, dynamic>>.from(userRows);
      final joins = List<Map<String, dynamic>>.from(joinRows);
      final mohims = List<Map<String, dynamic>>.from(mohimRows);
      final statusByMohim = <String, String>{for (final m in mohims) '${m['id']}': '${m['status'] ?? ''}'};
      final counts = <String, int>{};
      final completed = <String, int>{};
      final active = <String, int>{};
      final upcoming = <String, int>{};
      final joinedDates = <String, dynamic>{};

      for (final j in joins) {
        final uid = '${j['user_id']}';
        counts[uid] = (counts[uid] ?? 0) + 1;
        joinedDates[uid] ??= j['joined_at'];
        final status = (statusByMohim['${j['mohim_id']}'] ?? '').toLowerCase();
        if (status == 'completed') completed[uid] = (completed[uid] ?? 0) + 1;
        if (status == 'active') active[uid] = (active[uid] ?? 0) + 1;
        if (status == 'upcoming') upcoming[uid] = (upcoming[uid] ?? 0) + 1;
      }

      final result = <Map<String, dynamic>>[];
      final districtUserCounts = <String, int>{};
      final districtUniqueJoined = <String, Set<String>>{};
      for (final u in userList) {
        final uid = '${u['id']}';
        final district = '${u['district'] ?? ''}'.trim().isEmpty ? 'Unknown' : '${u['district']}'.trim();
        districtUserCounts[district] = (districtUserCounts[district] ?? 0) + 1;
        if (counts.containsKey(uid)) districtUniqueJoined.putIfAbsent(district, () => <String>{}).add(uid);
        final row = Map<String, dynamic>.from(u);
        row['joined_count'] = counts[uid] ?? 0;
        row['completed_count'] = completed[uid] ?? 0;
        row['active_count'] = active[uid] ?? 0;
        row['upcoming_count'] = upcoming[uid] ?? 0;
        row['last_joined_at'] = joinedDates[uid];
        row['district_key'] = district;
        result.add(row);
      }

      result.sort((a, b) => (b['joined_count'] as int).compareTo(a['joined_count'] as int));
      users = result;
      districtCounts = districtUserCounts;
      districtJoinedUsers = {for (final e in districtUniqueJoined.entries) e.key: e.value.length};
    } catch (e) {
      message('Ranking load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  List<String> get districts => ['All', ...districtCounts.keys.toList()..sort()];

  @override
  Widget build(BuildContext context) {
    final filtered = users.where((u) {
      final districtOk = districtFilter == 'All' || u['district_key'] == districtFilter;
      final q = search.trim().toLowerCase();
      final text = '${u['name'] ?? ''} ${u['email'] ?? ''} ${u['mobile'] ?? ''} ${u['village'] ?? ''}'.toLowerCase();
      return districtOk && (q.isEmpty || text.contains(q));
    }).toList();

    return RefreshIndicator(
      onRefresh: load,
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Row(children: [
            const Expanded(child: Text('Participation Ranking', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            IconButton(onPressed: load, icon: const Icon(Icons.refresh)),
          ]),
          const SizedBox(height: 6),
          const Text('Top participating users and district-wise participation.'),
          const SizedBox(height: 14),
          if (loading) const LinearProgressIndicator(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(children: [
                TextField(
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search user, mobile, village...'),
                  onChanged: (v) => setState(() => search = v),
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: districtFilter,
                  decoration: const InputDecoration(labelText: 'District'),
                  items: districts.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
                  onChanged: (v) => setState(() => districtFilter = v ?? 'All'),
                ),
              ]),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text('District Participation', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                if (districtCounts.isEmpty) const Text('No district data.'),
                ...districtCounts.entries.map((e) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const CircleAvatar(child: Icon(Icons.location_city)),
                  title: Text(e.key),
                  subtitle: Text('${e.value} users • ${districtJoinedUsers[e.key] ?? 0} joined users'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => setState(() => districtFilter = e.key),
                )),
              ]),
            ),
          ),
          const SizedBox(height: 12),
          Text('User Ranking (${filtered.length})', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          if (!loading && filtered.isEmpty) const Card(child: Padding(padding: EdgeInsets.all(18), child: Text('No users found.'))),
          ...filtered.asMap().entries.map((entry) {
            final index = entry.key;
            final u = entry.value;
            final joined = u['joined_count'] as int;
            final rankIcon = index == 0 ? Icons.emoji_events : (index == 1 ? Icons.workspace_premium : (index == 2 ? Icons.military_tech : Icons.person));
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(rankIcon)),
                title: Text('${index + 1}. ${u['name'] ?? 'User'}', style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${u['district_key']} • ${u['village'] ?? '-'}\nJoined: $joined • Completed: ${u['completed_count']} • Active: ${u['active_count']}'),
                isThreeLine: true,
                trailing: Text('$joined\nMohims', textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
                onTap: () => showUserDetails(u),
              ),
            );
          }),
        ],
      ),
    );
  }

  void showUserDetails(Map<String, dynamic> u) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('${u['name'] ?? 'User'}'),
        content: Text(
          'Email: ${u['email'] ?? '-'}\n'
          'Mobile: ${u['mobile'] ?? '-'}\n'
          'Village: ${u['village'] ?? '-'}\n'
          'District: ${u['district_key'] ?? '-'}\n\n'
          'Total Joined: ${u['joined_count']}\n'
          'Completed: ${u['completed_count']}\n'
          'Active: ${u['active_count']}\n'
          'Upcoming: ${u['upcoming_count']}\n'
          'Last Joined: ${formatDate(u['last_joined_at'])}',
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('CLOSE'))],
      ),
    );
  }
}

/* ============================================================
   NOTIFICATIONS & REMINDERS
   ============================================================ */

class NotificationsPage extends StatefulWidget {
  final bool isAdmin;
  final Map<String, dynamic> user;

  const NotificationsPage({
    super.key,
    required this.isAdmin,
    required this.user,
  });

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool loading = true;
  List<Map<String, dynamic>> notifications = [];
  final Set<String> readIds = {};

  @override
  void initState() {
    super.initState();
    load();
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  String formatDateTime(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}')?.toLocal();
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year} '
        '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final items = <Map<String, dynamic>>[];

      if (widget.isAdmin) {
        // Recent Mohims available to the admin.
        final mohims = await supabase
            .from('mohims')
            .select('id,title,district,mohim_date,location,status')
            .order('mohim_date', ascending: false)
            .limit(30);

        for (final m in mohims) {
          items.add({
            'id': 'mohim-${m['id']}',
            'type': 'mohim',
            'icon': Icons.campaign,
            'title': 'Mohim available',
            'message': '${m['title'] ?? 'Mohim'} • ${m['district'] ?? '-'} • ${m['status'] ?? '-'}',
            'date': m['mohim_date'],
            'mohim': m,
          });
        }

        // Latest participant joins for admin notifications.
        final joined = await supabase
            .from('mohim_participants')
            .select('id,user_id,mohim_id,joined_at')
            .order('joined_at', ascending: false)
            .limit(50);

        final userIds = joined
            .map((x) => '${x['user_id']}')
            .where((x) => x.isNotEmpty)
            .toSet()
            .toList();

        final mohimIds = joined
            .map((x) => '${x['mohim_id']}')
            .where((x) => x.isNotEmpty)
            .toSet()
            .toList();

        Map<String, dynamic> userMap = {};
        Map<String, dynamic> mohimMap = {};

        if (userIds.isNotEmpty) {
          final users = await supabase
              .from('users')
              .select('id,name,mobile,village,district')
              .inFilter('id', userIds);
          for (final u in users) {
            userMap['${u['id']}'] = u;
          }
        }

        if (mohimIds.isNotEmpty) {
          final ms = await supabase
              .from('mohims')
              .select('id,title,district,mohim_date,status')
              .inFilter('id', mohimIds);
          for (final m in ms) {
            mohimMap['${m['id']}'] = m;
          }
        }

        for (final row in joined) {
          final u = userMap['${row['user_id']}'];
          final m = mohimMap['${row['mohim_id']}'];
          items.add({
            'id': 'join-${row['id']}',
            'type': 'join',
            'icon': Icons.person_add_alt_1,
            'title': 'New Mohim join',
            'message': '${u?['name'] ?? 'User'} joined ${m?['title'] ?? 'Mohim'}',
            'date': row['joined_at'],
            'detail': 'Mobile: ${u?['mobile'] ?? '-'}\n'
                'Village: ${u?['village'] ?? '-'} • District: ${u?['district'] ?? '-'}\n'
                'Mohim Date: ${formatDate(m?['mohim_date'])}',
          });
        }
      } else {
        final uid = supabase.auth.currentUser?.id;
        if (uid == null) throw Exception('Please login again.');

        final district = '${widget.user['district'] ?? ''}'.trim();

        final joinedRows = await supabase
            .from('mohim_participants')
            .select('id,mohim_id,joined_at')
            .eq('user_id', uid)
            .order('joined_at', ascending: false);

        final joinedIds = joinedRows.map((x) => '${x['mohim_id']}').toSet();

        final mohims = await supabase
            .from('mohims')
            .select('id,title,description,district,mohim_date,location,status')
            .order('mohim_date', ascending: true);

        final now = DateTime.now();
        for (final m in mohims) {
          final date = DateTime.tryParse('${m['mohim_date'] ?? ''}');
          if (date == null) continue;

          final sameDistrict = district.isEmpty || '${m['district'] ?? ''}' == district;
          final days = date.difference(DateTime(now.year, now.month, now.day)).inDays;

          // Upcoming reminder for the user's district.
          if (sameDistrict && days >= 0 && days <= 7) {
            items.add({
              'id': 'reminder-${m['id']}',
              'type': 'reminder',
              'icon': Icons.alarm,
              'title': days == 0 ? 'Mohim is today' : 'Mohim reminder',
              'message': '${m['title'] ?? 'Mohim'} • ${days == 0 ? 'Today' : '$days day(s) left'}',
              'date': m['mohim_date'],
              'mohim': m,
            });
          }

          // Joined Mohim update.
          if (joinedIds.contains('${m['id']}')) {
            items.add({
              'id': 'status-${m['id']}',
              'type': 'status',
              'icon': Icons.info_outline,
              'title': 'Joined Mohim update',
              'message': '${m['title'] ?? 'Mohim'} • Status: ${m['status'] ?? '-'}',
              'date': m['mohim_date'],
              'mohim': m,
            });
          }

          // Mohim available notification for the user's district.
          if (sameDistrict && !joinedIds.contains('${m['id']}') && days >= 0) {
            items.add({
              'id': 'available-${m['id']}',
              'type': 'available',
              'icon': Icons.campaign_outlined,
              'title': 'Mohim available',
              'message': '${m['title'] ?? 'Mohim'} • ${m['district'] ?? '-'}',
              'date': m['mohim_date'],
              'mohim': m,
            });
          }
        }
      }

      // Newest first.
      items.sort((a, b) {
        final ad = DateTime.tryParse('${a['date'] ?? ''}') ?? DateTime(2000);
        final bd = DateTime.tryParse('${b['date'] ?? ''}') ?? DateTime(2000);
        return bd.compareTo(ad);
      });

      if (mounted) {
        setState(() {
          notifications = items;
          loading = false;
        });
      }
    } catch (e) {
      message('Notifications error: $e');
      if (mounted) setState(() => loading = false);
    }
  }

  void markRead(String id) {
    setState(() => readIds.add(id));
  }

  void markAllRead() {
    setState(() {
      readIds.addAll(notifications.map((n) => '${n['id']}'));
    });
    message('All notifications marked as read ✓');
  }

  void openNotification(Map<String, dynamic> n) {
    markRead('${n['id']}');
    final mohim = n['mohim'];
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('${n['title'] ?? 'Notification'}'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${n['message'] ?? ''}', style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 14),
              if (mohim is Map<String, dynamic>) ...[
                Text('District: ${mohim['district'] ?? '-'}'),
                Text('Date: ${formatDate(mohim['mohim_date'])}'),
                Text('Location: ${mohim['location'] ?? '-'}'),
                Text('Status: ${mohim['status'] ?? '-'}'),
                if ('${mohim['description'] ?? ''}'.trim().isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Text('${mohim['description']}'),
                ],
              ],
              if (n['detail'] != null) ...[
                const SizedBox(height: 10),
                Text('${n['detail']}'),
              ],
              const SizedBox(height: 10),
              Text('Date: ${formatDateTime(n['date'])}', style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CLOSE')),
        ],
      ),
    );
  }

  Color notificationIconColor(String type) {
    if (type == 'join') return Colors.green;
    if (type == 'reminder') return Colors.orange;
    if (type == 'status') return Colors.indigo;
    return Colors.deepPurple;
  }

  @override
  Widget build(BuildContext context) {
    final unread = notifications.where((n) => !readIds.contains('${n['id']}')).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          if (unread > 0)
            TextButton(
              onPressed: markAllRead,
              child: const Text('READ ALL', style: TextStyle(color: Colors.white)),
            ),
          IconButton(onPressed: load, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : notifications.isEmpty
              ? RefreshIndicator(
                  onRefresh: load,
                  child: ListView(
                    children: const [
                      SizedBox(height: 230),
                      Center(child: Text('No notifications right now.')),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: load,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(14),
                    itemCount: notifications.length,
                    itemBuilder: (_, i) {
                      final n = notifications[i];
                      final id = '${n['id']}';
                      final read = readIds.contains(id);
                      final type = '${n['type'] ?? ''}';
                      return Card(
                        child: ListTile(
                          onTap: () => openNotification(n),
                          leading: CircleAvatar(
                            backgroundColor: read ? Colors.grey.shade200 : Colors.indigo.shade50,
                            child: Icon(
                              n['icon'] is IconData ? n['icon'] as IconData : Icons.notifications,
                              color: read ? Colors.grey : notificationIconColor(type),
                            ),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${n['title'] ?? 'Notification'}',
                                  style: TextStyle(fontWeight: read ? FontWeight.w500 : FontWeight.bold),
                                ),
                              ),
                              if (!read)
                                Container(
                                  width: 9,
                                  height: 9,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                            ],
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              '${n['message'] ?? ''}\n${formatDate(n['date'])}',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          isThreeLine: true,
                          trailing: const Icon(Icons.chevron_right),
                        ),
                      );
                    },
                  ),
                ),
    );
  }
}

/* ============================================================
   ADMIN - ANALYTICS
   ============================================================ */

class AdminAnalyticsPage extends StatefulWidget {
  const AdminAnalyticsPage({super.key});

  @override
  State<AdminAnalyticsPage> createState() => _AdminAnalyticsPageState();
}

class _AdminAnalyticsPageState extends State<AdminAnalyticsPage> {
  bool loading = true;
  int totalUsers = 0;
  int totalAdmins = 0;
  int totalMohims = 0;
  int upcomingMohims = 0;
  int activeMohims = 0;
  int completedMohims = 0;
  int totalJoins = 0;
  int uniqueJoinedUsers = 0;
  Map<String, int> districtUsers = {};
  Map<String, int> districtJoins = {};
  Map<String, int> monthMohims = {};
  Map<String, int> mohimJoins = {};
  List<Map<String, dynamic>> topMohims = [];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final usersResult = await supabase.from('users').select('id,district');
      final adminsResult = await supabase.from('admins').select('uid');
      final mohimsResult = await supabase
          .from('mohims')
          .select('id,district,title,status,mohim_date,location');
      final joinsResult = await supabase
          .from('mohim_participants')
          .select('mohim_id,user_id');

      final users = List<Map<String, dynamic>>.from(usersResult);
      final admins = List<Map<String, dynamic>>.from(adminsResult);
      final mohims = List<Map<String, dynamic>>.from(mohimsResult);
      final joins = List<Map<String, dynamic>>.from(joinsResult);

      final usersByDistrict = <String, int>{};
      for (final u in users) {
        final d = '${u['district'] ?? ''}'.trim();
        final key = d.isEmpty ? 'Unknown' : d;
        usersByDistrict[key] = (usersByDistrict[key] ?? 0) + 1;
      }

      final joinsByMohim = <String, int>{};
      final uniqueUsers = <String>{};
      for (final j in joins) {
        final id = '${j['mohim_id']}';
        final userId = '${j['user_id']}';
        joinsByMohim[id] = (joinsByMohim[id] ?? 0) + 1;
        if (userId.isNotEmpty && userId != 'null') uniqueUsers.add(userId);
      }

      final mohimDistrictById = <String, String>{};
      final joinsByDistrict = <String, int>{};
      final monthCounts = <String, int>{};

      for (final m in mohims) {
        final id = '${m['id']}';
        final d = '${m['district'] ?? ''}'.trim();
        mohimDistrictById[id] = d.isEmpty ? 'Unknown' : d;

        final rawDate = '${m['mohim_date'] ?? ''}';
        if (rawDate.isNotEmpty) {
          try {
            final date = DateTime.parse(rawDate);
            final monthKey = '${monthNames[date.month - 1]} ${date.year}';
            monthCounts[monthKey] = (monthCounts[monthKey] ?? 0) + 1;
          } catch (_) {}
        }
      }

      for (final j in joins) {
        final district = mohimDistrictById['${j['mohim_id']}'] ?? 'Unknown';
        joinsByDistrict[district] = (joinsByDistrict[district] ?? 0) + 1;
      }

      int upcoming = 0;
      int active = 0;
      int completed = 0;
      for (final m in mohims) {
        final status = '${m['status'] ?? ''}'.toLowerCase().trim();
        if (status == 'upcoming') upcoming++;
        if (status == 'active') active++;
        if (status == 'completed') completed++;
      }

      final rankedMohims = <Map<String, dynamic>>[];
      for (final m in mohims) {
        final item = Map<String, dynamic>.from(m);
        item['join_count'] = joinsByMohim['${m['id']}'] ?? 0;
        rankedMohims.add(item);
      }
      rankedMohims.sort((a, b) =>
          (b['join_count'] as int).compareTo(a['join_count'] as int));

      if (!mounted) return;
      setState(() {
        totalUsers = users.length;
        totalAdmins = admins.length;
        totalMohims = mohims.length;
        upcomingMohims = upcoming;
        activeMohims = active;
        completedMohims = completed;
        totalJoins = joins.length;
        uniqueJoinedUsers = uniqueUsers.length;
        districtUsers = usersByDistrict;
        districtJoins = joinsByDistrict;
        monthMohims = monthCounts;
        mohimJoins = joinsByMohim;
        topMohims = rankedMohims.take(5).toList();
        loading = false;
      });
    } on PostgrestException catch (e) {
      if (mounted) {
        setState(() => loading = false);
        message('Analytics error: ${e.message}');
      }
    } catch (e) {
      if (mounted) {
        setState(() => loading = false);
        message('Analytics error: $e');
      }
    }
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  String formatDate(String? value) {
    if (value == null || value.isEmpty) return '-';
    try {
      final d = DateTime.parse(value).toLocal();
      return '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}';
    } catch (_) {
      return value;
    }
  }

  Widget statCard({
    required String title,
    required String value,
    required IconData icon,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 4),
                    Text(value,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            )),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(subtitle,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                    if (onTap != null) ...[
                      const SizedBox(height: 4),
                      Text('Tap to view details',
                          style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ],
                ),
              ),
              if (onTap != null) const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showUsersDetails() async {
    try {
      final result = await supabase
          .from('users')
          .select('id,name,email,mobile,district,village,education')
          .order('name');
      if (!mounted) return;
      final users = List<Map<String, dynamic>>.from(result);
      await showDialog(
        context: context,
        builder: (_) => _AnalyticsListDialog(
          title: 'All Users (${users.length})',
          icon: Icons.people,
          children: users.isEmpty
              ? [const ListTile(title: Text('No users found'))]
              : users.map((u) {
                  final name = '${u['name'] ?? 'Unnamed User'}';
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(name.trim().isEmpty ? 'U' : name.trim()[0].toUpperCase()),
                    ),
                    title: Text(name),
                    subtitle: Text(
                      '${u['mobile'] ?? '-'} • ${u['district'] ?? '-'}\n'
                      'Village: ${u['village'] ?? '-'}',
                    ),
                  );
                }).toList(),
        ),
      );
    } catch (e) {
      if (mounted) message('Users error: $e');
    }
  }

  Future<void> showMohimsDetails({String? status}) async {
    try {
      final result = status == null
          ? await supabase
              .from('mohims')
              .select('id,title,description,district,status,mohim_date,location')
              .order('mohim_date', ascending: false)
          : await supabase
              .from('mohims')
              .select('id,title,description,district,status,mohim_date,location')
              .eq('status', status)
              .order('mohim_date', ascending: false);
      if (!mounted) return;
      final list = List<Map<String, dynamic>>.from(result);
      final heading = status == null ? 'All Mohims' : '$status Mohims';
      await showDialog(
        context: context,
        builder: (_) => _AnalyticsListDialog(
          title: '$heading (${list.length})',
          icon: Icons.campaign,
          children: list.isEmpty
              ? [const ListTile(title: Text('No Mohims found'))]
              : list.map((m) {
                  final joins = mohimJoins['${m['id']}'] ?? 0;
                  return ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.campaign)),
                    title: Text('${m['title'] ?? 'Untitled Mohim'}'),
                    subtitle: Text(
                      '${m['district'] ?? '-'} • ${formatDate('${m['mohim_date'] ?? ''}')}\n'
                      'Location: ${m['location'] ?? '-'} • Joins: $joins',
                    ),
                    trailing: Chip(label: Text('${m['status'] ?? '-'}')),
                  );
                }).toList(),
        ),
      );
    } catch (e) {
      if (mounted) message('Mohim error: $e');
    }
  }

  Future<void> showJoinsDetails() async {
    try {
      final result = await supabase
          .from('mohim_participants')
          .select('id,mohim_id,user_id,joined_at')
          .order('joined_at', ascending: false);
      final joins = List<Map<String, dynamic>>.from(result);
      final userIds = joins.map((e) => '${e['user_id']}').where((e) => e != 'null').toSet().toList();
      final mohimIds = joins.map((e) => '${e['mohim_id']}').where((e) => e != 'null').toSet().toList();

      final usersById = <String, Map<String, dynamic>>{};
      final mohimsById = <String, Map<String, dynamic>>{};
      if (userIds.isNotEmpty) {
        final usersResult = await supabase
            .from('users')
            .select('id,name,mobile,district,village')
            .inFilter('id', userIds);
        for (final u in List<Map<String, dynamic>>.from(usersResult)) {
          usersById['${u['id']}'] = u;
        }
      }
      if (mohimIds.isNotEmpty) {
        final mohimsResult = await supabase
            .from('mohims')
            .select('id,title,district,mohim_date')
            .inFilter('id', mohimIds);
        for (final m in List<Map<String, dynamic>>.from(mohimsResult)) {
          mohimsById['${m['id']}'] = m;
        }
      }
      if (!mounted) return;
      await showDialog(
        context: context,
        builder: (_) => _AnalyticsListDialog(
          title: 'All Joins (${joins.length})',
          icon: Icons.how_to_reg,
          children: joins.isEmpty
              ? [const ListTile(title: Text('No joins found'))]
              : joins.map((j) {
                  final u = usersById['${j['user_id']}'];
                  final m = mohimsById['${j['mohim_id']}'];
                  return ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person_add)),
                    title: Text('${u?['name'] ?? 'Unknown User'}'),
                    subtitle: Text(
                      'Mohim: ${m?['title'] ?? 'Unknown Mohim'}\n'
                      'Mobile: ${u?['mobile'] ?? '-'} • District: ${u?['district'] ?? '-'}\n'
                      'Joined: ${formatDate('${j['joined_at'] ?? ''}')}',
                    ),
                  );
                }).toList(),
        ),
      );
    } catch (e) {
      if (mounted) message('Joins error: $e');
    }
  }

  Future<void> showDistrictDetails(String district) async {
    try {
      final usersResult = await supabase
          .from('users')
          .select('id,name,email,mobile,district,village')
          .eq('district', district)
          .order('name');
      final mohimsResult = await supabase
          .from('mohims')
          .select('id,title,district,status,mohim_date,location')
          .eq('district', district)
          .order('mohim_date', ascending: false);
      final joinsResult = await supabase
          .from('mohim_participants')
          .select('id,user_id,mohim_id,joined_at');

      final users = List<Map<String, dynamic>>.from(usersResult);
      final mohims = List<Map<String, dynamic>>.from(mohimsResult);
      final mohimIds = mohims.map((m) => '${m['id']}').toSet();
      final joins = List<Map<String, dynamic>>.from(joinsResult)
          .where((j) => mohimIds.contains('${j['mohim_id']}'))
          .toList();

      if (!mounted) return;
      await showDialog(
        context: context,
        builder: (_) => _DistrictAnalyticsDialog(
          district: district,
          users: users,
          mohims: mohims,
          joins: joins,
          formatDate: formatDate,
        ),
      );
    } catch (e) {
      if (mounted) message('District analytics error: $e');
    }
  }

  Widget districtCard(String title, Map<String, int> data, IconData icon) {
    final entries = data.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(title,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text('Tap a district to open its details',
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 14),
            if (entries.isEmpty)
              const Text('No data available')
            else
              ...entries.take(10).map((e) {
                final max = entries.first.value == 0 ? 1 : entries.first.value;
                final percent = e.value / max;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => showDistrictDetails(e.key),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text(e.key)),
                                Text('${e.value}',
                                    style: const TextStyle(fontWeight: FontWeight.w700)),
                                const SizedBox(width: 4),
                                const Icon(Icons.chevron_right, size: 18),
                              ],
                            ),
                            const SizedBox(height: 6),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: LinearProgressIndicator(value: percent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            if (entries.length > 10)
              Text('+ ${entries.length - 10} more districts',
                  style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }

  Widget statusSummary() {
    final total = totalMohims == 0 ? 1 : totalMohims;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mohim Status Overview',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 16),
            _statusRow('Upcoming', upcomingMohims, upcomingMohims / total, () => showMohimsDetails(status: 'Upcoming')),
            _statusRow('Active', activeMohims, activeMohims / total, () => showMohimsDetails(status: 'Active')),
            _statusRow('Completed', completedMohims, completedMohims / total, () => showMohimsDetails(status: 'Completed')),
          ],
        ),
      ),
    );
  }

  Widget _statusRow(String title, int value, double percentage, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text(title)),
                    Text('$value', style: const TextStyle(fontWeight: FontWeight.w800)),
                    const SizedBox(width: 8),
                    Text('${(percentage * 100).round()}%'),
                    const Icon(Icons.chevron_right, size: 18),
                  ],
                ),
                const SizedBox(height: 7),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: LinearProgressIndicator(value: percentage),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget monthCard() {
    final entries = monthMohims.entries.toList();
    entries.sort((a, b) {
      DateTime parse(String value) {
        final parts = value.split(' ');
        final year = int.tryParse(parts.last) ?? 0;
        final month = monthNames.indexOf(parts.first) + 1;
        return DateTime(year, month);
      }
      return parse(a.key).compareTo(parse(b.key));
    });
    final shown = entries.reversed.take(8).toList();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Month-wise Mohims',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 14),
            if (shown.isEmpty)
              const Text('No date-wise Mohim data available')
            else
              ...shown.map((e) {
                final max = shown.map((x) => x.value).reduce((a, b) => a > b ? a : b);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      SizedBox(width: 120, child: Text(e.key)),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: LinearProgressIndicator(value: e.value / (max == 0 ? 1 : max)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text('${e.value}', style: const TextStyle(fontWeight: FontWeight.w800)),
                    ],
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }

  Widget topMohimsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Top 5 Mohims by Participation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            if (topMohims.isEmpty)
              const Text('No Mohim data available')
            else
              ...topMohims.asMap().entries.map((entry) {
                final index = entry.key;
                final m = entry.value;
                final count = m['join_count'] ?? 0;
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => showMohimsDetails(),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            child: Text('${index + 1}',
                                style: const TextStyle(fontWeight: FontWeight.w800)),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${m['title'] ?? 'Untitled Mohim'}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontWeight: FontWeight.w700)),
                                const SizedBox(height: 3),
                                Text('${m['district'] ?? '-'} • ${formatDate('${m['mohim_date'] ?? ''}')}',
                                    style: Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              Text('$count',
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                              const Text('joins'),
                            ],
                          ),
                          const Icon(Icons.chevron_right, size: 18),
                        ],
                      ),
                    ),
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loading) return const Center(child: CircularProgressIndicator());

    final participationRate = totalUsers == 0
        ? 0
        : (uniqueJoinedUsers / totalUsers * 100).clamp(0, 100).round();

    return RefreshIndicator(
      onRefresh: load,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Advanced Analytics',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                    SizedBox(height: 4),
                    Text('Tap any card or district to view details'),
                  ],
                ),
              ),
              IconButton(onPressed: load, icon: const Icon(Icons.refresh)),
            ],
          ),
          const SizedBox(height: 14),
          GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 850 ? 4 : 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.65,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              statCard(title: 'Total Users', value: '$totalUsers', icon: Icons.people, onTap: showUsersDetails),
              statCard(title: 'Total Admins', value: '$totalAdmins', icon: Icons.admin_panel_settings, onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => _AnalyticsListDialog(
                    title: 'Admin Accounts ($totalAdmins)',
                    icon: Icons.admin_panel_settings,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(child: Icon(Icons.admin_panel_settings)),
                        title: Text('Total Admins: $totalAdmins'),
                        subtitle: const Text('Admin account records are stored in the admins table.'),
                      ),
                    ],
                  ),
                );
              }),
              statCard(title: 'Total Mohims', value: '$totalMohims', icon: Icons.campaign, onTap: showMohimsDetails),
              statCard(title: 'Total Joins', value: '$totalJoins', icon: Icons.how_to_reg, onTap: showJoinsDetails),
              statCard(title: 'Joined Users', value: '$uniqueJoinedUsers', icon: Icons.person_add_alt_1, onTap: showJoinsDetails),
              statCard(title: 'Participation', value: '$participationRate%', icon: Icons.insights, onTap: showJoinsDetails),
            ],
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 850 ? 3 : 1,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: MediaQuery.of(context).size.width > 850 ? 2.4 : 2.8,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              statCard(title: 'Upcoming Mohims', value: '$upcomingMohims', icon: Icons.schedule, onTap: () => showMohimsDetails(status: 'Upcoming')),
              statCard(title: 'Active Mohims', value: '$activeMohims', icon: Icons.play_circle, onTap: () => showMohimsDetails(status: 'Active')),
              statCard(title: 'Completed Mohims', value: '$completedMohims', icon: Icons.check_circle, onTap: () => showMohimsDetails(status: 'Completed')),
            ],
          ),
          const SizedBox(height: 12),
          statusSummary(),
          const SizedBox(height: 12),
          topMohimsCard(),
          const SizedBox(height: 12),
          monthCard(),
          const SizedBox(height: 12),
          districtCard('Users by District', districtUsers, Icons.location_city),
          const SizedBox(height: 12),
          districtCard('Mohim Joins by District', districtJoins, Icons.groups),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _AnalyticsListDialog extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _AnalyticsListDialog({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 10),
          Expanded(child: Text(title)),
        ],
      ),
      content: SizedBox(
        width: 650,
        height: MediaQuery.of(context).size.height * 0.65,
        child: ListView.separated(
          itemCount: children.length,
          separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (_, index) => children[index],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class _DistrictAnalyticsDialog extends StatelessWidget {
  final String district;
  final List<Map<String, dynamic>> users;
  final List<Map<String, dynamic>> mohims;
  final List<Map<String, dynamic>> joins;
  final String Function(String?) formatDate;

  const _DistrictAnalyticsDialog({
    required this.district,
    required this.users,
    required this.mohims,
    required this.joins,
    required this.formatDate,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('$district Analytics'),
      content: SizedBox(
        width: 700,
        height: MediaQuery.of(context).size.height * 0.68,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'Users (${users.length})'),
                  Tab(text: 'Mohims (${mohims.length})'),
                  Tab(text: 'Joins (${joins.length})'),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: TabBarView(
                  children: [
                    _districtUsers(),
                    _districtMohims(),
                    _districtJoins(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _districtUsers() {
    if (users.isEmpty) return const Center(child: Text('No users found'));
    return ListView.separated(
      itemCount: users.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, i) {
        final u = users[i];
        return ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: Text('${u['name'] ?? 'Unnamed User'}'),
          subtitle: Text('${u['mobile'] ?? '-'} • Village: ${u['village'] ?? '-'}'),
        );
      },
    );
  }

  Widget _districtMohims() {
    if (mohims.isEmpty) return const Center(child: Text('No Mohims found'));
    return ListView.separated(
      itemCount: mohims.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, i) {
        final m = mohims[i];
        return ListTile(
          leading: const CircleAvatar(child: Icon(Icons.campaign)),
          title: Text('${m['title'] ?? 'Untitled Mohim'}'),
          subtitle: Text('${formatDate('${m['mohim_date'] ?? ''}')} • ${m['location'] ?? '-'}'),
          trailing: Chip(label: Text('${m['status'] ?? '-'}')),
        );
      },
    );
  }

  Widget _districtJoins() {
    if (joins.isEmpty) return const Center(child: Text('No joins found'));
    return ListView.separated(
      itemCount: joins.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, i) {
        final j = joins[i];
        return ListTile(
          leading: const CircleAvatar(child: Icon(Icons.how_to_reg)),
          title: Text('User ID: ${j['user_id'] ?? '-'}'),
          subtitle: Text(
            'Mohim ID: ${j['mohim_id'] ?? '-'} • Joined: ${formatDate('${j['joined_at'] ?? ''}')}',
          ),
        );
      },
    );
  }
}

/* ============================================================
   ADMIN - USERS
   ============================================================ */

class AdminUsersPage extends StatefulWidget {
  const AdminUsersPage({super.key});

  @override
  State<AdminUsersPage> createState() => _AdminUsersPageState();
}

class _AdminUsersPageState extends State<AdminUsersPage> {
  List<Map<String, dynamic>> users = [];
  bool loading = true;
  String filter = 'All Districts';

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    setState(() => loading = true);
    try {
      final result = await supabase
          .from('users')
          .select()
          .order('created_at', ascending: false);

      final all = List<Map<String, dynamic>>.from(result);

      if (filter == 'All Districts') {
        users = all;
      } else {
        users = all
            .where((u) =>
                '${u['district'] ?? ''}'.toLowerCase() ==
                filter.toLowerCase())
            .toList();
      }
      if (mounted) setState(() {});
    } catch (e) {
      message('Users load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  List<String> get districts {
    final d = users
        .map((u) => '${u['district'] ?? ''}')
        .where((x) => x.isNotEmpty)
        .toSet()
        .toList();
    d.sort();
    return ['All Districts', ...d];
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  initialValue:
                      districts.contains(filter) ? filter : 'All Districts',
                  decoration: const InputDecoration(
                    labelText: 'Filter District',
                    border: OutlineInputBorder(),
                  ),
                  items: districts
                      .map((d) => DropdownMenuItem(
                            value: d,
                            child: Text(d),
                          ))
                      .toList(),
                  onChanged: (v) {
                    if (v == null) return;
                    setState(() => filter = v);
                    load();
                  },
                ),
              ),
              IconButton(
                onPressed: load,
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Users',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : users.isEmpty
                  ? const Center(child: Text('No Users Found'))
                  : ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: users.length,
                      itemBuilder: (_, i) {
                        final u = users[i];
                        return Card(
                          child: ExpansionTile(
                            leading: const CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                            title: Text('${u['name'] ?? '-'}'),
                            subtitle: Text('${u['email'] ?? '-'}'),
                            children: [
                              detail('Mobile', u['mobile']),
                              detail('Education', u['education']),
                              detail('Village', u['village']),
                              detail('District', u['district']),
                              detail('Role', u['role']),
                              detail('ID', u['id']),
                            ],
                          ),
                        );
                      },
                    ),
        ),
      ],
    );
  }

  Widget detail(String title, dynamic value) {
    return ListTile(
      dense: true,
      title: Text(title),
      subtitle: Text('${value ?? '-'}'),
    );
  }
}

/* ============================================================
   ADMIN LIST
   ============================================================ */

class AdminListPage extends StatefulWidget {
  const AdminListPage({super.key});

  @override
  State<AdminListPage> createState() => _AdminListPageState();
}

class _AdminListPageState extends State<AdminListPage> {
  List<Map<String, dynamic>> admins = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    setState(() => loading = true);
    try {
      final result = await supabase
          .from('admins')
          .select()
          .order('created_at', ascending: false);
      admins = List<Map<String, dynamic>>.from(result);
      if (mounted) setState(() {});
    } catch (e) {
      message('Admins load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  Future<void> addAdmin() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AddAdminPage()),
    );
    load();
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Admins',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FilledButton.icon(
                onPressed: addAdmin,
                icon: const Icon(Icons.add),
                label: const Text('Add Admin'),
              ),
              IconButton(
                onPressed: load,
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
        Expanded(
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : admins.isEmpty
                  ? const Center(child: Text('No Admins Found'))
                  : ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: admins.length,
                      itemBuilder: (_, i) {
                        final a = admins[i];
                        return Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              child: Icon(Icons.admin_panel_settings),
                            ),
                            title: Text('${a['name'] ?? '-'}'),
                            subtitle: Text(
                              '${a['email'] ?? '-'}\n'
                              'UID: ${a['uid'] ?? '-'}\n'
                              'District: ${a['district'] ?? '-'}\n'
                              'Role: ${a['role'] ?? '-'}',
                            ),
                            isThreeLine: true,
                          ),
                        );
                      },
                    ),
        ),
      ],
    );
  }
}

/* ============================================================
   ADD ADMIN
   ============================================================ */

class AddAdminPage extends StatefulWidget {
  const AddAdminPage({super.key});

  @override
  State<AddAdminPage> createState() => _AddAdminPageState();
}

class _AddAdminPageState extends State<AddAdminPage> {
  final uid = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final district = TextEditingController();
  String role = 'admin';
  bool loading = false;

  @override
  void dispose() {
    uid.dispose();
    name.dispose();
    email.dispose();
    district.dispose();
    super.dispose();
  }

  Future<void> save() async {
    if (uid.text.trim().isEmpty ||
        name.text.trim().isEmpty ||
        email.text.trim().isEmpty) {
      message('UID, Name आणि Email भरा.');
      return;
    }

    setState(() => loading = true);
    try {
      await supabase.from('admins').insert({
        'uid': uid.text.trim(),
        'name': name.text.trim(),
        'email': email.text.trim(),
        'district': district.text.trim().isEmpty
            ? null
            : district.text.trim(),
        'role': role,
      });

      if (!mounted) return;
      message('Admin successfully added.');
      Navigator.pop(context);
    } on PostgrestException catch (e) {
      message(e.message);
    } catch (e) {
      message('Admin save error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Admin')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(
                      Icons.admin_panel_settings,
                      size: 60,
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: uid,
                      decoration: const InputDecoration(
                        labelText: 'Auth User UID',
                        helperText:
                            'Authentication > Users मधील UID',
                        prefixIcon: Icon(Icons.key),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        labelText: 'Admin Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        labelText: 'Admin Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: district,
                      decoration: const InputDecoration(
                        labelText: 'District',
                        prefixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 13),
                    DropdownButtonFormField<String>(
                      initialValue: role,
                      decoration: const InputDecoration(
                        labelText: 'Role',
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'superadmin',
                          child: Text('Super Admin'),
                        ),
                      ],
                      onChanged: (v) {
                        if (v != null) setState(() => role = v);
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton(
                        onPressed: loading ? null : save,
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text('SAVE ADMIN'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* ============================================================
   ADMIN - MOHIM
   Actual table: public.mohims
   Columns: id, district, title, description, mohim_date,
            location, status
   ============================================================ */

/* ============================================================
   ADMIN PARTICIPANTS
   ============================================================ */

class AdminParticipantsPage extends StatefulWidget {
  const AdminParticipantsPage({super.key});

  @override
  State<AdminParticipantsPage> createState() => _AdminParticipantsPageState();
}

class _AdminParticipantsPageState extends State<AdminParticipantsPage> {
  bool loading = true;
  List<Map<String, dynamic>> rows = [];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);
    try {
      final participants = await supabase
          .from('mohim_participants')
          .select('id,mohim_id,user_id,joined_at')
          .order('joined_at', ascending: false);

      final p = List<Map<String, dynamic>>.from(participants);
      final userIds = p.map((x) => '${x['user_id']}').toSet().toList();
      final mohimIds = p.map((x) => '${x['mohim_id']}').toSet().toList();

      List<Map<String, dynamic>> users = [];
      List<Map<String, dynamic>> mohims = [];

      if (userIds.isNotEmpty) {
        final u = await supabase.from('users').select(
          'id,name,email,mobile,district,village,education',
        ).inFilter('id', userIds);
        users = List<Map<String, dynamic>>.from(u);
      }
      if (mohimIds.isNotEmpty) {
        final m = await supabase.from('mohims').select(
          'id,title,district,mohim_date,location,status',
        ).inFilter('id', mohimIds);
        mohims = List<Map<String, dynamic>>.from(m);
      }

      final userMap = {for (final u in users) '${u['id']}': u};
      final mohimMap = {for (final m in mohims) '${m['id']}': m};

      rows = p.map((x) {
        return {
          ...x,
          'user': userMap['${x['user_id']}'],
          'mohim': mohimMap['${x['mohim_id']}'],
        };
      }).toList();
    } catch (e) {
      message('Joined users load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: load,
      child: loading
          ? const Center(child: CircularProgressIndicator())
          : rows.isEmpty
              ? ListView(children: const [
                  SizedBox(height: 250),
                  Center(child: Text('No Joined Users Found')),
                ])
              : ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: rows.length,
                  itemBuilder: (_, i) {
                    final r = rows[i];
                    final u = (r['user'] as Map<String, dynamic>?) ?? {};
                    final m = (r['mohim'] as Map<String, dynamic>?) ?? {};
                    return Card(
                      child: ExpansionTile(
                        leading: const CircleAvatar(child: Icon(Icons.person)),
                        title: Text('${u['name'] ?? 'User'}'),
                        subtitle: Text('Mohim: ${m['title'] ?? '-'}'),
                        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        children: [
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Email: ${u['email'] ?? '-'}')),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Mobile: ${u['mobile'] ?? '-'}')),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('District: ${u['district'] ?? '-'}')),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Village: ${u['village'] ?? '-'}')),
                          const SizedBox(height: 10),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Mohim: ${m['title'] ?? '-'}',
                              style: const TextStyle(fontWeight: FontWeight.bold))),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Mohim District: ${m['district'] ?? '-'}')),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Mohim Date: ${formatDate(m['mohim_date'])}')),
                          const SizedBox(height: 5),
                          Align(alignment: Alignment.centerLeft,
                            child: Text('Joined At: ${r['joined_at'] ?? '-'}')),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}

class AdminCampaignsPage extends StatefulWidget {
  const AdminCampaignsPage({super.key});

  @override
  State<AdminCampaignsPage> createState() => _AdminCampaignsPageState();
}

class _AdminCampaignsPageState extends State<AdminCampaignsPage> {
  List<Map<String, dynamic>> mohims = [];
  Map<String, int> participantCounts = {};
  bool loading = true;

  String? filterDistrict;
  String? filterMonth;
  int? filterYear;

  @override
  void initState() {
    super.initState();
    load();
  }

  String formatDate(dynamic value) {
    final d = DateTime.tryParse('${value ?? ''}');
    if (d == null) return '-';
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  Future<void> load() async {
    if (mounted) setState(() => loading = true);

    try {
      final result = await supabase
          .from('mohims')
          .select(
            'id,district,title,description,mohim_date,location,status',
          )
          .order('mohim_date', ascending: true);

      var data = List<Map<String, dynamic>>.from(result);

      final participantRows = await supabase
          .from('mohim_participants')
          .select('mohim_id');
      final counts = <String, int>{};
      for (final row in participantRows) {
        final id = '${row['mohim_id']}';
        counts[id] = (counts[id] ?? 0) + 1;
      }

      if (filterDistrict != null) {
        data = data
            .where((m) => '${m['district']}' == filterDistrict)
            .toList();
      }

      if (filterMonth != null) {
        final number = monthNames.indexOf(filterMonth!) + 1;
        data = data.where((m) {
          final d = DateTime.tryParse('${m['mohim_date'] ?? ''}');
          return d != null && d.month == number;
        }).toList();
      }

      if (filterYear != null) {
        data = data.where((m) {
          final d = DateTime.tryParse('${m['mohim_date'] ?? ''}');
          return d != null && d.year == filterYear;
        }).toList();
      }

      for (final m in data) {
        m['participant_count'] = counts['${m['id']}'] ?? 0;
      }

      if (mounted) {
        setState(() {
          mohims = data;
          participantCounts = counts;
        });
      }
    } catch (e) {
      message('Mohim load error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  Future<void> add() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AddCampaignPage()),
    );
    load();
  }

  Future<void> editMohim(Map<String, dynamic> mohim) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EditCampaignPage(mohim: mohim),
      ),
    );
    load();
  }

  Future<void> updateStatus(String id, String status) async {
    try {
      await supabase
          .from('mohims')
          .update({'status': status})
          .eq('id', id);

      if (!mounted) return;
      message('Status updated to $status.');
      load();
    } on PostgrestException catch (e) {
      message('Supabase error: ${e.message}');
    } catch (e) {
      message('Status update error: $e');
    }
  }

  Future<void> showMohimParticipants(Map<String, dynamic> mohim) async {
    try {
      final participantRows = await supabase
          .from('mohim_participants')
          .select('id,user_id,joined_at')
          .eq('mohim_id', '${mohim['id']}')
          .order('joined_at', ascending: false);

      final rows = List<Map<String, dynamic>>.from(participantRows);
      final userIds = rows.map((r) => '${r['user_id']}').toSet().toList();
      List<Map<String, dynamic>> users = [];

      if (userIds.isNotEmpty) {
        final result = await supabase
            .from('users')
            .select('id,name,email,mobile,district,village,education')
            .inFilter('id', userIds);
        users = List<Map<String, dynamic>>.from(result);
      }

      final userMap = {for (final u in users) '${u['id']}': u};
      final joined = rows.map((r) {
        return {
          ...r,
          'user': userMap['${r['user_id']}'] ?? <String, dynamic>{},
        };
      }).toList();

      if (!mounted) return;

      await showDialog(
        context: context,
        builder: (dialogContext) {
          String search = '';

          return StatefulBuilder(
            builder: (context, setDialogState) {
              final filtered = joined.where((r) {
                final u = (r['user'] as Map<String, dynamic>?) ?? {};
                final q = search.trim().toLowerCase();
                if (q.isEmpty) return true;
                return '${u['name'] ?? ''}'.toLowerCase().contains(q) ||
                    '${u['mobile'] ?? ''}'.toLowerCase().contains(q) ||
                    '${u['village'] ?? ''}'.toLowerCase().contains(q) ||
                    '${u['email'] ?? ''}'.toLowerCase().contains(q);
              }).toList();

              return AlertDialog(
                title: Text(
                  '${mohim['title'] ?? 'Mohim'} • ${joined.length} Joined',
                ),
                content: SizedBox(
                  width: 650,
                  height: 500,
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          labelText: 'Search joined users',
                          prefixIcon: Icon(Icons.search),
                        ),
                        onChanged: (v) => setDialogState(() => search = v),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: filtered.isEmpty
                            ? const Center(child: Text('No Joined Users Found'))
                            : ListView.builder(
                                itemCount: filtered.length,
                                itemBuilder: (_, i) {
                                  final r = filtered[i];
                                  final u =
                                      (r['user'] as Map<String, dynamic>?) ?? {};
                                  return Card(
                                    child: ListTile(
                                      leading: const CircleAvatar(
                                        child: Icon(Icons.person),
                                      ),
                                      title: Text('${u['name'] ?? '-'}'),
                                      subtitle: Text(
                                        'Mobile: ${u['mobile'] ?? '-'}\n'
                                        'Village: ${u['village'] ?? '-'} • '
                                        'District: ${u['district'] ?? '-'}\n'
                                        'Joined: ${formatDate(r['joined_at'])}',
                                      ),
                                      isThreeLine: true,
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  FilledButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
      );
    } on PostgrestException catch (e) {
      message('Participants load error: ${e.message}');
    } catch (e) {
      message('Participants load error: $e');
    }
  }

  Future<void> deleteMohim(String id) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Mohim'),
        content: const Text(
          'ही Mohim delete करायची आहे का?\nJoined users चा data सुद्धा हटू शकतो.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (ok != true) return;

    try {
      await supabase.from('mohims').delete().eq('id', id);
      message('Mohim deleted.');
      load();
    } on PostgrestException catch (e) {
      message('Supabase error: ${e.message}');
    } catch (e) {
      message('Delete error: $e');
    }
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    final years = List.generate(10, (i) => currentYear - 2 + i);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              DropdownButtonFormField<String?>(
                value: filterDistrict,
                decoration: const InputDecoration(
                  labelText: 'District Filter',
                ),
                items: [
                  const DropdownMenuItem<String?>(
                    value: null,
                    child: Text('All Districts'),
                  ),
                  ...districts.map(
                    (d) => DropdownMenuItem<String?>(
                      value: d,
                      child: Text(d),
                    ),
                  ),
                ],
                onChanged: (v) {
                  setState(() => filterDistrict = v);
                  load();
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String?>(
                      value: filterMonth,
                      decoration: const InputDecoration(labelText: 'Month'),
                      items: [
                        const DropdownMenuItem<String?>(
                          value: null,
                          child: Text('All'),
                        ),
                        ...monthNames.map(
                          (m) => DropdownMenuItem<String?>(
                            value: m,
                            child: Text(m),
                          ),
                        ),
                      ],
                      onChanged: (v) {
                        setState(() => filterMonth = v);
                        load();
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField<int?>(
                      value: filterYear,
                      decoration: const InputDecoration(labelText: 'Year'),
                      items: [
                        const DropdownMenuItem<int?>(
                          value: null,
                          child: Text('All'),
                        ),
                        ...years.map(
                          (y) => DropdownMenuItem<int?>(
                            value: y,
                            child: Text('$y'),
                          ),
                        ),
                      ],
                      onChanged: (v) {
                        setState(() => filterYear = v);
                        load();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Mohim Management',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: load,
                icon: const Icon(Icons.refresh),
              ),
              FilledButton.icon(
                onPressed: add,
                icon: const Icon(Icons.add),
                label: const Text('Add Mohim'),
              ),
            ],
          ),
        ),
        Expanded(
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : mohims.isEmpty
                  ? const Center(child: Text('No Mohim Found'))
                  : RefreshIndicator(
                      onRefresh: load,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: mohims.length,
                        itemBuilder: (_, i) {
                          final m = mohims[i];
                          final currentStatus =
                              '${m['status'] ?? 'Upcoming'}';

                          return Card(
                            child: ExpansionTile(
                              leading: CircleAvatar(
                                child: Icon(
                                  currentStatus == 'Completed'
                                      ? Icons.check_circle
                                      : currentStatus == 'Active'
                                          ? Icons.play_circle
                                          : Icons.campaign,
                                ),
                              ),
                              title: Text(
                                '${m['title'] ?? '-'}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                '${m['district'] ?? '-'} • '
                                '${formatDate(m['mohim_date'])}',
                              ),
                              childrenPadding: const EdgeInsets.fromLTRB(
                                16,
                                0,
                                16,
                                16,
                              ),
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'District: ${m['district'] ?? '-'}',
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Date: ${formatDate(m['mohim_date'])}',
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Location: ${m['location'] ?? '-'}',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Card(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: ListTile(
                                    leading: const Icon(Icons.groups),
                                    title: Text(
                                      '${participantCounts['${m['id']}'] ?? 0} Joined Users',
                                      style: const TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    trailing: OutlinedButton.icon(
                                      onPressed: () => showMohimParticipants(m),
                                      icon: const Icon(Icons.visibility),
                                      label: const Text('View'),
                                    ),
                                  ),
                                ),
                                DropdownButtonFormField<String>(
                                  value: currentStatus,
                                  decoration: const InputDecoration(
                                    labelText: 'Status',
                                  ),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Upcoming',
                                      child: Text('Upcoming'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Active',
                                      child: Text('Active'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Completed',
                                      child: Text('Completed'),
                                    ),
                                  ],
                                  onChanged: (v) {
                                    if (v != null &&
                                        v != currentStatus) {
                                      updateStatus('${m['id']}', v);
                                    }
                                  },
                                ),
                                if ('${m['description'] ?? ''}'.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${m['description']}',
                                      ),
                                    ),
                                  ),
                                const SizedBox(height: 14),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OutlinedButton.icon(
                                      onPressed: () => editMohim(m),
                                      icon: const Icon(Icons.edit),
                                      label: const Text('Edit'),
                                    ),
                                    const SizedBox(width: 8),
                                    FilledButton.tonalIcon(
                                      onPressed: () =>
                                          deleteMohim('${m['id']}'),
                                      icon: const Icon(Icons.delete),
                                      label: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
        ),
      ],
    );
  }
}

/* ============================================================
   EDIT MOHIM
   ============================================================ */

class EditCampaignPage extends StatefulWidget {
  final Map<String, dynamic> mohim;

  const EditCampaignPage({
    super.key,
    required this.mohim,
  });

  @override
  State<EditCampaignPage> createState() => _EditCampaignPageState();
}

class _EditCampaignPageState extends State<EditCampaignPage> {
  late final TextEditingController title;
  late final TextEditingController description;
  late final TextEditingController location;

  late String district;
  late String status;
  late DateTime mohimDate;

  bool loading = false;

  @override
  void initState() {
    super.initState();

    title = TextEditingController(
      text: '${widget.mohim['title'] ?? ''}',
    );
    description = TextEditingController(
      text: '${widget.mohim['description'] ?? ''}',
    );
    location = TextEditingController(
      text: '${widget.mohim['location'] ?? ''}',
    );

    final savedDistrict = '${widget.mohim['district'] ?? ''}';
    district = districts.contains(savedDistrict)
        ? savedDistrict
        : districts.first;

    final savedStatus = '${widget.mohim['status'] ?? 'Upcoming'}';
    status = const ['Upcoming', 'Active', 'Completed'].contains(savedStatus)
        ? savedStatus
        : 'Upcoming';

    mohimDate = DateTime.tryParse(
          '${widget.mohim['mohim_date'] ?? ''}',
        ) ??
        DateTime.now();
  }

  @override
  void dispose() {
    title.dispose();
    description.dispose();
    location.dispose();
    super.dispose();
  }

  String dbDate(DateTime d) {
    return '${d.year}-'
        '${d.month.toString().padLeft(2, '0')}-'
        '${d.day.toString().padLeft(2, '0')}';
  }

  String displayDate(DateTime d) {
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/${d.year}';
  }

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: mohimDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() => mohimDate = picked);
    }
  }

  Future<void> update() async {
    if (title.text.trim().isEmpty) {
      message('Mohim Name भरा.');
      return;
    }

    if (location.text.trim().isEmpty) {
      message('Location भरा.');
      return;
    }

    setState(() => loading = true);

    try {
      await supabase.from('mohims').update({
        'district': district,
        'title': title.text.trim(),
        'description': description.text.trim(),
        'mohim_date': dbDate(mohimDate),
        'location': location.text.trim(),
        'status': status,
      }).eq('id', '${widget.mohim['id']}');

      if (!mounted) return;

      message('Mohim successfully updated.');
      Navigator.pop(context);
    } on PostgrestException catch (e) {
      message('Supabase error: ${e.message}');
    } catch (e) {
      message('Mohim update error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Mohim')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.edit_note, size: 60),
                    const SizedBox(height: 15),
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        labelText: 'Mohim Name',
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: description,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                      ),
                    ),
                    const SizedBox(height: 13),
                    DropdownButtonFormField<String>(
                      value: district,
                      decoration: const InputDecoration(
                        labelText: 'District',
                      ),
                      items: districts
                          .map(
                            (d) => DropdownMenuItem(
                              value: d,
                              child: Text(d),
                            ),
                          )
                          .toList(),
                      onChanged: (v) {
                        if (v != null) {
                          setState(() => district = v);
                        }
                      },
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: location,
                      decoration: const InputDecoration(
                        labelText: 'Location',
                      ),
                    ),
                    const SizedBox(height: 13),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.calendar_month),
                      title: const Text('Mohim Date'),
                      subtitle: Text(displayDate(mohimDate)),
                      trailing: const Icon(Icons.edit_calendar),
                      onTap: pickDate,
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: status,
                      decoration: const InputDecoration(
                        labelText: 'Status',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'Upcoming',
                          child: Text('Upcoming'),
                        ),
                        DropdownMenuItem(
                          value: 'Active',
                          child: Text('Active'),
                        ),
                        DropdownMenuItem(
                          value: 'Completed',
                          child: Text('Completed'),
                        ),
                      ],
                      onChanged: (v) {
                        if (v != null) setState(() => status = v);
                      },
                    ),
                    const SizedBox(height: 22),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: FilledButton(
                        onPressed: loading ? null : update,
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text('UPDATE MOHIM'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* ============================================================
   ADD MOHIM
   ============================================================ */

class AddCampaignPage extends StatefulWidget {
  const AddCampaignPage({super.key});

  @override
  State<AddCampaignPage> createState() => _AddCampaignPageState();
}

class _AddCampaignPageState extends State<AddCampaignPage> {
  final title = TextEditingController();
  final description = TextEditingController();
  final location = TextEditingController();

  String district = districts.first;
  String status = 'Upcoming';
  DateTime mohimDate = DateTime.now();
  bool loading = false;

  @override
  void dispose() {
    title.dispose();
    description.dispose();
    location.dispose();
    super.dispose();
  }

  String dbDate(DateTime d) {
    return '${d.year}-'
        '${d.month.toString().padLeft(2, '0')}-'
        '${d.day.toString().padLeft(2, '0')}';
  }

  String displayDate(DateTime d) {
    return '${d.day.toString().padLeft(2, '0')}/'
        '${d.month.toString().padLeft(2, '0')}/'
        '${d.year}';
  }

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: mohimDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() => mohimDate = picked);
    }
  }

  Future<void> save() async {
    if (title.text.trim().isEmpty) {
      message('Mohim Name भरा.');
      return;
    }

    if (location.text.trim().isEmpty) {
      message('Location भरा.');
      return;
    }

    setState(() => loading = true);

    try {
      // IMPORTANT: insert only columns that actually exist in public.mohims.
      await supabase.from('mohims').insert({
        'district': district,
        'title': title.text.trim(),
        'description': description.text.trim(),
        'mohim_date': dbDate(mohimDate),
        'location': location.text.trim(),
        'status': status,
      });

      if (!mounted) return;

      message('Mohim successfully added.');
      Navigator.pop(context);
    } on PostgrestException catch (e) {
      message('Supabase error: ${e.message}');
    } catch (e) {
      message('Mohim save error: $e');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  void message(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Mohim')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.campaign, size: 60),
                    const SizedBox(height: 15),
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        labelText: 'Mohim Name',
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: description,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                      ),
                    ),
                    const SizedBox(height: 13),
                    DropdownButtonFormField<String>(
                      value: district,
                      decoration: const InputDecoration(
                        labelText: 'District',
                      ),
                      items: districts
                          .map(
                            (d) => DropdownMenuItem(
                              value: d,
                              child: Text(d),
                            ),
                          )
                          .toList(),
                      onChanged: (v) {
                        if (v != null) {
                          setState(() => district = v);
                        }
                      },
                    ),
                    const SizedBox(height: 13),
                    TextField(
                      controller: location,
                      decoration: const InputDecoration(
                        labelText: 'Location',
                      ),
                    ),
                    const SizedBox(height: 13),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.calendar_month),
                      title: const Text('Mohim Date'),
                      subtitle: Text(displayDate(mohimDate)),
                      trailing: const Icon(Icons.edit_calendar),
                      onTap: pickDate,
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: status,
                      decoration: const InputDecoration(
                        labelText: 'Status',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'Upcoming',
                          child: Text('Upcoming'),
                        ),
                        DropdownMenuItem(
                          value: 'Active',
                          child: Text('Active'),
                        ),
                        DropdownMenuItem(
                          value: 'Completed',
                          child: Text('Completed'),
                        ),
                      ],
                      onChanged: (v) {
                        if (v != null) setState(() => status = v);
                      },
                    ),
                    const SizedBox(height: 22),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: FilledButton(
                        onPressed: loading ? null : save,
                        child: loading
                            ? const CircularProgressIndicator()
                            : const Text('SAVE MOHIM'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
