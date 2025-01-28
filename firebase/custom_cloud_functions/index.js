const admin = require("firebase-admin/app");
admin.initializeApp();

const subscription = require("./subscription.js");
exports.subscription = subscription.subscription;
