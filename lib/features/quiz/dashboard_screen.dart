import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../gamification/gamification_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProgression = ref.watch(userProgressionProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mojquiz'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => context.push('/profile'),
          ),
        ],
      ),
      body: userProgression.when(
        data: (user) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _buildUserStats(context, user),
            const SizedBox(height: 24),
            _buildActionCard(
              context,
              'Daily Quiz',
              'Challenge yourself with today\'s topics!',
              Icons.today,
              Colors.orange,
              () => context.push('/quiz/daily'),
            ),
            const SizedBox(height: 16),
            _buildActionCard(
              context,
              'Categories',
              'GK, Science, Tech, History and more',
              Icons.category,
              Colors.blue,
              () => {}, // Navigate to categories
            ),
            const SizedBox(height: 16),
            _buildActionCard(
              context,
              'Leaderboards',
              'See how you rank against others',
              Icons.leaderboard,
              Colors.green,
              () => {}, // Navigate to leaderboards
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Welcome back!')),
      ),
    );
  }

  Widget _buildUserStats(BuildContext context, dynamic user) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Level ${user?.level ?? 1}', style: Theme.of(context).textTheme.titleLarge),
                    Text('${user?.xp ?? 0} XP', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  child: const Icon(Icons.flash_on, color: Colors.purple),
                ),
              ],
            ),
            const SizedBox(height: 16),
            LinearProgressIndicator(value: 0.4), // Mock progress
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(BuildContext context, String title, String subtitle, IconData icon, Color color, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
