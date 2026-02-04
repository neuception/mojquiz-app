import * as functions from "firebase-functions/v1";
import * as admin from "firebase-admin";

admin.initializeApp();

export const generateDailyQuiz = functions.pubsub.schedule("0 0 * * *")
  .onRun(async () => {
    // Logic for AI quiz generation pipeline will go here
    functions.logger.info("Daily quiz generation triggered");
    return null;
  });

export const updateLeaderboard = functions.firestore
  .document("user_quiz_history/{historyId}")
  .onWrite(async () => {
    functions.logger.info("Leaderboard update triggered");
  });
